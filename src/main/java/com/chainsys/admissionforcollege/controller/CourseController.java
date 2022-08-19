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
@Controller
@RequestMapping("/course")
public class CourseController {
	    @Autowired
	    private CourseService courseService;
	    private static final String ADDFORM="add-course-form";
	    @GetMapping("/courselist")
	    public String getDetailsByAdmin(Model model) {
	        List<Course> course = courseService.getCourseByAdmin();
	        model.addAttribute("allCourses", course );
	        return "list-course-by-admin";
	    }
	    @GetMapping("/getcoursebyid")
	    public String getIdDetails(@RequestParam("id") int id, Model model) {
	        Course course = courseService.findByid(id);
	        model.addAttribute("getCourseById", course );
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
	        return ADDFORM;
	    }
	    @PostMapping("/add")
	    public String addCourseDetails(@Valid@ModelAttribute("addcoursedetail")  Course course,Model model,
	    		BindingResult bindingResult) {
	    	
	    	if (bindingResult.hasErrors()) {
	    		return ADDFORM;
	    		}
	    	else {
	    	    try{courseService.save(course);
		        return "redirect:/course/courselist"; }
		        	catch(Exception er)
		    		{model.addAttribute("message", "this Course is already exist");
		    		return ADDFORM;	
	    	    }
	    	}
	    }
	    @GetMapping("/updatedetails")
		public String showUpdateForm(@RequestParam("id") int id, Model model) {
			Course course = courseService.findByid(id);
			model.addAttribute("updatecourse", course);
			return "update-coursedetails";
		}
		@PostMapping("/update")
		public String updateCourse(@ModelAttribute("updatecourse") Course course) {
	
			courseService.save(course);
			return "redirect:/course/courselist";
		}
		
		@GetMapping("/getidbycourse")
		public String getStudent(@RequestParam("cid") int cid,Model model) {
			CourseDto dto=courseService.getCourseDto(cid);
			model.addAttribute("getcourse",dto.getCourse());
			model.addAttribute("studentcourselist",dto.getStudentCourseDetails());
			return "find-course-by-id";
		}

}
