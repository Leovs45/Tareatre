package publicadores;
import java.util.Calendar;
import java.util.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.ParameterStyle;
import javax.jws.soap.SOAPBinding.Style;
import javax.xml.ws.Endpoint;

import datatypes.DtActividad;
import datatypes.DtProfesor;
import datatypes.DtSocio;
import excepciones.ClaseRepetidaException;
import datatypes.DtClase;
import datatypes.DtInstitucion;
import datatypes.DtRegistro;
import interfaces.Fabrica;
import interfaces.IActividadDeportiva;
import interfaces.IClase;
import interfaces.IInstitucionDeportiva;
import interfaces.IUsuario;

@WebService
@SOAPBinding(style = Style.RPC, parameterStyle = ParameterStyle.WRAPPED)
public class publicadorTroesma {

	private Fabrica fabrica;
	private IActividadDeportiva iAct;
	private IUsuario iUs;
	private IClase iCls;
	private IInstitucionDeportiva iIns;
	private Endpoint endpoint;


	public publicadorTroesma() {
		fabrica = Fabrica.getInstancia();
		iAct = fabrica.getIActividadDeportiva();
		iUs = fabrica.getIUsuario();
		iCls = fabrica.getIClase();
	}

	@WebMethod(exclude = true)//este no lo queremos accesible desde los web services
    public void publicar(){
         endpoint = Endpoint.publish("http://localhost:1981/publicado", this); //pregunta para el profe se publica cada servicio en un puerto distinto?
    }
	/* este podemos o no tenerlo/usuarlo
	@WebMethod(exclude = true)
    public Endpoint getEndpoint() {
            return endpoint;
    }*/

	//LOS MÉTODOS QUE VAMOS A PUBLICAR (yo solo publicaria los metodos de las interfaces que utilizo para el CU de la tarea 2 en el servlet,tambien se podrian publicar todos)

	@WebMethod
    public void paraObtenerDtClase(DtClase dtC){}
	
	@WebMethod
    public void paraObtenerDtInstitucion(DtInstitucion dtI) {}
	
	@WebMethod
    public void paraObtenerDtRegistro(DtRegistro dt){}
	
	@WebMethod
	public boolean existeActividad(String nombreActividad){
		//quizas evaular que nombreActividad no sea null
		return iAct.existeActividad(nombreActividad);
	}
	//Alta Dictado de Clase
	@WebMethod
	public DtInstitucion getDtInstitucion(String nombreInstitucion){
		 return iIns.getDtInstitucion(nombreInstitucion);
	}
	@WebMethod
	public boolean existeActividadEnUnaInstitucion(String nombreInstitucion, String nombreActividad) {
		return iIns.existeActividadEnUnaInstitucion(nombreInstitucion, nombreActividad);
	}
	@WebMethod
	public boolean existeClaseDeActividad(String nombreInstitucion, String nombreActividad, String nombreClase) {
		return iIns.existeClaseDeActividad(nombreInstitucion, nombreActividad, nombreClase);
	}
	@WebMethod
	public void altaDictadoClase(String nombreClase, DtActividad actividadDeportiva, Calendar fechaClase, String nombreProfesor,
			String horaInicio, String urlClase, Calendar fechaRegistro) throws ClaseRepetidaException {
			Date fechaCls = fechaClase.getTime();
			Date fechaReg = fechaRegistro.getTime();
			iCls.altaDictadoClase(nombreClase, actividadDeportiva, fechaCls, nombreProfesor, horaInicio, urlClase, fechaReg);
	}
	//Consulta Actividad Deportiva
	
	
	@WebMethod
	public DtActividad getDtActividad(String nombreActividad){
		//quizas evaular que nombreActividad no sea null
		 return iAct.getDtActividad(nombreActividad);
	}
	
	//Consulta Dictado Clase
	@WebMethod
	public boolean existeClase(String nombreClase) {
		return iCls.existeClase(nombreClase);
	}
	@WebMethod
	public DtClase getDtClase(String nombreClase) {
		return iCls.getDtClase(nombreClase);
	}
	@WebMethod
	public String[] obtenerSociosDeUnaClase(String nombreClase) {
		List<String> listSocios = iCls.obtenerSociosDeUnaClase(nombreClase);
		int size = listSocios.size();
		String[] arrSocios = new String[size];
		for (String s : listSocios) {
			int i = 0;
			arrSocios[i] = s;
		}
		return arrSocios;
	}
	
	
	
	
	
	@WebMethod
	public boolean esSocio(String nickname){
		//quizas evaular que no sea null
		return iUs.esSocio(nickname);
	}

	@WebMethod
	public DtSocio getDtSocio(String nickname){

		return iUs.getDtSocio(nickname);
	}

	@WebMethod
	public DtProfesor getDtProfesor(String nickname){
		return iUs.getDtProfesor(nickname);
	}

	@WebMethod
	public boolean existeUsuario(String nickname){

		return iUs.existeUsuario(nickname);
	}

	@WebMethod
	public boolean esContrasena(String nickname, String password){

		return iUs.esContrasena(nickname, password);
	}

	@WebMethod
	public DtActividad[] getRankingActividades(){
		List<DtActividad> listDtAct = iAct.getRankingActividades();
		int size = listDtAct.size();
		DtActividad[] arrDtAct = new DtActividad[size];
		for (DtActividad dtAct : listDtAct) {
			int i = 0;
			arrDtAct[i] = dtAct;
		}
		return arrDtAct;
	}
	
	@WebMethod
	public void modificarNombre(String nickname, String nuevoNombre) {
		iUs.modificarNombre(nickname, nuevoNombre);
	}
	
	@WebMethod
	public void modificarApellido(String nickname, String nuevoApellido) {
		iUs.modificarApellido(nickname, nuevoApellido);
	}
	
	@WebMethod
	public void modificarFechaNacimiento(String nickname, String nuevaFechaStr) throws ParseException {
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date nuevaFecha = (Date) sdf.parse(nuevaFechaStr);
		iUs.modificarFechaNacimiento(nickname, nuevaFecha);
	}
}
