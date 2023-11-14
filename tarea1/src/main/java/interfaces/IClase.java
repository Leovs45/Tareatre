package interfaces;

import java.util.Date;
import java.util.List;

import datatypes.DtActividad;
import datatypes.DtClase;
import excepciones.ClaseRepetidaException;
import logica.Clase;

public interface IClase {
	public void altaDictadoClase(String nombreClase, DtActividad actividadDeportiva, Date fechaClase, String nombreProfesor,
			String horaInicio, String urlClase, Date fechaRegistro) throws ClaseRepetidaException;
	public Clase buscarClase(String abuscar);
	public List<DtClase> getRankingClases();
	public List<String> obtenerSociosDeUnaClase(String nombreClase);
	public DtClase getDtClase(String nombreClase);
	public boolean existeClase(String nombreClase);
}
