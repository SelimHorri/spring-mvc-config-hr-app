package com.salimhorri.springmvchibernate.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
// Begin Class
	
	/*@Autowired
	private PersonDAO personDAO;*/
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String showView() {
		return "login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String loginProcess(@RequestParam String mail, @RequestParam String password,Model model) {
		
		if ( (mail.isEmpty()) && (password.isEmpty()) ) {
			
			model.addAttribute("error", "Fields are empty : fill them...");
			return "login";
			
		}
		else {
			
			if ( (mail.isEmpty()) || (password.isEmpty()) ) {
				
				model.addAttribute("error", "One Field is empty...");
				return "login";
				
			}
			else {
				
				
				
				return "home";
				
			}
			
		}
		
		
		
	}
	
// End Class
}








