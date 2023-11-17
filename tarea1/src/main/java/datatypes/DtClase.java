package datatypes;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import logica.ActividadDeportiva;
import logica.Registro;
import javax.jws.WebService;
import javax.jws.WebMethod;

@WebService
public class DtClase {
	private String nombre;
	private ActividadDeportiva actividad;
	private Date fechaClase;
	private String horaInicio;
	private String url;
	private Date fechaRegistro;
    private List<Registro> registros = new ArrayList<>();

    public DtClase() {}

	public DtClase(String nombre, Date fechaClase, String horaInicio,String url, Date fechaRegistro) {
		this.nombre = nombre;
		this.fechaClase = fechaClase;
		this.horaInicio = horaInicio;
		this.url = url;
		this.fechaRegistro = fechaRegistro;
	}

	public DtClase(List<Registro> registros,String nombre, Date fechaClase, String url) {
    	this.nombre = nombre;
    	this.fechaClase = fechaClase;
    	this.url = url;
    	this.registros = registros;
    }

	public DtClase(String nombre, ActividadDeportiva actividad, Date fechaClase, String horaInicio,String url, Date fechaRegistro) {
		this.nombre = nombre;
		this.actividad = actividad;
		this.fechaClase = fechaClase;
		this.horaInicio = horaInicio;
		this.url = url;
		this.fechaRegistro = fechaRegistro;
	}

	@WebMethod
	public String getNombre() {
		return nombre;
	}

	@WebMethod
	public ActividadDeportiva getActividadDeportiva() {
		return actividad;
	}

	@WebMethod
	public String getUrl() {
		return url;
	}

	@WebMethod
	public Date getFechaClase() {
		return fechaClase;
	}

	@WebMethod
	public String getHoraInicio() {
		return horaInicio;
	}

	@WebMethod
	public Date getFechaRegistro() {
		return fechaRegistro;
	}

	@WebMethod
	public int getCantidadClases() {
        return (registros != null) ? registros.size() : 0;
    }


}
