<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Página 01</title>
	</head>

	<body>
		<% 
		String nome = "Maria";
		int idade = 26;
		float altura = (float)1.72;
		%>
		
		<h1>Dados do Atleta</h1>
		
		<p>
		Nome: <% out.print(nome); %><br>
		Idade: <% out.print(idade); %><br>
		Altura: <% out.print(altura); %>
		</p>
	</body>
</html>	