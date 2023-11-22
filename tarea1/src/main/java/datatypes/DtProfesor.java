package datatypes;

import java.util.Calendar;
import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
public class DtProfesor extends DtUsuario {
    private DtInstitucion institucion;
    private String descripcionGeneral;
    private String biografia;
    private String sitioWeb;
    private DtClase[] clases;
    private int cantClases = 0;

    public DtProfesor() {}

    public DtProfesor(String nickname, String nombre, String apellido, String correoElectronico, Calendar fechaNacimiento, DtInstitucion institucion, String descripcionGeneral, String biografia, String sitioWeb, DtClase[] clases, int cantClases) {
        super(nickname, nombre, apellido, correoElectronico, fechaNacimiento);
        this.institucion = institucion;
        this.descripcionGeneral = descripcionGeneral;
        this.biografia = biografia;
        this.sitioWeb = sitioWeb;
        this.clases = clases;
        this.cantClases = cantClases;
    }


    public String getNombreInstitucion() {
        return institucion.getNombre();
    }


    public String getDescripcionGeneral() {
        return descripcionGeneral;
    }


    public String getBiografia() {
        return biografia;
    }


    public String getSitioWeb() {
        return sitioWeb;
    }
    
    public int getCantClases() {
    	return cantClases;
    }
    
    public void restarUnaClase() {
    	cantClases = cantClases - 1;
    }


    public DtClase[] getClases() {
    	return clases;
    }

}
