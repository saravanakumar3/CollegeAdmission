package com.chainsys.admissionforcolllege.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.admissionforcollege.model.CardDetails;
import com.chainsys.admissionforcollege.model.Student;
import com.chainsys.admissionforcollege.model.StudentCourseDetails;

public class StudentPaymentDto {
	private Student student;
	private List<StudentCourseDetails> studentCourseDetails=new ArrayList<StudentCourseDetails>();
	private List<CardDetails> cardDetails = new ArrayList<CardDetails>();
	
	public List<CardDetails> getCardDetails() {
		return cardDetails;
	}
	public void addCardDetails(CardDetails cardDetailsinfo) {
		cardDetails.add(cardDetailsinfo);
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
}
