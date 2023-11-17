package datatypes;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import logica.Clase;
import logica.InstitucionDeportiva;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class DtProfesor extends DtUsuario {
    private InstitucionDeportiva institucion;
    private String descripcionGeneral;
    private String biografia;
    private String sitioWeb;
    private List<Clase> clases = new ArrayList<>();

    public DtProfesor() {}
        	
    public DtProfesor(String nickname, String nombre, String apellido, String correoElectronico, Date fechaNacimiento, InstitucionDeportiva institucion, String descripcionGeneral, String biografia, String sitioWeb, List<Clase> clases) {
        super(nickname, nombre, apellido, correoElectronico, fechaNacimiento);
        this.institucion = institucion;
        this.descripcionGeneral = descripcionGeneral;
        this.biografia = biografia;
        this.sitioWeb = sitioWeb;
        this.clases = clases;
    }
    
    @XmlElement
    public String getNombreInstitucion() {
        return institucion.getNombre();
    }

    @XmlElement
    public String getDescripcionGeneral() {
        return descripcionGeneral;
    }

    @XmlElement
    public String getBiografia() {
        return biografia;
    }
    
    @XmlElement
    public String getSitioWeb() {
        return sitioWeb;
    }
    
    @XmlElement
    public List<DtClase> getClases() {
    	List<DtClase> dtClases = new ArrayList<>();

    	for(Clase c: clases) {
    		dtClases.add(c.getDtClase());
    	}

        return dtClases;
    }

}
