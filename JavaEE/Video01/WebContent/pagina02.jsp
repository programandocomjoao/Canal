<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Página 02</title>
</head>
<body>
	<% 
	int n1 = 23;
	int n2 = 38;
	int soma = n1 + n2;
	%>

	<h1>Exemplo de JSP</h1>
	
	<p>
	Número 1: <% out.print(n1); %><br>
	Número 2: <% out.print(n2); %><br>
	Soma: <% out.print(soma); %>
	</p>
</body>
</html>