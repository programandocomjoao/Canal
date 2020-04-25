package controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.Sessao;

@WebServlet("/SalvarSessao")
public class SalvarSessao extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String filme = request.getParameter("filme");
		String data = request.getParameter("data");
		String inicio = request.getParameter("inicio");
		String termino = request.getParameter("termino");
		int sala = Integer.parseInt(request.getParameter("sala"));
		
		if (termino.compareTo(inicio) > 0) {
			Sessao ses = new Sessao();
		
			ses.setFilme(filme);
			ses.setData(data);
			ses.setInicio(inicio);
			ses.setTermino(termino);
			ses.setSala(sala);
		
			response.sendRedirect("sucesso.jsp?filme="+filme+"&data="+data+"&inicio="+inicio+"&termino="+termino+"&sala="+sala);
		}
		else
			response.sendRedirect("erro.jsp?filme="+filme+"&data="+data+"&inicio="+inicio+"&termino="+termino+"&sala="+sala);
			
	}
}