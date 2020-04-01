package br.com.treinaweb.springmvc.controllers;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hello")
public class HelloController {

	@RequestMapping(method = RequestMethod.GET)
    public String home() {
        return "hello";
    }
	
	@RequestMapping(value="/mensagemDoServidor",method = RequestMethod.GET)
    public String mensagemDoServidor(Model model) {
		model.addAttribute("mensagem", new Date().toString());
        return "mensagemDoServidor";
    }
	
	@RequestMapping(value="/mensagemDoServidor2",method = RequestMethod.GET)
    public ModelAndView mensagemDoServidor2() {
		ModelAndView mv = new ModelAndView("mensagemDoServidor", "mensagem", new Date().toString());
        return mv;
    }
	
	@RequestMapping(value="/receberMensagem/{mensagem}",method = RequestMethod.GET)
    public String receberMensagem(Model model, @PathVariable String mensagem) {
		model.addAttribute("mensagem", mensagem);
        return "mensagemDoServidor";
    }
	
	@RequestMapping(value="/receberMensagem2",method = RequestMethod.GET)
    public String receberMensagem2(Model model, @RequestParam(value = "valor", required = false, defaultValue = "Padrão") String mensagem) {
		model.addAttribute("mensagem", mensagem);
        return "mensagemDoServidor";
    }
}
