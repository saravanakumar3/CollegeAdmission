package com.chainsys.admissionforcollege.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "studentcoursedetails")

public class StudentCourseDetails {
	@Id
	@Column(name ="Registrationnumber")
	private int registrationNumber;
//	@Id
	@Column(name ="Courseid")
	private int  courseId ;
//	@Id
	@Column(name ="Userid")
	private int userId;
	
	@Column(name ="paymentstatus")
     private String paymentstatus ;
	
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getRegistrationNumber() {
		return registrationNumber;
	}
	public void setRegistrationNumber(int registrationNumber) {
		this.registrationNumber = registrationNumber;
	}
	public String getPaymentstatus() {
		return paymentstatus;
	}
	public void setPaymentstatus(String paymentstatus) {
		this.paymentstatus = paymentstatus;
	}


	
	
}