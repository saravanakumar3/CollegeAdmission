package com.chainsys.admissionforcollege.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;

public class StudentCompositeKey implements Serializable{
	@Id
	@Column(name ="Courseid")
	private int  courseId ;
	@Id
	@Column(name ="Userid")
	private int userId;
	@Id
	@Column(name ="Registrationnumber")
	private long registrationNumber;
	StudentCompositeKey(){}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public int getUserid() {
		return userId;
	}
	public void setUserid(int userid) {
		this.userId = userid;
	}
	public long getRegistrationNumber() {
		return registrationNumber;
	}
	public void setRegistrationNumber(long registrationNumber) {
		this.registrationNumber = registrationNumber;
	}
	public StudentCompositeKey(int courseId, int userid, long registrationNumber) {
		super();
		this.courseId = courseId;
		this.userId = userid;
		this.registrationNumber = registrationNumber;
	}
	
	
}
