package com.salimhorri.springmvchibernate.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.salimhorri.springmvchibernate.dao.PersonDAO;
import com.salimhorri.springmvchibernate.entities.Person;

@Controller
public class AddPersonController {
// Begin Class
	
	@Autowired
	private PersonDAO personDAO;
	
	@RequestMapping(value="/add-person",method=RequestMethod.GET)
	public String showView() {
		return "add-person";
	}
	
	@RequestMapping(value="/add-person",method=RequestMethod.POST)
	public String addPersonProcess(Model model,@RequestParam String fname,@RequestParam String lname,@RequestParam String mail,@RequestParam String pwd1,@RequestParam String pwd2) {
	// Begin addPersonProcess()
		
		fname = fname.trim();
		lname = lname.trim();
		mail = mail.trim();
		
		boolean b1 = fname.isEmpty() || lname.isEmpty() || mail.isEmpty() || pwd1.isEmpty() || pwd2.isEmpty();
		
		if (b1) {
			model.addAttribute("error","Empty field(s), fill (it/them)");
			return "add-person";
		}
		else {
			
			if (!pwd1.equals(pwd2)) {
				model.addAttribute("error","passwords are not equal");
				return "add-person";
			}
			else {
				
				personDAO.insert(new Person(fname, lname, mail, pwd1));
				return "redirect:list-persons";
				
			}
			
		}
		
	// End addPersonProcess()
	}
	
	
// End Class
}












