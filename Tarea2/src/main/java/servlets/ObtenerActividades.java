package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datatypes.DtActividad;
import datatypes.DtInstitucion;
import interfaces.Fabrica;
import interfaces.IInstitucionDeportiva;
import publicadores.PublicadorTroesma;
import publicadores.PublicadorTroesmaService;
import publicadores.PublicadorTroesmaServiceLocator;

/**
 * Servlet implementation class ObtenerActividades
 */
@WebServlet("/ObtenerActividades")
public class ObtenerActividades extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ObtenerActividades() {
        super();

    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		Fabrica f = Fabrica.getInstancia();
		IInstitucionDeportiva iInstitucion = f.getIInstitucionDeportiva();

		String nombreInstitucion = request.getParameter("institucion");

		publicadores.DtInstitucion dtInstitucion = getDtInstitucion(nombreInstitucion);
		DtActividad[] arrAct = dtInstitucion.getActividades();
		List<DtActividad> dtActividades = 

		request.setAttribute("institucionObtenida", dtInstitucion);
		request.setAttribute("listaActividades", dtActividades);

		request.getRequestDispatcher("/ListadoActividades.jsp").forward(request, response);

	}

	public publicadores.DtInstitucion getDtInstitucion(String nombreInstitucion)throws Exception{
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.getDtInstitucion(nombreInstitucion);
	}
	
}
