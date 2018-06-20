<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h3>Ingresar nueva persona</h3>
	<form:form method="POST" action="/SpringMVC/crearNuevaPersona" modelAttribute="persona">
		<table>
			<tr>
				<td><form:label path="nombre">Nombre</form:label></td>
				<td><form:input path="nombre" /></td>
			</tr>
			<tr>
				<td><form:label path="apellido">apellido</form:label></td>
				<td><form:input path="apellido" /></td>
			</tr>
			<tr>
				<td><form:label path="telefono">telefono</form:label></td>
				<td><form:input path="telefono" /></td>
			</tr>
			<tr>
				<td><form:label path="correo">correo</form:label></td>
				<td><form:input path="correo" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>