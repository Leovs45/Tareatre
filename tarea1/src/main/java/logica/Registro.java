package logica;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import datatypes.DtRegistro;
import interfaces.Fabrica;
import interfaces.IClase;
import interfaces.IUsuario;
@Entity
@Table(name = "Registro")
public class Registro {
	@Id
	private	Date fechaRegistro;
	@ManyToOne
	private Socio socio;
	@ManyToOne
	private Clase clase;

//costructor vacio
public Registro(){}

	//Constructor
	public Registro(Date fechaRegistro, Socio socio, Clase clase) {
		super();
		this.fechaRegistro = fechaRegistro;
		this.socio = socio;
		this.clase = clase;
	}

	//Getters & setters
	public Date getfechaRegistro() {
		return fechaRegistro;
	}

	public void setfechaRegistro(Date fechaRegistro) {
		this.fechaRegistro = fechaRegistro;
	}

	public DtRegistro getDtRegistro() {	
		 Calendar calendarRegistro = Calendar.getInstance();
		 calendarRegistro.setTime(fechaRegistro);
	     
		DtRegistro dtR = new DtRegistro(calendarRegistro, socio.getNombre(), clase.getNombreClase());
	     
		return dtR;
	}

}
