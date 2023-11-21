package datatypes;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import logica.Registro;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;

@XmlAccessorType(XmlAccessType.FIELD)
public class DtSocio extends DtUsuario {
    private List<DtRegistro> registros = new ArrayList<>();

    public DtSocio() {}

    public DtSocio(String nickname, String nombre, String apellido, String correoElectronico, Date fechaNacimiento, List<DtRegistro> registros) {
        super(nickname, nombre, apellido, correoElectronico, fechaNacimiento);
        this.registros = registros;
    }

    public List<DtRegistro> getDtRegistros() {
        return registros;
    }

}

