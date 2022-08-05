package com.chainsys.admissionforcolllege.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.admissionforcollege.model.Student;
import com.chainsys.admissionforcollege.model.StudentCourseDetails;

public class StudentCourseDto {
	private Student student;
	private List<StudentCourseDetails> studentCourseDetails=new ArrayList<StudentCourseDetails>();
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public List<StudentCourseDetails> getStudentCourseDetails() {
		return studentCourseDetails;
	}
	public void addStudentCourseDetails(StudentCourseDetails studentCourseDetail) {
		studentCourseDetails.add(studentCourseDetail);
	}
	
	
}
