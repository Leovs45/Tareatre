package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import publicadores.*;

/**
 * Servlet implementation class ConsultaDictadoClase
 */
@WebServlet("/ConsultaDictadoClase")
public class ConsultaDictadoClase extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultaDictadoClase() {
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

	    String nomCla = request.getParameter("clase");

	    try {

	    	if(existeClase(nomCla)) {
	    	publicadores.DtClase clase = getDtClase(nomCla);
	    	List<String> listaSocios = obtenerSociosDeUnaClase(nomCla);
	    	request.setAttribute("setCla",clase);
	    	request.setAttribute("listaSocios",listaSocios);
		    request.getRequestDispatcher("/ResultConsultaDictadoClase.jsp").forward(request, response);
	    }else{

	    	throw new Exception("Error: No existe clase");
	    }

	}catch (Exception e) {
    	request.getRequestDispatcher("/Error.jsp").forward(request, response);

    	}
	}
	
	public boolean existeClase(String nomCla)throws Exception {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.existeClase(nomCla);
	}
	public publicadores.DtClase getDtClase(String nomCla)throws Exception {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.getDtClase(nomCla);
	}
	public List<String> obtenerSociosDeUnaClase(String nomCla) throws Exception{
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		String[] arrSocios = port.obtenerSociosDeUnaClase(nomCla);
		List<String> listSocios = new ArrayList<>();
		for (int i=0; i<arrSocios.length; i++) {
			listSocios.add(arrSocios[i]);
		}
		return listSocios;
	}
	
}