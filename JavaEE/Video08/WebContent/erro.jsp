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
		%>
		
		<h1>Cadastro de Sessões de Cinema</h1>
		
		<form action="SalvarSessao" method="post">
			<fieldset>
				<legend>Dados da Sessão</legend>
				
				<p><label for="filme">Título do Filme:</label>
				<input type="text" id="filme" name="filme" size="40" value="<%=filme %>"></p>
				
				<p><label for="data">Data da Sessão:</label>
				<input type="date" id="data" name="data" value="<%=data %>"></p>
				
				<p style="background-color: red; color: white; font-size: 13pt; padding: 5px">
				A hora de término deve ser maior que a hora de início!!!</p>
				
				<p><label for="inicio">Hora de Início:</label>
				<input type="time" id="inicio" name="inicio" value="<%=inicio %>"></p>
				
				<p><label for="termino">Hora de Término:</label>
				<input type="time" id="termino" name="termino" value="<%=termino %>"></p>
				
				<p><label for="sala">Sala da Sessão:</label>
				<input type="number" id="sala" name="sala" min="1" max="5" value="<%=sala %>"></p>
				
				<p><input type="submit" value="Cadastrar Sessão"></p>
			</fieldset>
		</form>
	</body>
</html>