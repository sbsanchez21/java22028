package dao;



import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Alumno;

/**
 * Clase donde se consultan, modifican, 
 * eliminan y crean datos de los alumnos.
 * 
 * @author Santos
 *
 */
public class AlumnoDAO {
	
	/**
	 * Consulta todos los alumnos de la db
	 * 
	 * @return Una List de objetos alumnos
	 * @throws SQLException
	 */
	public List<Alumno> getAllAlumnos() throws SQLException {
		ConexionDB conDB = new ConexionDB();
		Connection conn= conDB.establecerConexion();
		Statement st;
		st = conn.createStatement();
		ResultSet rs= st.executeQuery("Select * from alumnos");

		List<Alumno> listAlumnos = new ArrayList<Alumno>();
		while (rs.next()) {
			Alumno alumno = new Alumno();
			alumno.setNombre(rs.getString("nombre"));
			alumno.setApellido(rs.getString("apellido"));
			alumno.setTelefono(rs.getInt("telefono"));
			alumno.setDni(rs.getInt("dni"));
			
			listAlumnos.add(alumno);
					
		}
		

		
		
		return listAlumnos;
	}
	
	public void getAlumnoXID() {
		// TODO Auto-generated method stub

	}
	
	private void getAlumnoXNombre() {
		// TODO Auto-generated method stub

	}
}
