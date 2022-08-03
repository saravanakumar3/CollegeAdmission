package com.chainsys.admissionforcollege.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.admissionforcollege.model.CardDetails;
import com.chainsys.admissionforcollege.model.Course;
import com.chainsys.admissionforcollege.service.CardDetailsService;
import com.chainsys.admissionforcollege.service.CourseService;

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

	@PostMapping("/entercarddetails")
	public String addEmployeeDetails(@ModelAttribute("addcarddetails") CardDetails carddetails) {
		cardService.save(carddetails);
		return "paymentmentstatus";
	}
}
