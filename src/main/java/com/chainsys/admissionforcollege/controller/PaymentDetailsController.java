package com.chainsys.admissionforcollege.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.admissionforcollege.model.PaymentDetails;
import com.chainsys.admissionforcollege.model.StudentCompositeKey;
import com.chainsys.admissionforcollege.service.PaymentService;

@Controller
@RequestMapping("/payment")
public class PaymentDetailsController {
	@Autowired
	private PaymentService paymentServices;

	@GetMapping("/paymentlist")
	public String getFindAllPaymentDetails(Model model) {
		List<PaymentDetails> list = paymentServices.getPayment();
		model.addAttribute("allpaymentlist", list);
		return "list-payment";
	}

	@GetMapping("/addpaymentform")
	public String showAddPaymentDetails(Model model) {
		PaymentDetails paymentDetails = new PaymentDetails();
		model.addAttribute("addpayment", paymentDetails);
		return "add-payment-form";
	}

	@PostMapping("/add")
	public String addNewPaymentDetails(@ModelAttribute("addpayment") PaymentDetails paymentDetails) {
		paymentServices.save(paymentDetails);
		return "redirect:/payment/paymentlist";
	}

	@GetMapping("/updateform")
	public String showUpdatePaymentDetails(@RequestParam("courseid") int courseId, @RequestParam("userid") int userId,
			@RequestParam("regid") long regId, Model model) {
		StudentCompositeKey studentCompositeKey = new StudentCompositeKey(courseId, userId, regId);
		Optional<PaymentDetails> payment = paymentServices.findById(studentCompositeKey);
		model.addAttribute("updatepay", payment);
		return "update-payment-form";
	}

	@PostMapping("/update ")
	public String UpdatePaymentDetails(@ModelAttribute("updatepayment") PaymentDetails paymentDetails) {
		paymentServices.save(paymentDetails);
		return "redirect:/payment/paymentlist";
	}

	
	@GetMapping("/getbyidpaymentdetails")
	public String getVaccineDate(@RequestParam("courseid") int courseId, @RequestParam("userid") int userId,
			@RequestParam("regid") long regId, Model model) {
		StudentCompositeKey studentCompositeKey = new StudentCompositeKey(courseId, userId, regId);
		Optional<PaymentDetails> paymentDate = paymentServices.findById(studentCompositeKey);
		model.addAttribute("findbyid", paymentDate);
		return "find-payment-by-id";
	}

}
