package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import datatypes.*;

import excepciones.UsuarioNoEsProfesorException;
import publicadores.PublicadorTroesma;
import publicadores.PublicadorTroesmaService;
import publicadores.PublicadorTroesmaServiceLocator;

/**
 * Servlet implementation class ConsultaUsuario
 */
@WebServlet("/ConsultaUsuario")
public class ConsultaUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultaUsuario() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);

	    HttpSession session = request.getSession();
	    String nickname = (String) session.getAttribute("nickname");

	    // Verifica si el atributo existe y no es nulo antes de usarlo
	    try {
	    	if (nickname != null) {
		        // Ahora puedes usar la variable "nickname" en tu servlet
		    	if (esSocio(nickname)) {
			    	publicadores.DtSocio dtSoc = obtenerDtSocio(nickname);
			    	List<publicadores.DtClase> listaClases = new ArrayList<>();
			    	List<publicadores.DtRegistro> listaRegistros = obtenerListaDtRegistros(dtSoc);
			    	for (publicadores.DtRegistro registro : listaRegistros) {
			    	    listaClases.add(registro.getClase());
			    	    System.out.println(registro.getClase().getNombre());
			    	}

			    	request.setAttribute("usuario", dtSoc);
			    	request.setAttribute("listaClasesSoc", listaClases);
			    	request.getRequestDispatcher("/ConsultaUsuarios.jsp").forward(request, response);
			    } else {
			    	publicadores.DtProfesor dtProf = obtenerDtProfesor(nickname);
			    	String intitusion = dtProf.getNombreInstitucion();
			    	List<publicadores.DtClase> clasercias = obtenerListaClasesDeProfe(dtProf);
			    	for (publicadores.DtClase clase: clasercias) {
			    		System.out.println(clase.getNombre());
			    	}

			    	request.setAttribute("usuario", dtProf);
			    	request.setAttribute("listaClasesProf", clasercias);
			    	request.setAttribute("nombreIntitusion", intitusion);
			    	request.getRequestDispatcher("/ConsultaUsuarios.jsp").forward(request, response);
			    }
		    } else {
		    	throw new UsuarioNoEsProfesorException("La cagaste wawachine");
		    }
    	} catch (UsuarioNoEsProfesorException unp) {
	        // Manejar la excepción aquí, por ejemplo, redirigiendo a una página de error
	        request.getRequestDispatcher("/Error.jsp").forward(request, response);
    	} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	// Operaciones Consumidas
	public boolean esSocio(String nick) throws Exception {
		System.out.println("Entro a es socio");
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.esSocio(nick);
	}

	public publicadores.DtSocio obtenerDtSocio(String nickname) throws Exception {
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.getDtSocio(nickname);
	}

	public publicadores.DtProfesor obtenerDtProfesor(String nickname) throws Exception {
		System.out.println("Entro a obtener dt profe " + nickname);
		PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
		PublicadorTroesma port;
		port = cpt.getpublicadorTroesmaPort();
		return port.getDtProfesor(nickname);
	}

	public List<publicadores.DtRegistro> obtenerListaDtRegistros(publicadores.DtSocio socio) {
		//List<DtRegistro> listaRegistros = (List<DtRegistro>) dtSoc.getRegistros();
		publicadores.DtRegistro[] registros = socio.getRegistros();
		ArrayList<publicadores.DtRegistro> listRegistros = new ArrayList<>();
		for (int i = 0; i < registros.length; i++) {
			listRegistros.add(registros[i]);
		}
		return listRegistros;
	}

	public List<publicadores.DtClase> obtenerListaClasesDeProfe(publicadores.DtProfesor profesor){
		//List<publicadores.DtClase> clasercias = dtProf.getClases();
		publicadores.DtClase[] clases = profesor.getClases();
		List<publicadores.DtClase> listClases = new ArrayList<>();
		for (int i = 0; i < clases.length; i++) {
			listClases.add(clases[i]);
		}
		return listClases;
	}
}
