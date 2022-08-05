package com.chainsys.admissionforcollege.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.chainsys.admissionforcolllege.compositekey.StudentCompositeKey;

@Entity
@Table(name = "studentcoursedetails")
@IdClass(StudentCompositeKey.class)
public class StudentCourseDetails {
	@Id
	@Column(name ="Courseid")
	private int  courseId ;
	@Id
	@Column(name ="UserId")
	private int userid;
	@Column(name ="Registrationnumber")
	private int registrationNumber;
	@Column(name ="paymentstatus")
     private String paymentstatus ;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="Userid",nullable=false, insertable=false, updatable=false)
	private Student student;
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public int getuserid() {
		return userid;
	}
	public void setuserid(int userid) {
		this.userid = userid;
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
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
		
	
}