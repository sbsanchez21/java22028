<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
			</tr>
		</thead>
		
		<tbody>
		<%
			//estos datos en un futuro los vamos a sacar de la base de datos
			List<String> listAlumnos=new ArrayList<String>();
			listAlumnos.add("Pedro");
			listAlumnos.add("Juan");
			listAlumnos.add("Romina");
			listAlumnos.add("Rodrigo");
			listAlumnos.add("Sandro");
			
			for(int i=0; i < listAlumnos.size(); i++) {
				out.println("<tr>");
				
				out.println("<td>");
				out.println(i);
				out.println("</td>");

				out.println("<td>");
				out.println(listAlumnos.get(i));
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