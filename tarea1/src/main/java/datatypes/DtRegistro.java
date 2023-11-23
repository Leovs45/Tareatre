package datatypes;

import java.util.Calendar;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
public class DtRegistro {
    private Calendar fechaRegistro;
    private String nombreSocio;
	private String nombreClase;

    public DtRegistro() {}

    public DtRegistro(Calendar fechaRegistro, String socio, String clase) {
        this.fechaRegistro = fechaRegistro;
        this.nombreSocio = socio;
        this.nombreClase = clase;
    }

    public Calendar getFechaRegistro() {
        return fechaRegistro;
    }

    public String getNombreSocio() {
    	return nombreSocio;
    }

    public String getNombreClase() {
    	return nombreClase;
    }

}
