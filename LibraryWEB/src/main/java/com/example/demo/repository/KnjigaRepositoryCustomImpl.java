package com.example.demo.repository;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.Knjiga;
import model.Primerak;

@Repository
@Transactional
//Class that implements custom repository also has to follow naming convention of spring
//{custominterfacename}+{"impl"} (adding "implementation" as suffix will not work)
//Implementation Classes and interfaces also should be in same package or subpackage of interface that extends JPARepository
public class KnjigaRepositoryCustomImpl implements KnjigaRepositoryCustom {

	//we inject EM to write to the database via JPA
	@PersistenceContext
	EntityManager em;
	
	@Override
	public List<Integer> savePrimerci(Knjiga k, Integer brPrimeraka) {
		ArrayList<Integer> brojeviPrimeraka = new ArrayList<Integer>();
		try {
		if(k != null) {
			for(int i = 0 ; i < brPrimeraka ; i++) {
				Primerak p = new Primerak();
				p.setKnjiga(k);
				em.persist(p);
				brojeviPrimeraka.add(p.getInvBroj());
			}
		}
		return brojeviPrimeraka;
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
