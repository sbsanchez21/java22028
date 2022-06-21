package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Materia;

public class MateriaDAO {
	
	public List<Materia> getAllMaterias() throws SQLException {
		ConexionDB conexionDB = new ConexionDB();
		Connection connection = conexionDB.establecerConexion();
		Statement statement = connection.createStatement();
		
		ResultSet resultSet = statement.executeQuery("SELECT * FROM materias ORDER BY nombre");
		
		List<Materia> listMateria = new ArrayList<Materia>();
		while (resultSet.next()) {
			Materia mat = new Materia();
			mat.setNombre(resultSet.getString("nombre"));
			mat.setDescripcion(resultSet.getString("descripcion"));
			mat.setIdProfesor(resultSet.getInt("idProfesor"));
			
			listMateria.add(mat);
		}
		
		
		
		return listMateria;
	}

}
