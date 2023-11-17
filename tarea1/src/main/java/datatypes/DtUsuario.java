package datatypes;

import java.util.Date;

import javax.jws.WebService;
import javax.jws.WebMethod;

@WebService
public class DtUsuario {
    private String nickname;
    private String nombre;
    private String apellido;
    private String correoElectronico;
    private Date fechaNacimiento;

    public DtUsuario() {}

    public DtUsuario(String nickname, String nombre, String apellido, String correoElectronico, Date fechaNacimiento) {
        this.nickname = nickname;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correoElectronico = correoElectronico;
        this.fechaNacimiento = fechaNacimiento;
    }

    @WebMethod
    public String getNickname() {
        return nickname;
    }

    @WebMethod
    public String getNombre() {
        return nombre;
    }

    @WebMethod
    public String getApellido() {
        return apellido;
    }

    @WebMethod
    public String getCorreoElectronico() {
        return correoElectronico;
    }

    @WebMethod
    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

}
