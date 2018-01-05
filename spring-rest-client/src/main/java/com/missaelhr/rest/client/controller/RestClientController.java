package com.missaelhr.rest.client.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.missaelhr.rest.client.domain.Person;
import com.missaelhr.rest.client.domain.PersonList;

@Controller
public class RestClientController {

	private static Logger logger = Logger.getLogger("controller");
	
	private RestTemplate restTemplate = new RestTemplate();
		
	@RequestMapping(value = "/listall", method = RequestMethod.GET)
	public String getAll(Model model) {
	
		// Prepare acceptable media type
		List<MediaType> acceptableMediaTypes = new ArrayList<MediaType>();
		acceptableMediaTypes.add(MediaType.APPLICATION_JSON);
		
		// Prepare header
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(acceptableMediaTypes);
		HttpEntity<Person> entity = new HttpEntity<Person>(headers);

		// Send the request as GET
		try {
			ResponseEntity<PersonList> result = 
					restTemplate.exchange("http://localhost:8080/spring-rest-server/inmuebles/listar", //Llamada a la direccion del servidor rest donde proviene JSON
							HttpMethod.GET, entity, PersonList.class);
			// Add to model
			model.addAttribute("persons", result.getBody().getData());
			
		} catch (Exception e) {
			logger.error(e);
		}
		
		// Return page data table.jsp
		return "datatable";
	}
	
	
	@RequestMapping(value = "/graphics", method = RequestMethod.GET)
	public String getAll2(Model model) {
			
		// Prepare acceptable media type
		List<MediaType> acceptableMediaTypes = new ArrayList<MediaType>();
		acceptableMediaTypes.add(MediaType.APPLICATION_JSON);
		
		// Prepare header
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(acceptableMediaTypes);
		HttpEntity<Person> entity = new HttpEntity<Person>(headers);

		// Send the request as GET
		try {
			ResponseEntity<PersonList> result = 
					restTemplate.exchange("http://localhost:8080/spring-rest-server/agenda/listar", //Llamada a la direccion del servidor rest donde proviene JSON
							HttpMethod.GET, entity, PersonList.class);
			// Add to model
			model.addAttribute("persons", result.getBody().getData());
			
		} catch (Exception e) {
			logger.error(e);
		}
		
		// Return page graphics.jsp
		return "graphics";
	}
	
}
