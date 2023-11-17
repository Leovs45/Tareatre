package datatypes;

import java.util.Date;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
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

    @XmlElement
    public String getNickname() {
        return nickname;
    }

    @XmlElement
    public String getNombre() {
        return nombre;
    }

    @XmlElement
    public String getApellido() {
        return apellido;
    }

    @XmlElement
    public String getCorreoElectronico() {
        return correoElectronico;
    }

    @XmlElement
    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

}
