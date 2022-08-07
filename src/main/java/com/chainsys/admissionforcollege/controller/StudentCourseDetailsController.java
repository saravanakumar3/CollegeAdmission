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
import com.chainsys.admissionforcollege.service.StudentCourseDetailsService;
import com.chainsys.admissionforcolllege.compositekey.StudentCompositeKey;

@Controller
@RequestMapping("/studentcourse")
public class StudentCourseDetailsController {
	 @Autowired
	    private StudentCourseDetailsService studentCourseDetailsService;

	    @GetMapping("/list")
	    	public String getFindAllStudentCourseDetails(Model model) {
	    		List<StudentCourseDetails> list = studentCourseDetailsService.getStudententCourse();
	    		model.addAttribute("alladdstudentCourseDetails", list);
	    		return "list-studentcoursedetails";
	    	}
	    	@GetMapping("/addform")
	    	public String showAddStudentCourseDetailse(Model model) {
	    		StudentCourseDetails studentCourseDetails = new StudentCourseDetails();
	    		model.addAttribute("addstudentCourse", studentCourseDetails);
	    		return "add-studentcourse-form";
	    	}

	    	@PostMapping("/addstudentcoursedetails")
	    	public String addNewStudentCourseDetails(@ModelAttribute("addstudentCourse") StudentCourseDetails studentCourseDetails) {
	    		studentCourseDetailsService.save(studentCourseDetails);
	    		return "redirect:/studentcourse/list";
	    	}
	    	
	    	@GetMapping("/updateform")
	    	public String showUpdatestudentcoursedetails(@RequestParam("id") int id,@RequestParam("cid")int cid, Model model) {
	    		StudentCompositeKey studentCompositeKey=new StudentCompositeKey(id, cid);
	    		Optional<StudentCourseDetails> studentCourseDetails = studentCourseDetailsService.findById(studentCompositeKey);
	    		model.addAttribute("updatestudentcoursedetails", studentCourseDetails);
	    		return "update-studentcourse-form";
	    	}

	    	@PostMapping("/updatestudentCompositeKey")
	    	public String UpdateStudentCompositeKey(@ModelAttribute("updatestudentcoursedetails") StudentCourseDetails studentCourseDetails) {
	    		studentCourseDetailsService.save(studentCourseDetails);
	    		return "redirect:/studentcourse/list";
	    	}

	    	@GetMapping("/deletestudentcoursedetails")
	    	public String deleteStudentCourseDetails(@RequestParam("id") int id,@RequestParam("cid")int cid) {
	    		StudentCompositeKey studentCompositeKey=new StudentCompositeKey(id, cid);
	    		studentCourseDetailsService.deleteById(studentCompositeKey);
	    		return "redirect:/studentcourse/list";
	    	}
	    	@GetMapping("/getbyidstudentcourse")
	    	public String getStudentCourseDetails(@RequestParam("id") int id,@RequestParam("id")int cid, Model model) {
	    		StudentCompositeKey studentCompositeKey=new StudentCompositeKey(id, cid);
	    		Optional<StudentCourseDetails> studentCourseDetails = studentCourseDetailsService.findById(studentCompositeKey);
	    		model.addAttribute("findbyid", studentCourseDetails);
	    		return "findby-studentcourseid";
	    	}
}
