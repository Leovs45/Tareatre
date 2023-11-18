package datatypes;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import logica.Registro;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
public class DtSocio extends DtUsuario {
    private List<Registro> registros = new ArrayList<>();

    public DtSocio() {}

    public DtSocio(String nickname, String nombre, String apellido, String correoElectronico, Date fechaNacimiento, List<Registro> registros) {
        super(nickname, nombre, apellido, correoElectronico, fechaNacimiento);
        this.registros = registros;
    }

    public List<DtRegistro> getRegistros() {
        List<DtRegistro> dtRegistros = new ArrayList<>();

        for(Registro r: registros) {
        	dtRegistros.add(r.getDtRegistro());
        }

        return dtRegistros;
    }

}

