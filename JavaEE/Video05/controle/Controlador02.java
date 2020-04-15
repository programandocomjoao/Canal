package controle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controlador02")
public class Controlador02 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter saida = response.getWriter();
		
		saida.println("<!DOCTYPE html>");
		saida.println("<html lang='pt-br'>");
		saida.println("<head>");
		saida.println("<meta charset='UTF-8'>");
		saida.println("<title>Meu Segundo Servlet</title>");
		saida.println("</head>");
		saida.println("<body>");
		saida.println("<h1>Meu Segundo Servlet</h1>");
		saida.println("<p>Bem-vindos ao segundo Servlet desta aula.</p>");
		saida.println("</body>");
		saida.println("</html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
