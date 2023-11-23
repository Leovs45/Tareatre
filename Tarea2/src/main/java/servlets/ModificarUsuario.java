package servlets;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import interfaces.Fabrica;
import interfaces.IUsuario;
import publicadores.PublicadorTroesma;
import publicadores.PublicadorTroesmaService;
import publicadores.PublicadorTroesmaServiceLocator;

/**
 * Servlet implementation class ModificarUsuario
 */
@WebServlet("/ModificarUsuario")
public class ModificarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarUsuario() {
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
		doGet(request, response);

		String campoEditar = request.getParameter("campoEditar");
		String nickname = (String) request.getSession().getAttribute("nickname");
		
		try {
			System.out.println(existeUsuario(nickname));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			if (campoEditar.equals("nombre")) {
				String nuevoValor = request.getParameter("input-nombre");
				modificarNombre(nickname, nuevoValor);
			} else if (campoEditar.equals("apellido")) {
				String nuevoValor = request.getParameter("input-apellido");
				modificarApellido(nickname, nuevoValor);
			} else if (campoEditar.equals("fecha")) {
				String nuevaFecha = request.getParameter("input-fecha");
				modificarFechaNacimiento(nickname, nuevaFecha);
			}
		} catch (Exception e){
			request.getRequestDispatcher("/RegistroError.jsp").forward(request, response);
		}

		request.getRequestDispatcher("/ModificarSuccess.jsp").forward(request, response);
	}
	
	public void modificarNombre(String nickname, String nuevoNombre) throws Exception {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		port.modificarNombre(nickname, nuevoNombre);
	}
	
	public void modificarApellido(String nickname, String nuevoApellido) throws Exception {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		port.modificarApellido(nickname, nuevoApellido);
	}
	
	public void modificarFechaNacimiento(String nickname, String nuevaFecha) throws Exception {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		port.modificarFechaNacimiento(nickname, nuevaFecha);
	}
	
	public boolean existeUsuario(String nickname) throws Exception {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.existeUsuario(nickname);
	}

}
