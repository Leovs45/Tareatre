package servlets;

import java.io.IOException;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.rpc.ServiceException;

import datatypes.DtActividad;
import datatypes.DtClase;
import excepciones.ExisteActividadDepException; // Importa la excepció
import interfaces.Fabrica;
import interfaces.IActividadDeportiva;
import publicadores.PublicadorTroesma;
import publicadores.PublicadorTroesmaService;
import publicadores.PublicadorTroesmaServiceLocator;

/**
 * Servlet implementation class ConsultaActividadDeportiva
 */
@WebServlet("/ConsultaActividadDeportiva")
public class ConsultaActividadDeportiva extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//IInstitucionDeportiva iID = fabrica.getIInstitucionDeportiva();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultaActividadDeportiva() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<publicadores.DtActividad> listActividades = new ArrayList<>();
		try {
			listActividades = obtenerListaActividades();
		} catch (RemoteException | ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {//llenar el combobox
				// Guardar la lista de DtActividades en reqNombreActividades
			    request.setAttribute("reqNombreActividad", listActividades);
		    	// Reenviar la solicitud a la página JSP
			    request.getRequestDispatcher("/ConsultaActividades.jsp").forward(request, response);

				}catch (Exception e) {
			        // Manejar la excepción aquí, por ejemplo, redirigiendo a una página de error
			        request.getRequestDispatcher("/Error.jsp").forward(request, response);
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    // Obtener la Actividad deportiva DADA
	    String nombreActividad = request.getParameter("unaActividad");

	    try {
		    if(existeActividad(nombreActividad)) {
		    	publicadores.DtActividad dtActEncontrada = obtenerDtActividad(nombreActividad);
	
		    	request.setAttribute("reqActividad",dtActEncontrada);
	
		    	List<publicadores.DtClase> unDtClases = obtenerClasesDeActividad(dtActEncontrada);
		        request.setAttribute("reqClases", unDtClases);
			    request.getRequestDispatcher("/ResultadoConsultaActividad.jsp").forward(request, response);
		    }else {
	
		    	throw new ExisteActividadDepException("La actividad no existe");
		    }

	    }catch (ExisteActividadDepException e) {
	        // Manejar la excepción aquí, por ejemplo, redirigiendo a una página de error
	        request.getRequestDispatcher("/Error.jsp").forward(request, response);
	    	} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<publicadores.DtActividad> obtenerListaActividades() throws RemoteException, ServiceException {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		publicadores.DtActividad[] ranking = port.getRankingActividades();
		if (ranking != null) {
			List<publicadores.DtActividad> listActividades = new ArrayList<>();
					
			for (int i = 0; i < ranking.length; i++) {
				listActividades.add(ranking[i]);
			}
			
			return listActividades;
		} else {
			return null;
		}
	}
	
	public boolean existeActividad(String nombreActividad) throws ServiceException, RemoteException {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.existeActividad(nombreActividad);
	}
	
	public publicadores.DtActividad obtenerDtActividad(String nombreActividad) throws ServiceException, RemoteException {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.getDtActividad(nombreActividad);
	}
	
	public List<publicadores.DtClase> obtenerClasesDeActividad(publicadores.DtActividad dtAct) throws ServiceException, RemoteException {
		publicadores.DtClase[] arrClases = dtAct.getClases();
		List<publicadores.DtClase> listClases = new ArrayList<>();
		
		for (int i = 0; i < dtAct.getCantClases(); i++) {
			listClases.add(arrClases[i]);
			System.out.println(listClases.get(i).getNombre());
		}
		
		return listClases;
	}
}
