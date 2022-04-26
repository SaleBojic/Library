package com.example.demo.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.repository.ClanRepository;
import com.example.demo.repository.KategorijaRepository;

import model.Clan;
import model.Kategorija;

@Controller
@RequestMapping(value="/clan")
public class ClanController {

	@Autowired
	KategorijaRepository kr;
	
	@Autowired
	ClanRepository cr;
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf,true));
	}
	
	@RequestMapping(value="/saveClan" , method=RequestMethod.POST)
	public String saveClan(@ModelAttribute("clan")Clan cl, Model m) {
		Clan c = cr.save(cl);
		m.addAttribute("clanAdd", c);
		return "UnosClana";
	}
	
	@ModelAttribute	
	public void getClan(Model m) {
		Clan c = new Clan();
		c.setIme("Pera");
		c.setPrezime("Peric");
		c.setAdresa("Kralja Petra 62");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date;
		try {
			date = sdf.parse("1990-06-15");
			c.setDatumRodjenja(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		m.addAttribute("clan", c);
	}
	
	@ModelAttribute("kategorije")
	public List<Kategorija> loadKategorije(){
		return kr.findAll();
	}
	
	@RequestMapping(value="/add" , method=RequestMethod.GET)
	public String addClan(Clan c) {
		return "UnosClana";
	}
	
	
}
