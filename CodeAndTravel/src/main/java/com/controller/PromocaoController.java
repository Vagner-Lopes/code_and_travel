package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PromocaoController {
	@GetMapping("/promocoes")
	public String index() {
		
		return "promocoes/index";
	}

}
