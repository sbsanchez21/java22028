package model;

/**
 * Representa un alumno de la db
 * 
 * @author Santos
 *
 */
public class Alumno {
	/**
	 * Atributos del alumno: datos que necesitamos guardar del alumno
	 */
	private String nombre;
	private String apellido;
	private Integer dni;
	private Integer telefono;
	
	/**
	 * Getters y setters, nos permiten acceder a los atributos y modificarlos
	 */
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public Integer getDni() {
		return dni;
	}
	public void setDni(Integer dni) {
		//verificar si el objeto que settea tiene permisos
		this.dni = dni;
	}
	public Integer getTelefono() {
		return telefono;
	}
	public void setTelefono(Integer telefono) {
		this.telefono = telefono;
	}
	
	/**
	 * Da de alta un alumno en una materia.
	 * Crea un registro en la tabla alumnomateria con las referencias
	 */
	public void altaMateria() {
		// TODO Auto-generated method stub

	}
	
	public void bajaMateria() {
		// TODO Auto-generated method stub

	}
	
	
}
