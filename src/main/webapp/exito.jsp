<%@ page import="com.upc.model.Persona" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	Persona person = (Persona)request.getSession().getAttribute("persona1");
%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Recepción de datos</title>
	</head>
	<body>
		<h1>Datos recibidos correctamente</h1>
		<p>Nombre: <%= person.getNombre() %></p>
		<p>Edad: <%= person.getEdad() %></p>
		<a href="index.jsp">Volver</a>
	</body>
</html>