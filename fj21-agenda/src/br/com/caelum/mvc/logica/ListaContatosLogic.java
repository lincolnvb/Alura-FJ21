package br.com.caelum.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.model.Contato;

public class ListaContatosLogic implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) {
		
		List<Contato> contatos = new ContatoDAO().getList();
		
		req.setAttribute("contatos", contatos);
		
		return "/WEB-INF/jsp/lista-contatos-scriptlet.jsp";
	}

}
