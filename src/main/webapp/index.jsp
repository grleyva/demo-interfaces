
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.List"  %>
<%@ page import="com.qualitas.entities.Cliente"  %>

<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	<div class="container">
		<h1>Catálogo de clientes</h1>
	<h2>Clientes encontrados:
		<%
		List<Cliente> clientes = (List<Cliente>)session.getAttribute("clientes");
		out.println(clientes.size());
		%>
		<table class="table table-hover">
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
	</div>
</body>

</body>
</html>