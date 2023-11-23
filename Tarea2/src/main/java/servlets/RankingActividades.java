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
import interfaces.Fabrica;
import interfaces.IActividadDeportiva;
import publicadores.PublicadorTroesma;
import publicadores.PublicadorTroesmaService;
import publicadores.PublicadorTroesmaServiceLocator;

/**
 * Servlet implementation class RankingActividades
 */
@WebServlet("/RankingActividades")
public class RankingActividades extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public RankingActividades() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    List<publicadores.DtActividad> actividadesOrdenadas = new ArrayList<publicadores.DtActividad>();
	    
		try {
			actividadesOrdenadas = getRankingActividades();
		} catch (RemoteException | ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {

			if(actividadesOrdenadas != null) {
			// Guardar la lista de Dtclases procesada en un atributo de solicitud
	        request.setAttribute("reqClasesOrdenadas", actividadesOrdenadas);

	        // Reenviar la solicitud a la página JSP
		    request.getRequestDispatcher("/RankingActividades.jsp").forward(request, response);
			}

		}catch(Exception e){
	        // Manejar la excepción aquí, por ejemplo, redirigiendo a una página de error
	        request.getRequestDispatcher("/Error.jsp").forward(request, response);
	    	}

	}
	
	public List<publicadores.DtActividad> getRankingActividades() throws ServiceException, RemoteException {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		publicadores.DtActividad[] arrActividades = port.getRankingActividades();
		
		if (arrActividades.length > 0) {
			List<publicadores.DtActividad> listAct = new ArrayList<>();
			for (int i = 0; i < arrActividades.length; i++) {
				listAct.add(arrActividades[i]);
			}
			
			return listAct;
		}
		
		return null;
	}

}
