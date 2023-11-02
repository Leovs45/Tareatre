package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Podemos incluso llamar a nuestra lógica de negocio,
 * obtener los dataypes y generar el html correspondiente
 */
@WebServlet("/ServletReferencia")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Se recibe implícitamente en request los parametros
		String nombre=request.getParameter("nombre");
		String cedula=request.getParameter("cedula");
		System.out.println("Se recibió en la url " + nombre + " y " + cedula);
		if (nombre.equals("Yonathan")) {
			//Se indica el tipo de respuesta que se está enviando
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter salida = response.getWriter();
			salida.println("<!DOCTYPE html>");
			salida.println("<html>");
			salida.println("<head>");
			salida.println("<title> OTRO HTML </title>");
			salida.println("</head>");
			salida.println("<body>");
			salida.println("<h2>Usted ingresó "+nombre+" y era Yonathan lo esperado</h2>");
			salida.println("</body>");
			salida.println("</html>");
		}else {
			response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
			//HABLAR SOBRE EL sendRedirect()
			//1. Otro html
			//2. Otro servlet
			//3. Otra página externa a la app
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombre=request.getParameter("nomSocio");
		String cedula=request.getParameter("cedSocio");
		System.out.println("UN POST CON " + nombre + " y " + cedula);
		if (nombre.equals("Yonathan")) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter salida = response.getWriter();
			salida.println("<!DOCTYPE html>");
			salida.println("<html>");
			salida.println("<head>");
			salida.println("<title> OTRO HTML </title>");
			salida.println("</head>");
			salida.println("<body>");
			salida.println("<h2>POST VERSION Usted ingresó "+nombre+" y era Yonathan lo esperado</h2>");
			salida.println("</body>");
			salida.println("</html>");
		}else {
			response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
		}
	}
	/*
	 * Se pueden generar distintos tipos de respuesta
	 * Para especificar los tipos de respuestas se utilizan los
	 * tipos MIME(Multipurpose Internet Mail Extensions)
	 * Para especificarlos en la cabecera:
	 * response.setContentType("image/png")
	 * existen varios, text/css, video/mpeg, application/pdf,
	 * application/vnd.ms-excel, image/gif, image/jpeg
	 * */

}
