package datatypes;

import java.util.Calendar;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

import interfaces.Fabrica;
import interfaces.IInstitucionDeportiva;

@XmlAccessorType(XmlAccessType.FIELD)
public class DtActividad{
    private String nombreInstitucion;
    private String nombre;
    private String descripcion;
    private int duracionMinutos;
    private double costo;
    private Calendar fechaRegistro;
    private DtClase[] clases;
    private int cantClases = 0;

    public DtActividad() {}

    public DtActividad(String institucion, String nombre, String descripcion, int duracionMinutos, double costo, Calendar fechaRegistro, DtClase[] clases, int cantClases){
    	this.nombreInstitucion = nombreInstitucion;
    	this.nombre = nombre;
    	this.descripcion = descripcion;
    	this.duracionMinutos = duracionMinutos;
    	this.costo = costo;
    	this.fechaRegistro = fechaRegistro;
    	this.clases = clases;
    	this.cantClases = cantClases;
    }


	public String getNombreInstitucion() {
		return nombreInstitucion;
	}
	
	public DtInstitucion getDtInstitucion() {
		Fabrica f = Fabrica.getInstancia();
		IInstitucionDeportiva iInstitucion = f.getIInstitucionDeportiva();
		return iInstitucion.getDtInstitucion(nombreInstitucion);
	}


	public String getNombre() {
		return nombre;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public int getDuracionMinutos() {
		return duracionMinutos;
	}


	public double getCosto() {
		return costo;
	}


	public Calendar getFechaRegistro() {
		return fechaRegistro;
	}


	public int getCantidadDeClases() {
		return cantClases;
	}


	public DtClase[] getClases() {
		return clases;
	}
	
	public void restarUnaClase() {
		cantClases = cantClases - 1;
	}


	public DtClase buscarDtClase(String nombre) {
		if (cantClases == 0) {
			return null;
		} else {
			for(int i = 0; i < cantClases; i++) {
				if (clases[i].getNombre().equals(nombre)) {
					return clases[i];
				}
			}
		}
		return null;
	}


	public DtClase obtenerDtClase(String nombreClase) {
		DtClase clase = buscarDtClase(nombreClase);
		return clase;
	}
}
