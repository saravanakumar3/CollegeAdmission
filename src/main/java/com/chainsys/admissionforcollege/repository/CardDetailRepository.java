package com.chainsys.admissionforcollege.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.admissionforcollege.model.CardDetails;
import com.chainsys.admissionforcollege.model.Student;

public interface CardDetailRepository extends CrudRepository<CardDetails, Integer> { 
	
		   CardDetails findById(int id);
		   CardDetails save(CardDetails cardDetails); 
		    void deleteById(int id);
//		    List<CardDetails> findAll();
		    
		}

