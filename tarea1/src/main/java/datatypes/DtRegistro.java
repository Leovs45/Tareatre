package datatypes;

import java.util.Date;
import javax.jws.WebService;
import javax.jws.WebMethod;

@WebService
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
    @WebMethod
    public Date getFechaRegistro() {
        return fechaRegistro;
    }
    @WebMethod
    public DtSocio getSocio() {
        return socio;
    }
    @WebMethod
    public DtClase getClase() {
        return clase;
    }
}
