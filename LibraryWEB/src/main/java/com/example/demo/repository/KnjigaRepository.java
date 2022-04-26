package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Knjiga;

//Spring allows basic crud operations just by extending JPA Repository, this interface
//expects two parameters type on which we are operating and its key
public interface KnjigaRepository extends JpaRepository<Knjiga, Integer>, KnjigaRepositoryCustom {
	
}
