<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Página 02</title>
	</head>

	<body>
		<% 
		String nome = request.getParameter("nome");
		int idade = Integer.parseInt(request.getParameter("idade"));
		float altura = Float.parseFloat(request.getParameter("altura"));
		%>
		
		<h1>Dados do Atleta</h1>
		
		<p>
		Nome: <%=nome %><br>
		Idade: <%=idade %><br>
		Altura: <%=altura %>
		</p>
	</body>
</html>