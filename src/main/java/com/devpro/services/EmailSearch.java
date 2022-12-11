package com.devpro.services;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.entities.Email;

import com.devpro.repositories.EmailRepo;

@Service
public class EmailSearch {
	@PersistenceContext protected EntityManager entityManager;
    @Autowired
    EmailRepo emailRepo;
	public boolean saveEmailNoti(String email) {
	
		Email eml = new Email();
		eml.setEmail(email);
		if(emailRepo.findByEmail(eml.getEmail()) != null) return false;
		else {
			LocalDateTime now = LocalDateTime.now();  
		    DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");  
		    String formatDateTime = now.format(format); 
		    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		    eml.setCreatedDate(LocalDateTime.parse(formatDateTime, formatter));
			emailRepo.save(eml);
			return true;
		}
}}
