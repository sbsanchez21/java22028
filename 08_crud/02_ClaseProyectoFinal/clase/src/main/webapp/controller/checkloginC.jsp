<%@page import="dao.UsuarioDAOC"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String usu = request.getParameter("inputEmail");
	String pass = request.getParameter("inputPassword");
	
	
	UsuarioDAOC usuarioDAOC = new UsuarioDAOC();
	Boolean esValido = usuarioDAOC.validarUsuYPass(usu, pass);
	
	if(esValido) {
		response.sendRedirect("../view/inicio.html");
		
	} else {
		response.sendRedirect("../view/loginError.html");
	}
	
	
	%>

</body>
</html>