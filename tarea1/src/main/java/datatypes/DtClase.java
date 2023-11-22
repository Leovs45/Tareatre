package datatypes;

import java.util.Calendar;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
public class DtClase {
	private String nombre;
	private DtActividad actividad;
	private Calendar fechaClase;
	private String horaInicio;
	private String url;
	private Calendar fechaRegistro;
    private DtRegistro[] registros;
    private int cantRegistros = 0;

    public DtClase() {}

	public DtClase(String nombre, DtActividad actividad, Calendar fechaClase, String horaInicio, String url, Calendar fechaRegistro, DtRegistro[] registros, int cantRegistros) {
		this.nombre = nombre;
		this.actividad = actividad;
		this.fechaClase = fechaClase;
		this.horaInicio = horaInicio;
		this.url = url;
		this.fechaRegistro = fechaRegistro;
		this.registros = registros;
		this.cantRegistros = cantRegistros;
	}


	public String getNombre() {
		return nombre;
	}


	public DtActividad getActividadDeportiva() {
		return actividad;
	}


	public String getUrl() {
		return url;
	}


	public Calendar getFechaClase() {
		return fechaClase;
	}


	public String getHoraInicio() {
		return horaInicio;
	}


	public Calendar getFechaRegistro() {
		return fechaRegistro;
	}


	public int getCantidadClases() {
        return cantRegistros;
    }
	
	public void restarUnRegistro() {
		cantRegistros = cantRegistros - 1;
	}
	
	public DtRegistro[] getRegistros() {
		return registros;
	}


}
