package br.com.caelum.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

public class MensagemAoUsuario {

	public static void mandarHeader1(HttpServletResponse resp, String texto) throws IOException{

		PrintWriter pw = resp.getWriter();
		pw.println("<html><body><h1>");
		pw.println(texto);
		pw.println("</h1></body></html>");
	}
}
