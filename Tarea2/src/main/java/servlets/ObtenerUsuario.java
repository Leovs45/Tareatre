package servlets;

import java.io.IOException;
import java.rmi.RemoteException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.rpc.ServiceException;

import datatypes.DtProfesor;
import datatypes.DtSocio;
import interfaces.Fabrica;
import interfaces.IUsuario;
import publicadores.PublicadorTroesma;
import publicadores.PublicadorTroesmaService;
import publicadores.PublicadorTroesmaServiceLocator;

/**
 * Servlet implementation class ObtenerUsuario
 */
@WebServlet("/ObtenerUsuario")
public class ObtenerUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ObtenerUsuario() {
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


		String nicknameUsuario = (String) request.getSession().getAttribute("nickname");
		String tipoUsuario = (String) request.getSession().getAttribute("tipo");

		try {
			if(esSocio(nicknameUsuario)) {
				publicadores.DtSocio dtSocio = obtenerDtSocio(nicknameUsuario);
				request.setAttribute("usuarioObtenido", dtSocio);
			} else {
				publicadores.DtProfesor dtProfesor = obtenerDtProfesor(nicknameUsuario);
				System.out.println("Vamaaas");
				request.setAttribute("usuarioObtenido", dtProfesor);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		request.setAttribute("tipoUsuarioObtenido", tipoUsuario);
		request.getRequestDispatcher("/ModificarUsuario.jsp").forward(request, response);
	}
	
	public boolean esSocio(String nickname) throws ServiceException, RemoteException {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.esSocio(nickname);
	}
	
	public publicadores.DtSocio obtenerDtSocio(String nickname) throws Exception {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.getDtSocio(nickname);
	}

	public publicadores.DtProfesor obtenerDtProfesor(String nickname) throws Exception {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.getDtProfesor(nickname);
	}

}
