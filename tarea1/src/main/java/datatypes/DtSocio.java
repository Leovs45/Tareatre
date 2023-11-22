package datatypes;

import java.util.Calendar;
import java.util.Date;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
public class DtSocio extends DtUsuario {
    private DtRegistro[] registros;
    private int cantRegistros = 0;

    public DtSocio() {}

    public DtSocio(String nickname, String nombre, String apellido, String correoElectronico, Calendar fechaNacimiento, DtRegistro[] registros, int cantRegistros) {
        super(nickname, nombre, apellido, correoElectronico, fechaNacimiento);
        this.registros = registros;
        this.cantRegistros = cantRegistros;
    }
    
    public int getCantidadRegistros() {
    	return cantRegistros;
    }
    
    public void restarUnRegistro() {
    	cantRegistros = cantRegistros - 1;
    }

    public DtRegistro[] getRegistros() {
        return registros;
    }

}

