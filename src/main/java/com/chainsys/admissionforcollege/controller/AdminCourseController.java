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
	import com.chainsys.admissionforcolllege.dto.CourseDto;
	@Controller
	@RequestMapping("/admincourse")
	public class AdminCourseController {
		    @Autowired
		    private CourseService courseService;
		    private static final String COURSELIST="redirect:/course/list";
		    @GetMapping("/list")
		    public String getDetails(Model model) {
		        List<Course> course = courseService.getCourseByAdmin();
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
		        return COURSELIST;
		    }
		    @GetMapping("/addcourse")
		    public String showAddForm(Model model) {
		    	Course course = new  Course();
		        model.addAttribute("addcoursedetail", course);
		        return "add-course-form";
		    }
		    @PostMapping("/add")
		    public String addCourseDetails(@ModelAttribute("addcoursedetail")  Course course) {
		    	courseService.save(course);
		        return COURSELIST;
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
				return COURSELIST;
			}
			@GetMapping("/getidbycourse")
			public String getStudent(@RequestParam("id") int id,Model model) {
				CourseDto dto=courseService.getCourseDto(id);
				model.addAttribute("getcourse",dto.getCourse());
				model.addAttribute("studentcourselist",dto.getStudentCourseDetails());
				return "find-course-by-id";
			}
	}
