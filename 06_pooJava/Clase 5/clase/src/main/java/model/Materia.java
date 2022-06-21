package model;

public class Materia {
	private String nombre;
	private String descripcion;
	private Integer idProfesor;
	
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Integer getIdProfesor() {
		return idProfesor;
	}

	public void setIdProfesor(Integer idProfesor) {
		//control seguridad para ver si se puede modificar este dato
		this.idProfesor = idProfesor;
	}



	private void asignarProfesor() {
		// TODO asigna un profesor para dictar al materia

	}
	
}
