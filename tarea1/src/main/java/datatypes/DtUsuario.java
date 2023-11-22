package datatypes;

import java.util.Calendar;
import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
public class DtUsuario {
    private String nickname;
    private String nombre;
    private String apellido;
    private String correoElectronico;
    private Calendar fechaNacimiento;

    public DtUsuario() {}

    public DtUsuario(String nickname, String nombre, String apellido, String correoElectronico, Calendar fechaNacimiento) {
        this.nickname = nickname;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correoElectronico = correoElectronico;
        this.fechaNacimiento = fechaNacimiento;
    }


    public String getNickname() {
        return nickname;
    }


    public String getNombre() {
        return nombre;
    }


    public String getApellido() {
        return apellido;
    }


    public String getCorreoElectronico() {
        return correoElectronico;
    }


    public Calendar getFechaNacimiento() {
        return fechaNacimiento;
    }

}
