<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<p>Hola html</p>
	
	<% 
		// aquí puedo conectarme a la DB
		// traer con SQL los datos de los alumnos
		// generar una tabla dinámica según la cantidad de alumnos
		out.println("Hola JSP");
		
		String mensaje = new String("Hola Jps 2");
		out.println(mensaje);
	%>
	
</body>
</html>