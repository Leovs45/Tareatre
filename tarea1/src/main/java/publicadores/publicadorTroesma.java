package publicadores;
import java.sql.Date;
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
import interfaces.Fabrica;
import interfaces.IActividadDeportiva;
import interfaces.IClase;
import interfaces.IUsuario;

@WebService
@SOAPBinding(style = Style.RPC, parameterStyle = ParameterStyle.WRAPPED)
public class publicadorTroesma {

	private Fabrica fabrica;
	private IActividadDeportiva iAct;
	private IUsuario iUs;
	private IClase iCls;
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
	public boolean existeActividad(String nombreActividad){
		//quizas evaular que nombreActividad no sea null
		return iAct.existeActividad(nombreActividad);
	}

	@WebMethod
		public DtActividad getDtActividad(String nombreActividad){
			//quizas evaular que nombreActividad no sea null
			 return iAct.getDtActividad(nombreActividad);
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
		List<DtActividad> dtactividad = iAct.getRankingActividades();
		int i = 0;

		DtActividad[] ret = new DtActividad[dtactividad.size()];

		for(DtActividad a: dtactividad) {
			ret[i]=a;
			i++;
		}
		return ret;
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

	/*@WebMethod
	public DtRegistro[] getRegistros(String nickname){
		DtSocio sociardo = iUs.getDtSocio(nickname);
		List<DtRegistro> dtregistros = sociardo.getRegistros();
		DtRegistro[] ret = dtregistros.toArray(new DtRegistro[0]);

		//Foo[] array = list.toArray(new Foo[0]);
		return ret;
	}*/
}
