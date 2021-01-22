package com.salimhorri.springmvchibernate.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {
// Begin Class
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String showView() {
		return "page";
	}
	
// End Class
}
