package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import excepciones.ExisteActividadDepException; // Importa la excepció
import publicadores.*;

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
		try {
		List<publicadores.DtActividad> listActividades = getRankingActividades();

		//llenar el combobox
				// Guardar la lista de DtActividades en reqNombreActividades
			    request.setAttribute("reqNombreActividad", listActividades);
		    	// Reenviar la solicitud a la página JSP
			    request.getRequestDispatcher("/ConsultaActividades.jsp").forward(request, response);

				}catch (Exception e) {
			        // Manejar la excepción aquí, por ejemplo, redirigiendo a una página de error
			        request.getRequestDispatcher("/Error.jsp").forward(request, response);
				}
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    // Obtener la Actividad deportiva DADA
	    String nombreActividad = request.getParameter("unaActividad");

	    try {
            // Intenta realizar la operación
	    //SI EXISTE
	    if(existeActividad(nombreActividad)) {
	    	publicadores.DtActividad dtActEncontrada = getDtActividad(nombreActividad);



	    	// Guardar contenido del DtActividad en un atributo de solicitud

	    	request.setAttribute("reqActividad",dtActEncontrada);

	    	//las clases asociadas a la actividad obtenida
	    	publicadores.DtClase[] arrClases = dtActEncontrada.getClases();
	    	List<publicadores.DtClase> unDtClases = new ArrayList<>();
	    	for (int i=0; i<arrClases.length; i++) {
	    		unDtClases.add(arrClases[i]);
	    	}

	    	// Guardar la lista de Dtclases procesada en un atributo de solicitud
	        request.setAttribute("reqClases", unDtClases);

	    	// Reenviar la solicitud a la página JSP
		    request.getRequestDispatcher("/ResultadoConsultaActividad.jsp").forward(request, response);
	    }else {

	    	throw new ExisteActividadDepException("La actividad no existe");
	    }

		}catch (ExisteActividadDepException e) {
	        // Manejar la excepción aquí, por ejemplo, redirigiendo a una página de error
	        request.getRequestDispatcher("/Error.jsp").forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<publicadores.DtActividad> getRankingActividades()throws Exception {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		publicadores.DtActividad[] listaAct = port.getRankingActividades();
		List<publicadores.DtActividad> listaActividades = new ArrayList<>();
		for(int i=0; i<listaAct.length; i++) {
			listaActividades.add(listaAct[i]);
		}
		return listaActividades;
	}
	public boolean existeActividad(String nombreActividad) throws Exception {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.existeActividad(nombreActividad);
	}
	
	public publicadores.DtActividad getDtActividad(String nombreActividad) throws Exception{
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		publicadores.DtActividad act = port.getDtActividad(nombreActividad);
		return act;
	}
	
}
