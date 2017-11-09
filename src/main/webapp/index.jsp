
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.List"  %>
<%@ page import="com.qualitas.entities.Cliente"  %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	td{
		border:1px solid gray;
		padding:10px;
	}
	
	table{
		border-collapse: collapse;
	}
</style>
</head>
<body>
	<h1>Cat�logo de clientes</h1>
	<h2>Clientes encontrados:
		<%
		List<Cliente> clientes = (List<Cliente>)session.getAttribute("clientes");
		out.println(clientes.size());
		%>
		<table>
			<% for(Cliente cliente:clientes){ %>
				<tr>
					<td>
					<% out.println(cliente.getNombre()); %>
					</td>					
					<td>
					<% out.println(cliente.getDireccion()); %>
					</td>					
					<td>
					<% out.println(cliente.getPoliza().getNumero()); %>
					</td>
					
				</tr>
			<% } %>						
		</table>
	</h2>
</body>
</html>