package br.com.caelum.tarefas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OlaMundoController {
	
	@RequestMapping("/OlaMundo")
	public String execute(){
		System.out.println("Executando a l[ogica com Spring MVC");
		return "ok";
	}
	
}
