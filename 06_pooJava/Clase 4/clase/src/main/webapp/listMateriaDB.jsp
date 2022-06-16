<%@page import="model.Materia"%>
<%@page import="java.util.List"%>
<%@page import="dao.MateriaDAO"%>
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
		<div class="titulo">Listado de Materias</div>
	
		
		<table class="table">
			<thead class="table-dark">
				<tr>
					<th>Nombre</th>
					<th>Descripcion</th>
					<th>Profesor</th>
				</tr>
			</thead>
			
			<tbody>
			<%
				MateriaDAO matDAO = new MateriaDAO();
				List<Materia> listMaterias = matDAO.getAllMaterias();
				
				for (Materia materia : listMaterias) {
					out.println("<tr>");
					
					out.println("<td>");
					out.println(materia.getNombre());
					out.println("</td>");
	
					out.println("<td>");
					out.println(materia.getDescripcion());
					out.println("</td>");	
	
					out.println("<td>");
					out.println(materia.getIdProfesor());
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