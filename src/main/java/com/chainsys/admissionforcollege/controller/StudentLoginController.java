package com.chainsys.admissionforcollege.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.chainsys.admissionforcollege.model.Student;
import com.chainsys.admissionforcollege.service.StudentLoginService;

public class StudentLoginController {
@Autowired
 private StudentLoginService studentLoginService;
	@GetMapping("/login")
    public String studentAccessform(Model model) {
		Student thestudent = new Student();
        model.addAttribute("student", thestudent);
        return "login-user-form";
    }

//   @PostMapping("/checkstudentlogin")
//   public String checkingAccess(@ModelAttribute("student") Student thestudent) {
//        Student student = studentLoginService.getStudentDetailsByEmailAndPassword(thestudent.getEmail(),
//        		thestudent.getUserPassword());
//        if (student != null) {
//
//      return "index";
//        } else
//            return "invalid-adminlogin-error";
//    }
}
