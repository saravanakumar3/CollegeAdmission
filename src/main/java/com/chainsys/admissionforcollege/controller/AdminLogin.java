package com.chainsys.admissionforcollege.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/admin")
public class AdminLogin {
		@GetMapping("/")
		public String home() {
			return "admin-login";
		}
}
