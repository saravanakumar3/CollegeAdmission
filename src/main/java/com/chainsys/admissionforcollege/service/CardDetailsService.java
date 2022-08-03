package com.chainsys.admissionforcollege.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.admissionforcollege.model.CardDetails;
import com.chainsys.admissionforcollege.repository.CardDetailRepository;

@Service
public class CardDetailsService {
	@Autowired
	  private CardDetailRepository cardRepo;
	    public CardDetails findByid(int id) {
	        return cardRepo.findById(id);
	    }
	    public CardDetails save(CardDetails cardDetails) {
	        return cardRepo.save(cardDetails);
	    }
	    public void deleteById(int id) {
	    	cardRepo.deleteById(id);
	    }
}
