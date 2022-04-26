package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Clan;

public interface ClanRepository extends JpaRepository<Clan,Integer> {

}
