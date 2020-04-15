package controle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SalvarAnimal")
public class SalvarAnimal extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		int idade = Integer.parseInt(request.getParameter("idade"));
		float peso = Float.parseFloat(request.getParameter("peso"));
		String especie = request.getParameter("especie");
		
		PrintWriter saida = response.getWriter();	

		saida.println("<!DOCTYPE html>");
		saida.println("<html lang='pt-br'>");
		saida.println("<head>");
		saida.println("<meta charset='UTF-8'>");
		saida.println("<title>Meu Segundo Servlet</title>");
		saida.println("</head>");
		saida.println("<body>");
		
		saida.println("<h1>Dados do Animal</h1>");
		saida.println("<p>");
		saida.println("Nome do animal: " + nome + "<br>");
		saida.println("Idade: " + idade + "<br>");
		saida.println("Peso: " + peso + "<br>");
		saida.println("Espécie: " + especie);
		saida.println("</p>");
		
		saida.println("</body>");
		saida.println("</html>");
	}
}
