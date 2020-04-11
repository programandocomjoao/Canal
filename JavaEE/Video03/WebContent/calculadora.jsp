<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Calculadora Básica</title>
	</head>
	
	<body>
		<%
		float valor1 = Float.parseFloat(request.getParameter("valor1"));
		float valor2 = Float.parseFloat(request.getParameter("valor2"));;
		int opcao = Integer.parseInt(request.getParameter("operacao"));;
		float resultado = 0;
		
		switch (opcao) {
			case 1: resultado = valor1 + valor2; break;
			case 2: resultado = valor1 - valor2; break;
			case 3: resultado = valor1 * valor2; break;
			case 4: resultado = valor1 / valor2;
		}
		%>
		
		<h1>Calculadora Básica</h1>
		
		<p>
		Valor 1: <%=valor1 %><br>
		Valor 2: <%=valor2 %><br>
		Resultado: <%=resultado %>
		</p>
	</body>
</html>