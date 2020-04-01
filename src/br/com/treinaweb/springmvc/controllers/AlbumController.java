package br.com.treinaweb.springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.treinaweb.springmvc.dominios.Album;

@Controller
@RequestMapping("/albuns")
public class AlbumController {
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.GET)
	public String adicionar(Model model) {
		model.addAttribute("album", new Album());
		return "albuns/adicionar";
	}
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute("album") Album novoAlbum, Model model) {
		model.addAttribute("album", novoAlbum);
		return "albuns/exibir";
	}

}
