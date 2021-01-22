package com.salimhorri.springmvchibernate.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RegisterController {
// Begin Class
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String showView() {
		return "register";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String registerProcess(@RequestParam String fname,@RequestParam String lname,@RequestParam String mail,@RequestParam String pwd1,@RequestParam String pwd2,Model model) {
		
		// ******    areAllEmpty = !(areEmpty)    *******
		
		boolean areAllEmpty = ((fname.isEmpty())&&(lname.isEmpty())&&(mail.isEmpty())&&(pwd1.isEmpty())&&(pwd2.isEmpty()));
		
		boolean areEmpty = ((fname.isEmpty())||(lname.isEmpty())||(mail.isEmpty())||(pwd1.isEmpty())||(pwd2.isEmpty()));
		
		System.out.println(areAllEmpty == !areEmpty);
		
		if (areAllEmpty) {
			model.addAttribute("error", "All fields are empty...");
			return "register";
		}
		else {
			
			if (areEmpty) {
				model.addAttribute("error", "Some fields are empty...");
				return "register";
			}
			else {
				
				return "home";
				
			}
			
		}
		
	}
	
	
// End Class
}
