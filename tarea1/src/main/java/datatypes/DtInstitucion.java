package datatypes;

import java.util.ArrayList;
import java.util.List;

import logica.ActividadDeportiva;
import logica.Profesor;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
public class DtInstitucion {
    private String nombre;
    private String descripcion;
    private String url;
    private List<DtProfesor> profesores = new ArrayList<>();
    private List<ActividadDeportiva> actividades = new ArrayList<>();

    public DtInstitucion() {}

    public DtInstitucion(String nombre, String descripcion, String url, List<DtProfesor> profesores, List<ActividadDeportiva> actividades) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.url = url;
        this.profesores = profesores;
        this.actividades = actividades;
    }


    public String getNombre() {
        return nombre;
    }


    public void setNombre(String nombre) {
        this.nombre = nombre;
    }


    public String getDescripcion() {
        return descripcion;
    }


    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }


    public String getUrl() {
        return url;
    }


    public void setUrl(String url) {
        this.url = url;
    }


    public List<DtProfesor> getProfesores() {
        return profesores;
    }

    public List<ActividadDeportiva> getActividades(){
    	return actividades;
    }
    public List<DtActividad> getDtActividades() {
        List<DtActividad> dtAct = new ArrayList<>();
        for (ActividadDeportiva a : actividades) {
        	dtAct.add(a.getDtActividad());
        }
        return dtAct;
    }


    public DtActividad buscarDtActividad (String nombreActividad) {
		DtActividad dtAct = null;
		if (actividades.size() == 0) {
			dtAct = null;
		} else {
			for(ActividadDeportiva a: actividades) {
				if (a.getNombre().equals(nombreActividad)) {
					dtAct= a.getDtActividad();
					return dtAct;
				}
			}
		}
		return dtAct;
	}

}

