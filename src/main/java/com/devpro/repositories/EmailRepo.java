package com.devpro.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.entities.Email;


@Repository // -> Bean
public interface EmailRepo extends JpaRepository<Email, Integer> {

	public Email findByEmail(String email);
	
}

