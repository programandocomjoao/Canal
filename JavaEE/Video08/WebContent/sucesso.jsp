<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Cadastro de Sess�es de Cinema</title>
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
		
		<h1>Cadastro de Sess�es de Cinema</h1>
		
		<fieldset>
			<legend>Dados da Sesss�o Cadastrada</legend>
			
			<p>A seguinte sess�o foi cadastrada com sucesso:</p>
			
			<p>
			T�tulo do filme: <%=filme %><br>
			Data da sess�o: <%=dataP %><br>
			Hora de in�cio: <%=inicio %><br>
			Hora de t�rmino: <%=termino %><br>
			Sala da sess�o: <%=sala %>
			</p>
		</fieldset>
	</body>
</html>