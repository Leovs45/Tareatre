package datatypes;

import java.util.Date;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class DtRegistro {
    private Date fechaRegistro;
    private DtSocio socio;
    private DtClase clase;
    
    public DtRegistro() {}
    
    public DtRegistro(Date fechaRegistro, DtSocio socio, DtClase clase) {
        this.fechaRegistro = fechaRegistro;
        this.socio = socio;
        this.clase = clase;
    }
    @XmlElement
    public Date getFechaRegistro() {
        return fechaRegistro;
    }
    @XmlElement
    public DtSocio getSocio() {
        return socio;
    }
    @XmlElement
    public DtClase getClase() {
        return clase;
    }
}
