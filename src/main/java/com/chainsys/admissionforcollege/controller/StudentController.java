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

import com.chainsys.admissionforcollege.model.Student;
import com.chainsys.admissionforcollege.service.StudentService;

@Controller
@RequestMapping("/students")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/list")
    public String getDetails(Model model) {
        List<Student> student  = studentService.getStudent();
        model.addAttribute("allstudent", student );
        return "list-students";
    }
    

    @GetMapping("/getstudentbyid")
    public String getIdDetails(@RequestParam("id") int id, Model model) {
        Student student = studentService.findByid(id);
        model.addAttribute("getstudent", student );
        return "findby-studentid";
    }

    @GetMapping("/deletestudent")
    public String deleteEmployeeDetails(@RequestParam("id") int id) {
    	studentService.deleteById(id);
        return "redirect:/students/list";
    }

    @GetMapping("/addstudents")
    public String showAddForm(Model model) {
    	 Student student = new  Student();
        model.addAttribute("addstudentdetail", student);
        return "add-student-form";
    }

    @PostMapping("/add")
    public String addEmployeeDetails(@ModelAttribute("addstudentdetail")  Student student) {
    	studentService.save(student);
        return "redirect:/students/list";
    }

    @GetMapping("/updatestudentdetails")
    public String showUpdateForm(@RequestParam("id") int id, Model model) {
    	 Student student = studentService.findByid(id);
        model.addAttribute("updatedetails", student);
        return "update-studentdetails";
    }

    @PostMapping("/update")
    public String updateDetails(@ModelAttribute("updatedetails")  Student student) {
    	studentService.save(student);
        return "redirect:/students/list";
    }

}
