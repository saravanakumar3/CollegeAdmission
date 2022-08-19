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
import com.chainsys.admissionforcollege.model.Student;
import com.chainsys.admissionforcollege.service.StudentService;
import com.chainsys.admissionforcolllege.dto.StudentCourseDto;
import com.chainsys.admissionforcolllege.dto.StudentPaymentDto;
@Controller
@RequestMapping("/students")
public class StudentController {
	@Autowired
	private StudentService studentService;
	private static final String ADDFORM="add-students-form";
	@GetMapping("/list")
	public String getDetails(Model model) {
		List<Student> student = studentService.getStudent();
		model.addAttribute("allstudent", student);
		return "list-students";
	}
	@GetMapping("/getstudentbyid")
	public String getIdDetails(@RequestParam("id") int id, Model model) {
		Student student = studentService.findByid(id);
		model.addAttribute("getstudent", student);
		return "findby-studentid";
	}
	@GetMapping("/deletestudent")
	public String deleteEmployeeDetails(@RequestParam("id") int id) {
		studentService.deleteById(id);
		return "redirect:/students/list";
	}
	@GetMapping("/addstudents")
	public String showAddForm(Model model) {
		Student student = new Student();
		model.addAttribute("addstudentdetail", student);
		return ADDFORM;
	}
	@PostMapping("/enterdetails")
	public String addStudentDetails(@Valid @ModelAttribute("addstudentdetail") Student student, Model model,
			BindingResult bindingResult) {
    	if (bindingResult.hasErrors()){
    		return ADDFORM;
    		}
    	else {
    		try {
    		studentService.save(student);
    		int id = student.getUserid();
    		 return "redirect:/details/card?id=" + id;
        }
    		catch(Exception er)
    		{model.addAttribute("message", "this email is already exist");
    		return ADDFORM;
    }
	}
}
	@GetMapping("/updatestudentdetails")
	public String showUpdateForm(@RequestParam("id") int id, Model model) {
		Student student = studentService.findByid(id);
		model.addAttribute("updatedetails", student);
		return "update-studentdetails";
	}

	@PostMapping("/update")
	public String updateDetails(@Valid @ModelAttribute("updatedetails") Student student,Model model, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "update-studentdetails";
		} else {
			try {
			studentService.save(student);
			return "redirect:/students/list";}
			catch(Exception er)
    		{model.addAttribute("message", "this email is already exist");
    		return ADDFORM;
    }
		}
	}
	@GetMapping("/getidbystudent")
	public String getStudent(@RequestParam("id") int id, Model model) {
		StudentCourseDto dto = studentService.getStudentCourseDto(id);
		model.addAttribute("getstudent", dto.getStudent());
		model.addAttribute("studentcourselist", dto.getStudentCourseDetails());
		return "find-student-by-id";
	}
	@GetMapping("/getidbypayment")
	public String getStudentPayment(@RequestParam("id") int id, Model model) {
		StudentPaymentDto studentPaymentDto = studentService.getStudentpaymentDto(id);
		model.addAttribute("getstudentdata", studentPaymentDto.getStudent());
		model.addAttribute("studentpaymentlist", studentPaymentDto.getCardDetails());
		return "find-studentpaymet-list";
	}
}