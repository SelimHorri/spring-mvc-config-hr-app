package com.salimhorri.springmvchibernate.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.salimhorri.springmvchibernate.dao.PersonDAO;
import com.salimhorri.springmvchibernate.entities.Person;

@Controller
public class ListPersonsController {
// Begin Class
	
	@Autowired
	private PersonDAO personDAO;
	
	@RequestMapping(value="/list-persons")
	public String showView(Model model) {
		
		// personDAO.insert(new Person("Sami", "Allagui", "samiallagui@yahoo.fr", "546865"));
		
		List<Person> list = personDAO.getPersons();
		
		model.addAttribute("listPersons",list);
		
		return "list-persons";
	}
	
// End Class
}
