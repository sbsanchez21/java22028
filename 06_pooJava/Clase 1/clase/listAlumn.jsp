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


</head>
<body>

	<p>Listado alumnos jsp</p>
	
	<table class="table">
		<thead>
			<tr>
				<th>#ID</th>
				<th>Nombre</th>
			</tr>
		</thead>
		<tbody>
		
		<%
		// en próximas clases vamos a conectarnos a la DB
		// mediante sql traer todos los alumnos
		// simulación
		List<String> listAlumn= new ArrayList<String>();
		listAlumn.add("Pedro");
		listAlumn.add("Juan");
		listAlumn.add("Romina");
		listAlumn.add("Josefina");
		
		for(int i=0; i<listAlumn.size(); i++) {
			out.println("<tr>");
			//id
			out.println("<td>");
			out.println(i);
			out.println("</td>");
			//nombre
			out.println("<td>");
			out.println(listAlumn.get(i));
			out.println("</td>");
			
			out.println("</tr>");
			
		}	
		
		%>		
		</tbody>
	</table>
	
    <!-- bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>