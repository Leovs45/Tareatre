package datatypes;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlElement;

import logica.ActividadDeportiva;
import logica.Profesor;

@XmlRootElement
public class DtInstitucion {
    private String nombre;
    private String descripcion;
    private String url;
    private List<Profesor> profesores = new ArrayList<>();
    private List<ActividadDeportiva> actividades = new ArrayList<>();
    
    public DtInstitucion() {}

    public DtInstitucion(String nombre, String descripcion, String url, List<Profesor> profesores, List<ActividadDeportiva> actividades) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.url = url;
        this.profesores = profesores;
        this.actividades = actividades;
    }
    
    @XmlElement
    public String getNombre() {
        return nombre;
    }

    @XmlElement
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @XmlElement
    public String getDescripcion() {
        return descripcion;
    }

    @XmlElement
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @XmlElement
    public String getUrl() {
        return url;
    }

    @XmlElement
    public void setUrl(String url) {
        this.url = url;
    }

    @XmlElement
    public List<DtProfesor> getProfesores() {
        List<DtProfesor> dtProfesores = new ArrayList<>();

        for(Profesor profesor: profesores) {
        	dtProfesores.add(profesor.getDtProfesor());
        }

        return dtProfesores;
    }

    @XmlElement
    public List<DtActividad> getActividades() {
    	List<DtActividad> dtActividades = new ArrayList<>();

        for(ActividadDeportiva actividad: actividades) {
        	dtActividades.add(actividad.getDtActividad());
        }

        return dtActividades;
    }

    @XmlElement
    public DtActividad buscarDtActividad (String nombreActividad) {
		DtActividad dtAct = null;
		if (actividades.size() == 0) {
			dtAct = null;
		} else {
			for(ActividadDeportiva a: actividades) {
				if (a.getNombre().equals(nombreActividad)) {
					dtAct = new DtActividad(a.getInstitucion(),a.getNombre(),a.getDescripcion(),a.getDuracionMinutos(),a.getCosto(),a.getFechaRegistro(),a.getArrayClase());
				}
			}
		}
		return dtAct;
	}

}

