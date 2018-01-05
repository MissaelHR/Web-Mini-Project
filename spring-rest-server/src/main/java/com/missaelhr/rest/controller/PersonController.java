package com.missaelhr.rest.controller;

import javax.annotation.Resource;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.missaelhr.rest.domain.PersonList;
import com.missaelhr.rest.service.PersonService;

@Controller
public class PersonController {
	
	@Resource(name = "personService") //llama al recurso del servicio 
	private PersonService personService; 
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
	@RequestMapping(value = "/listar", method = RequestMethod.GET) 
	public @ResponseBody PersonList getPerson(){
    	
    // Call service here
		PersonList result = new PersonList();		
		result.setData(personService.getAll());

		return result;
	}
	
}
