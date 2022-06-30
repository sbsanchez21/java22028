package dao;

import java.io.File;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dataBase.ConexionDB;

public class UsuarioDAOC {
	
	public Boolean validarUsuYPass(String usu, String pass) throws SQLException {
		//conn db
		ConexionDB conexionDB = new ConexionDB();
		Connection conn= conexionDB.establecerConexion();
		Statement st= conn.createStatement();
		
		//consulta si existe el usu y pass ingresado en login
		ResultSet rs = st.executeQuery("SELECT * FROM usuarios WHERE usuario='"+ usu +"' and clave='"+ pass + "'");
		
//		if (rs.next()) {
//			return true;
//		} else {
//			return false;
//		}
		
		return rs.next();
	}
	
	public Boolean guardarUsuario(String usu, String pass) throws SQLException {
		ConexionDB conexionDB = new ConexionDB();
		Connection conn= conexionDB.establecerConexion();
		Statement st= conn.createStatement();
		
				
		//consulta si existe el usu y pass ingresado en login
		String sql = new String("INSERT INTO usuarios (usuario, clave) VALUES ('" + usu + "','" + pass + "')");		
		Integer insertOk = st.executeUpdate(sql);
		
		return insertOk >= 1;
		

	}
	
	
	

}
