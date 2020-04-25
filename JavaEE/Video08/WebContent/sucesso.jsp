<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Cadastro de Sessões de Cinema</title>
	</head>
	
	<body>
		<% 
		String filme = request.getParameter("filme");
		String data = request.getParameter("data");
		String inicio = request.getParameter("inicio");
		String termino = request.getParameter("termino");
		int sala = Integer.parseInt(request.getParameter("sala"));	
		
		String dataP = data.substring(8, 10) + "/" + data.substring(5, 7) + "/" + data.substring(0, 4);
		%>
		
		<h1>Cadastro de Sessões de Cinema</h1>
		
		<fieldset>
			<legend>Dados da Sesssão Cadastrada</legend>
			
			<p>A seguinte sessão foi cadastrada com sucesso:</p>
			
			<p>
			Título do filme: <%=filme %><br>
			Data da sessão: <%=dataP %><br>
			Hora de início: <%=inicio %><br>
			Hora de término: <%=termino %><br>
			Sala da sessão: <%=sala %>
			</p>
		</fieldset>
	</body>
</html>