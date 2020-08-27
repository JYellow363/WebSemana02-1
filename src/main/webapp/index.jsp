<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Proyecto II</title>
	</head>
	<body>
		<form method="post" action="ProcesarServlet">
			<table>
				<tr>
					<td>Nombre</td>
					<td>
						<input type="text" name="txtnombre"/>
					</td>
				</tr>
				<tr>
					<td>Edad</td>
					<td>
						<input type="text" name="txtedad"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" name="btnmostrar" value="Enviar" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="reset" name="btnreset" value="Limpiar" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>