package datatypes;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import logica.Clase;
import logica.InstitucionDeportiva;

import javax.jws.WebMethod;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;

@XmlAccessorType(XmlAccessType.FIELD)
public class DtProfesor extends DtUsuario {
    private InstitucionDeportiva institucion;
    private String descripcionGeneral;
    private String biografia;
    private String sitioWeb;
    private List<DtClase> clases = new ArrayList<>();

    public DtProfesor() {}

    public DtProfesor(String nickname, String nombre, String apellido, String correoElectronico, Date fechaNacimiento, InstitucionDeportiva institucion, String descripcionGeneral, String biografia, String sitioWeb, List<DtClase> clases) {
        super(nickname, nombre, apellido, correoElectronico, fechaNacimiento);
        this.institucion = institucion;
        this.descripcionGeneral = descripcionGeneral;
        this.biografia = biografia;
        this.sitioWeb = sitioWeb;
        this.clases = clases;
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


    public List<DtClase> getDtClases() {
    	return clases;
    }

}
