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

import com.chainsys.admissionforcollege.model.Admin;
import com.chainsys.admissionforcollege.model.Student;
import com.chainsys.admissionforcollege.service.AdminService;
import com.chainsys.admissionforcollege.service.StudentService;
@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private StudentService studentService;
		@GetMapping("/login")
		public String loginAccessform(Model model) {
			Admin theAdm = new Admin();
			model.addAttribute("admin", theAdm);
			return "admin-login-form";
		}
		@PostMapping("/checkadminlogin")
		public String checkingAccess(@ModelAttribute("admin") Admin theAdm) {
			Admin admin = adminService.getAdminDetailsByNameAndPassword(theAdm.getAdminEmail(),
					theAdm.getPassword());
			if (admin != null) {

				return "admin-page";
			} else
				return "invalid-adminlogin-error";

		}
		@GetMapping("/adminpage")
		public String adminpage(Model model) {
			Admin theAdm = new Admin();
			model.addAttribute("admin", theAdm);
			return "admin-page";
		}
		@GetMapping("/addstudents")
		public String showAddForm(Model model) {
			Student student = new Student();
			model.addAttribute("addstudentdetail", student);
			return "add-students-byadmin";
		}

		@PostMapping("/enterdetails")
		public String addStudentDetails(@Valid @ModelAttribute("addstudentdetail") Student student, Model model,
				BindingResult bindingResult) {
	    	if (bindingResult.hasErrors()){
	    		return "add-students-byadmin";
	    		}
	    	else {
	    		try {
	    		studentService.save(student);
	        return "redirect:/details/carddetails";}
	    		catch(Exception er)
	    		{model.addAttribute("message", "this email is already exist");
	    		return "add-students-byadmin";
	    }
		}
	}
}
