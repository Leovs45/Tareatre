package interfaces;
import java.util.Date;

import excepciones.RegistroClaseRepetidoException;

public interface IRegistro {

	public void RegistroDictadoClases(Date FechaRegistro, String unSocio, String unaClase) throws RegistroClaseRepetidoException;
	public boolean existeRegistro(String unSocio, String unaClase);


}
