package servlets;

import java.io.IOException;
import java.rmi.RemoteException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.rpc.ServiceException;
import excepciones.ClaseRepetidaException;
import publicadores.*;

/**
 * Servlet implementation class AltaDictadoClase
 */
@WebServlet("/AltaDictadoClase")
public class AltaDictadoClase extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AltaDictadoClase() {
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
		HttpSession sesion = request.getSession();
		String nombreInstitucion = request.getParameter("nombreInstitucion");
		try {
			publicadores.DtInstitucion institucion = obtenerDtInstitucion(nombreInstitucion);
			if (institucion == null)
		        request.getRequestDispatcher("/Error.jsp").forward(request, response);
			else {
				
					String nombreActividad = request.getParameter("nombreActividad");
					if(!existeActividadEnUnaInstitucion(nombreInstitucion, nombreActividad)) {
					    request.getRequestDispatcher("/Error.jsp").forward(request, response);
					}else {
						publicadores.DtActividad actividad = getDtActividad(nombreActividad);
						String nombreClase = request.getParameter("nombreClase");
						if(existeClaseDeActividad(nombreInstitucion, nombreActividad, nombreClase)) {
					        request.getRequestDispatcher("/Error.jsp").forward(request, response);
						}else {
							String horaInicio = request.getParameter("horaInicio");
							String url = request.getParameter("url");
							Date fechaRegistro = new Date();
							String nickname = (String) sesion.getAttribute("nickname");
							//DtProfesor profe =iUsuario.getDtProfesor(nickname);
							//String nombre = profe.getNombre();
							try {
								Calendar fecha = Calendar.getInstance();
								fecha.setTime(fechaRegistro);
								altaDictadoClase(nombreClase, actividad, fecha, nickname, horaInicio, url, fecha);
						        request.getRequestDispatcher("/AltaDictadoClases.jsp").forward(request, response);
							}catch(ClaseRepetidaException e) {
						        request.getRequestDispatcher("/Error.jsp").forward(request, response);
								}
							}
						}
				}
		}catch(Exception e) {
			e.printStackTrace();
		}

	}
		public publicadores.DtInstitucion obtenerDtInstitucion(String nombreInstitucion) throws Exception{
			PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
			PublicadorTroesma port;
			port = cpt.getpublicadorTroesmaPort();
			return port.getDtInstitucion(nombreInstitucion);
		}
		public boolean existeActividadEnUnaInstitucion(String nombreInstitucion, String nombreActividad)throws Exception{
			PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
			PublicadorTroesma port;
			port = cpt.getpublicadorTroesmaPort();
			return port.existeActividadEnUnaInstitucion(nombreInstitucion, nombreActividad);
		}
		public boolean existeClaseDeActividad(String nombreInstitucion, String nombreActividad, String nombreClase) throws Exception{
			PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
			PublicadorTroesma port;
			port = cpt.getpublicadorTroesmaPort();
			return port.existeClaseDeActividad(nombreInstitucion, nombreActividad, nombreClase);
		}
		public void altaDictadoClase(String nombreClase, publicadores.DtActividad actividadDeportiva, Calendar fechaClase, String nombreProfesor,
				String horaInicio, String urlClase, Calendar fechaRegistro)throws Exception
		{
			PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
			PublicadorTroesma port;
			port = cpt.getpublicadorTroesmaPort();
			port.altaDictadoClase(nombreClase, actividadDeportiva, fechaClase, nombreProfesor, horaInicio, urlClase, fechaRegistro);
		}
		public publicadores.DtActividad getDtActividad(String nombreActividad)throws Exception {
			PublicadorTroesmaService cpt = new PublicadorTroesmaServiceLocator();
			PublicadorTroesma port;
			port = cpt.getpublicadorTroesmaPort();
			return port.getDtActividad(nombreActividad);
		}


	}


