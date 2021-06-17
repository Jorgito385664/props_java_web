<%@page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Propriedades</title>
</head>
<body>
	<%
		@SuppressWarnings("unchecked")
		Map<String,String> props = (Map<String, String>) request.getAttribute("props");
	%>
	
	<center><h1>Propriedades</h1></center>
	
	<a href="Edit">Criar nova propriedade</a>
	<br><br>
	<table border="1" width="100%">
		<tr>
			<td align="center"><strong>Propriedade</strong></td>
			<td align="center"><strong>Valor</strong></td>
			<td colspan="2"></td>
		</tr>
		
		<% for(Map.Entry<String, String> entry : props.entrySet()) { %>

		
			<tr>
				<td align="center"><%=entry.getKey() %></td>
				<td align="center"><%=entry.getValue() %></td>
				<td align="center"><a href="Edit?key=<%=entry.getKey()%>">Editar</a></td>
				<td align="center"><a href="Delete?key=<%=entry.getKey()%>">Excluir</a></td>
			</tr>
		
		<% } %>
		
	</table>
</body>
</html>