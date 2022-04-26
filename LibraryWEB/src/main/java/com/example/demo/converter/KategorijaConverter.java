package com.example.demo.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.ConversionFailedException;
import org.springframework.core.convert.TypeDescriptor;
import org.springframework.core.convert.converter.Converter;

import com.example.demo.repository.KategorijaRepository;

import model.Kategorija;

public class KategorijaConverter implements Converter<String,Kategorija>{

	@Autowired
	KategorijaRepository kr;
	
	@Override
	public Kategorija convert(String source) {
		int katId = -1;
		try {
			katId = Integer.parseInt(source);
		}catch(NumberFormatException e) {
			throw new ConversionFailedException(TypeDescriptor.valueOf(String.class),
					TypeDescriptor.valueOf(Kategorija.class), katId , null);
		}
		Kategorija k = kr.findById(katId).get();
		return k;
	}

	
	
}
