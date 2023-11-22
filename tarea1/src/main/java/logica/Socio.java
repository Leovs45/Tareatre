package logica;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import datatypes.DtRegistro;
import datatypes.DtSocio;

@Entity
@Table(name = "Socio")
public class Socio extends Usuario {
	//@OneToMany
	@OneToMany(mappedBy = "socio")
	private List<Registro> registros = new ArrayList<>();
	
	//Constructor vacio
	public Socio() {}

	//Constructor
    public Socio(String nickname, String nombre, String apellido, String correoElectronico, Date fechaNacimiento, String password) {
		super(nickname, nombre, apellido, correoElectronico, fechaNacimiento, password);
	}

    //Getters & Setters
	public List<Registro> getArrayRegistro() {
		return registros;
	}

	public void setArrayRegistro(ArrayList<Registro> arrayRegistro) {
		this.registros = arrayRegistro;
	}

	public void agregarRegistro(Registro registro) {
		registros.add(registro);
	}

	public DtSocio getDtSocio() {
		DtRegistro[] arrRegistros = new DtRegistro[900];

		for (int i = 0; i < registros.size(); i++) {
			System.out.println(registros.get(i).getDtRegistro().getNombreClase());
			arrRegistros[i] = registros.get(i).getDtRegistro();
		}
		
		Calendar calendarNacimiento = Calendar.getInstance();
		calendarNacimiento.setTime(getFechaNacimiento());
		
		DtSocio dtS = new DtSocio(getNickname(), getNombre(), getApellido(), getCorreoElectronico(), calendarNacimiento, arrRegistros, registros.size());
		
		return dtS;
	}

}
