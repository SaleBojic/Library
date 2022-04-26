package com.example.demo.repository;

import java.util.List;


import model.Knjiga;
//Custom interfaces must follow specific naming in order to be recognized by spring
//it must include {name of interface that extends JPARepository}+{suffix "Custom"}
public interface KnjigaRepositoryCustom{
	public List<Integer> savePrimerci(Knjiga k, Integer brPrimeraka);
}
