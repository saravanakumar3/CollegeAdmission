package com.chainsys.admissionforcollege.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.admissionforcollege.model.CardDetails;
import com.chainsys.admissionforcollege.repository.CardDetailRepository;

@Service
public class CardDetailsService {
	@Autowired
	  private CardDetailRepository cardRepositor;
	    public CardDetails findByid(int id) {
	        return cardRepositor.findById(id);
	    }
		public List<CardDetails> getCardDetails() {
	        List<CardDetails> cardlist = cardRepositor.findAll();
	        return cardlist;
	    }
	    public CardDetails save(CardDetails cardDetails) {
	        return cardRepositor.save(cardDetails);
	    }
	    public void deleteById(int id) {
	    	cardRepositor.deleteById(id);
	    }}
	


