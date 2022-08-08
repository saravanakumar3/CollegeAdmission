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

import com.chainsys.admissionforcollege.model.Course;
import com.chainsys.admissionforcollege.service.CourseService;
import com.chainsys.admissionforcolllege.dto.CourseDto;
import com.chainsys.admissionforcolllege.dto.StudentCourseDto;
@Controller
@RequestMapping("/course")
public class CourseController {
	    @Autowired
	    private CourseService courseService;

	    @GetMapping("/list")
	    public String getDetails(Model model) {
	        List<Course> course = courseService.getCourse();
	        model.addAttribute("allCourse", course );
	        return "list-course";
	    }
//	    @GetMapping("/getcoursebyid")
//	    public String getIdDetails(@RequestParam("id") int id, Model model) {
//	    	Course course = courseService.findByid(id);
//	        model.addAttribute("getcourses", course );
//	        return "findby-course";
//	    }

    @GetMapping("/deletecourse")
	    public String deleteCourseDetails(@RequestParam("id") int id) {
	    	courseService.deleteById(id);
	        return "redirect:/course/list";
	    }

	    @GetMapping("/addcourse")
	    public String showAddForm(Model model) {
	    	Course course = new  Course();
	        model.addAttribute("addcoursedetail", course);
	        return "add-course-form";
	    }

		/*
		 * @PostMapping("/add") public String
		 * addCourseDetails(@ModelAttribute("addcoursedetail") Course course) {
		 * courseService.save(course); return "redirect:/course/list"; }
		 */
	    
	    @PostMapping("/add")
	    public String addCourseDetails(@Valid@ModelAttribute("addcoursedetail")  Course course,
	    		BindingResult bindingResult) {
	    	
	    	if (bindingResult.hasErrors()) {
	    		return "add-course-form";
	    		}
	    	else {
	    	courseService.save(course);
	        return "redirect:/course/list";
	    }}
	    @GetMapping("/updatedetails")
		public String showUpdateForm(@RequestParam("id") int id, Model model) {
			Course course = courseService.findByid(id);
			model.addAttribute("updatecourse", course);
			return "update-coursedetails";
		}
		@PostMapping("/update")
		public String updateCourse(@ModelAttribute("updatecourse") Course course) {
			courseService.save(course);
			return "redirect:/course/list";
		}
		@GetMapping("/getidbycourse")
		public String getStudent(@RequestParam("cid") int cid,Model model) {
			CourseDto dto=courseService.getCourseDto(cid);
			model.addAttribute("getcourse",dto.getCourse());
			model.addAttribute("studentcourselist",dto.getStudentCourseDetails());
			return "find-course-by-id";
		}

}
