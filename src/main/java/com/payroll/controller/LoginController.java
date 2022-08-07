package com.payroll.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class LoginController {

	@GetMapping("/login")
	public String showLogin() {
		
		return "login";
	}
	
	
	// to get the details of current logged in user
	@GetMapping("/")
	public String showHome(Principal principal, Model model) {
		
		String username = principal.getName();
		model.addAttribute("username", username);
		return "index";
	}
	
	@GetMapping("/access")
	public String showAccess() {
		
		return "accessDenied";
	}
	
}
