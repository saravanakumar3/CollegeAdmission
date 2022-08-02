package com.chainsys.admissionforcollege.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.admissionforcollege.model.Course;
import com.chainsys.admissionforcollege.service.CourseService;
@Controller
@RequestMapping("/course")
public class CourseController {
	    @Autowired
	    private CourseService courseService;

	    @GetMapping("/list")
	    public String getDetails(Model model) {
	    	 System.out.println("listCourse");
	        List<Course> course = courseService.getCourse();
	        System.out.println("listCourse");
	        model.addAttribute("allCourse", course );
	        return "list-course";
	    }
	    

	    @GetMapping("/getcoursebyid")
	    public String getIdDetails(@RequestParam("id") int id, Model model) {
	    	Course course = courseService.findByid(id);
	        model.addAttribute("getcourses", course );
	        return "findby-course";
	    }

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

	    @PostMapping("/add")
	    public String addEmployeeDetails(@ModelAttribute("addcoursedetail")  Course course) {
	    	courseService.save(course);
	        return "redirect:/course/list";
	    }
	    @GetMapping("/updatedetails")
		public String showUpdateForm(@RequestParam("id") int id, Model model) {
			Course course = courseService.findByid(id);
			model.addAttribute("updatecourse", course);
			return "update-coursedetails";
		}

		@PostMapping("/update")
		public String updatecourse(@ModelAttribute("updatecourse") Course course) {
			courseService.save(course);
			return "redirect:/course/list";
		}
}
