<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dataBase.ConexionDB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

	<link rel="stylesheet" href="css/style.css">	
</head>

<body>
	<div class="container">
	<div class="titulo">Listado de Alumnos</div>

	
	<table class="table">
		<thead class="table-dark">
			<tr>
				<th>#ID</th>
				<th>Nombre</th>
				<th>Apellido</th>
				<th>Usuario</th>
			</tr>
		</thead>
		
		<tbody>
		<%
			//estos datos en un futuro los vamos a sacar de la base de datos
			ConexionDB conexionDB = new ConexionDB();
			Connection conn= conexionDB.establecerConexion();
			Statement st=conn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM alumnos");
		
			while(rs.next()) {
				out.println("<tr>");
				
				out.println("<td>");
				out.println(rs.getInt("id"));
				out.println("</td>");

				out.println("<td>");
				out.println(rs.getString("nombre"));
				out.println("</td>");

				out.println("<td>");
				out.println(rs.getString("apellido"));
				out.println("</td>");

				out.println("<td>");
				out.println(rs.getString("usuario"));
				out.println("</td>");
				
				out.println("</tr>");				
			} 
		

			
		
		%>	
		
		</tbody>
		
		
	</table>
	</div>
	
    <!-- bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>