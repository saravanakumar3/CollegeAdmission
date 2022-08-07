package com.chainsys.admissionforcollege.controller;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.chainsys.admissionforcollege.model.CardDetails;
import com.chainsys.admissionforcollege.service.CardDetailsService;
@Controller
@RequestMapping("/details")
public class CardDetailsController {
	@Autowired
	private CardDetailsService cardService;
	@GetMapping("/carddetails")
	public String showAddForm(Model model) {
		CardDetails carddetails = new CardDetails();
		model.addAttribute("addcarddetails", carddetails);
		return "add-card-details";
	}

	@PostMapping("/add")
	public String addEmployeeDetails(@Valid@ModelAttribute("addcarddetails") CardDetails carddetails,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "add-card-details";
		}else {
		cardService.save(carddetails);
		return "paymentmentstatus-form";
	}}
}
