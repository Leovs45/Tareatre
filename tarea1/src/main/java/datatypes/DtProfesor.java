package datatypes;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import logica.Clase;
import logica.InstitucionDeportiva;
import javax.jws.WebService;
import javax.jws.WebMethod;

@WebService
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

    @WebMethod
    public String getNombreInstitucion() {
        return institucion.getNombre();
    }

    @WebMethod
    public String getDescripcionGeneral() {
        return descripcionGeneral;
    }

    @WebMethod
    public String getBiografia() {
        return biografia;
    }

    @WebMethod
    public String getSitioWeb() {
        return sitioWeb;
    }

    @WebMethod
    public List<DtClase> getClases() {
    	List<DtClase> dtClases = new ArrayList<>();

    	for(Clase c: clases) {
    		dtClases.add(c.getDtClase());
    	}

        return dtClases;
    }

}
