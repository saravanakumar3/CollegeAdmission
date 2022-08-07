package com.chainsys.admissionforcolllege.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.admissionforcollege.model.Course;
import com.chainsys.admissionforcollege.model.StudentCourseDetails;

public class CourseDto {
	private Course course;
	private List<StudentCourseDetails> studentCourseDetails=new ArrayList<StudentCourseDetails>();
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public List<StudentCourseDetails> getStudentCourseDetails() {
		return studentCourseDetails;
	}
	public void addCourseDetails(StudentCourseDetails studentCourseDetail) {
		studentCourseDetails.add(studentCourseDetail);
	}
    

}
