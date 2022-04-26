package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.repository.KnjigaRepository;

import model.Knjiga;

@Controller
@RequestMapping(value="/knjige")
public class KnjigaController {

	
	@Autowired
	KnjigaRepository kr;
	
	//This method is provided by JPARepository Interface
	//inputs in jsp are named same as fields in model so we can get knjiga class as parameter
	@RequestMapping(value="/saveKnjiga" , method=RequestMethod.POST)
	public String saveKnjiga(@Valid Knjiga knjiga, Errors e, Model m , HttpServletRequest request) {
		if(e.hasErrors()) 
			return "Greska";
		else
			kr.save(knjiga);
		request.getSession().setAttribute("dodataKnjiga", knjiga);
		m.addAttribute("msg", "Knjiga - add - success");
		
		return "UnosPrimeraka";
		  
	}
	
	@RequestMapping(value="/savePrimerci" , method=RequestMethod.POST)
	public String savePrimerci(Integer brPrimeraka, HttpServletRequest request,Model m) {
		//Knjiga is stored in session, we need to save number of copies for knjiga which was added on previous request
		Knjiga k = (Knjiga) request.getSession().getAttribute("dodataKnjiga");
		//we cannot say add primerak because its specific method.
		List<Integer> invBrojevi = kr.savePrimerci(k, brPrimeraka);
		m.addAttribute("invBrojevi" , invBrojevi);
		return "UnosPrimeraka";
		
	}
	
}
