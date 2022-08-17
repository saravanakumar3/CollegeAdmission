package com.chainsys.admissionforcollege.controller;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.admissionforcollege.model.CardDetails;
import com.chainsys.admissionforcollege.service.CardDetailsService;
@Controller
@RequestMapping("/details")
public class CardDetailsController {
	@Autowired
	private CardDetailsService cardServiceRepository;
	  @GetMapping("/list")
	    public String getDetails(Model model) {
	        List<CardDetails> cardDetails  = cardServiceRepository.getCardDetails();
	        model.addAttribute("allplayment", cardDetails );
	        return "list-card";
	    }
//	  @GetMapping("/carddetails")
//		public String showAddForm(Model model) {
//			CardDetails carddetails = new CardDetails();
//			model.addAttribute("addcarddetails", carddetails);
//			return "add-card-details";
//		}
//	@PostMapping("/adddetails")
//	public String addCardDetails(@Valid@ModelAttribute("addcarddetails") CardDetails carddetails,
//		BindingResult bindingResult){
//        	if (bindingResult.hasErrors()) {
//        		return "add-card-details";
//        	}else
//        		cardServiceRepository.save(carddetails);
//        	return "paymentstatus-form";
//    	}
	  @GetMapping("/card")
			public String showForm(@RequestParam("id") int id,Model model) {
				CardDetails carddetails = new CardDetails();
				model.addAttribute("addcarddetails", carddetails);
				carddetails.setUserId(id);
				return "add-card-details";
			}
		@PostMapping("/adddetails")
		public String addEmployeeDetails(@Valid@ModelAttribute("addcarddetails") CardDetails carddetails,
			BindingResult bindingResult){
	        	if (bindingResult.hasErrors()) {
	        		return "add-card-details";
	        	}else
	        		cardServiceRepository.save(carddetails);
	        	return "paymentstatus-form";
	    	}
    }