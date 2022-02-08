package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.model.Destino;
import com.repository.DestinosRepo;

@Controller
public class DestinoController {
	
	@Autowired
	private DestinosRepo dRepo;
	
	//Rota HOME/////////////////////////////////////////////
	@GetMapping("/destinos")
	public String index(Model model) {
		List<Destino> destinos = (List<Destino>)dRepo.findAll(); 
		model.addAttribute("destinos", destinos);
		return "destinos/index";
	}
	//Criar/////////////////////////////////////////////////
	@GetMapping("/destinos/novo")
	public String novo() {
		return "destinos/novo";
	}
	
	@PostMapping("/destinos/criar")
	public String criar(Destino destino) {
		dRepo.save(destino);
		return "redirect:/destinos";
	}
	//Atualizar////////////////////////////////////////////
	@GetMapping("/destinos/{id}")
	public String buscar(@PathVariable int id, Model model) {
		Optional<Destino> destino = dRepo.findById(id);
		try
		{
			model.addAttribute("destino", destino.get());
		}
		catch(Exception err)
		{
			return "redirect:/destinos"; 
		}
		return "/destinos/editar";
	}
	@PostMapping("/destinos/{id}/atualizar")
	public String atualizar(@PathVariable int id, Destino destino) {	
		if(!dRepo.existsById(id)) {
			return "redirect:/destinos"; 
		}
		dRepo.save(destino);
		return "/destinos/editar";
	}
	
	//Deletar//////////////////////////////////////////////
	@GetMapping("/destinos/{id}/excluir")
	public String excluir(@PathVariable int id) {
		dRepo.deleteById(id);
		return "redirect:/destinos";
	}

}
