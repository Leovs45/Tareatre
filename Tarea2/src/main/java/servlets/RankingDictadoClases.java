package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.rpc.ServiceException;

import datatypes.DtClase;
import interfaces.Fabrica;
import interfaces.IClase;
import publicadores.PublicadorTroesma;
import publicadores.PublicadorTroesmaService;
import publicadores.PublicadorTroesmaServiceLocator;

/**
 * Servlet implementation class RankingDictadoClases
 */
@WebServlet("/RankingDictadoClases")
public class RankingDictadoClases extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public RankingDictadoClases() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    List<DtClase> claseOrdenadas = iAD.getRankingClases();
		try {

			if(claseOrdenadas != null) {
			// Guardar la lista de Dtclases procesada en un atributo de solicitud
	        request.setAttribute("reqClasesOrdenadas", claseOrdenadas);

	        // Reenviar la solicitud a la página JSP
		    request.getRequestDispatcher("/RankingClases.jsp").forward(request, response);
			}

		}catch(Exception e){
	        // Manejar la excepción aquí, por ejemplo, redirigiendo a una página de error
	        request.getRequestDispatcher("/Error.jsp").forward(request, response);
	    	}
	}
	
	public List<publicadores.DtClase> getRankingClases() throws ServiceException {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
	}

}
