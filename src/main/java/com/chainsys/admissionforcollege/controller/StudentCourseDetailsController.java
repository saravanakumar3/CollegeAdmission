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
import com.chainsys.admissionforcollege.model.StudentCourseDetails;
import com.chainsys.admissionforcollege.model.Student;
import com.chainsys.admissionforcollege.service.StudentCourseDetailsService;
import com.chainsys.admissionforcollege.service.StudentService;

@Controller
@RequestMapping("/studentcourse")
public class StudentCourseDetailsController {
	 @Autowired
	    private StudentCourseDetailsService studentCourseDetailsService;

	    @GetMapping("/list")
	    public String getDetails(Model model) {
	        List<StudentCourseDetails> studentCourseDetails  = studentCourseDetailsService.getstudentCourseDetails();
	        model.addAttribute("allstudencourse", studentCourseDetails );
	        return "list-studentcoursedetails";
	    }
	    

	    @GetMapping("/getstudentcoursebyid")
	    public String getIdDetails(@RequestParam("id") int id, Model model) {
	    	StudentCourseDetails studentCourseDetails = studentCourseDetailsService.findByid(id);
	        model.addAttribute("getstudentCourseDetails", studentCourseDetails );
	        return "findby-studentcourseid";
	    }

	    @GetMapping("/deletestudentcourse")
	    public String deleteEmployeeDetails(@RequestParam("id") int id) {
	    	studentCourseDetailsService.deleteById(id);
	        return "redirect:/studentcourse/list";
	    }

	    @GetMapping("/addstudentcourse")
	    public String showAddForm(Model model) {
	    	StudentCourseDetails studentCourseDetails = new  StudentCourseDetails();
	        model.addAttribute("addstudentcoursedetail", studentCourseDetails);
	        return "add-studentcourse-form";
	    }

	    @PostMapping("/add")
	    public String addEmployeeDetails(@ModelAttribute("addstudentcoursedetail")  StudentCourseDetails studentCourseDetails) {
	    	studentCourseDetailsService.save(studentCourseDetails);
	        return "redirect:/studentcourse/list";
	    }

	    @GetMapping("/updatestudentcourse")
	    public String showUpdateForm(@RequestParam("id") int id, Model model) {
	    	StudentCourseDetails studentCourseDetails = studentCourseDetailsService.findByid(id);
	        model.addAttribute("updatedetails", studentCourseDetails);
	        return "update-studentcourse";
	    }

	    @PostMapping("/update")
	    public String updateDetails(@ModelAttribute("updatedetails")  StudentCourseDetails studentCourseDetails) {
	    	studentCourseDetailsService.save(studentCourseDetails);
	        return "redirect:/studentcourse/list";
	    }

}
