package controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.Cliente;

@WebServlet("/SalvarCliente")
public class SalvarCliente extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String nome = request.getParameter("nome");
		String telefone = request.getParameter("telefone");
		String email = request.getParameter("email");
		
		Cliente cli = new Cliente();
		
		cli.setNome(nome);
		cli.setTelefone(telefone);
		cli.setEmail(email);
		
		response.sendRedirect("sucesso.jsp?nome=" + nome + "&telefone=" + telefone + "&email=" + email);
	}
}