package br.com.caelum.mvc.logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.model.Contato;

public class FormAdicionaContato implements Logica{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) {
		
		return "/WEB-INF/jsp/adicionaContato.jsp";
		
	}

}
