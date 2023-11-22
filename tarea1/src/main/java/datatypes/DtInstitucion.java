package datatypes;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
public class DtInstitucion {
    private String nombre;
    private String descripcion;
    private String url;
    private DtProfesor[] profesores;
    private int cantProfesores = 0;
    private DtActividad[] actividades;
    private int cantActividades = 0;

    public DtInstitucion() {}

    public DtInstitucion(String nombre, String descripcion, String url, DtProfesor[] profesores, int cantProfesores, DtActividad[] actividades, int cantActividades) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.url = url;
        this.profesores = profesores;
        this.cantProfesores = cantProfesores;
        this.actividades = actividades;
        this.cantActividades = cantActividades;
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
    
    public int getCantProfesores() {
    	return cantProfesores;
    }
    
    public void restarUnProfesor() {
    	cantProfesores = cantProfesores - 1;
    }

    public int getCantActividades() {
    	return cantActividades;
    }
    
    public void restarUnaActividad() {
    	cantActividades = cantActividades - 1;
    }

    public String getUrl() {
        return url;
    }


    public void setUrl(String url) {
        this.url = url;
    }


    public DtProfesor[] getProfesores() {
        return profesores;
    }


    public DtActividad[] getActividades() {
    	return actividades;
    }


    public DtActividad buscarDtActividad (String nombreActividad) {
		if (cantActividades == 0) {
			return null;
		} else {
			for (int i = 0; i < cantActividades; i++) {
				if (actividades[i].getNombre().equals(nombreActividad)) {
					return actividades[i];
				}
			}
		}
		return null;
	}

}

