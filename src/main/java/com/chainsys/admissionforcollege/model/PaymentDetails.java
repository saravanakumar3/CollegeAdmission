package com.chainsys.admissionforcollege.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "paymentsdetails")
@IdClass(StudentCompositeKey.class)
public class PaymentDetails {
	@Id
	@Column(name ="CourseId")
	private int  courseId ;
	@Id
	@Column(name ="Userid")
	private int userId;
	@Id
	@Column(name ="Registrationnumber")
	private long registrationNumber;
	@Column(name ="paymentstatus")
	private int paymentstatus ;
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
	public long getRegistrationNumber() {
		return registrationNumber;
	}
	public void setRegistrationNumber(long registrationNumber) {
		this.registrationNumber = registrationNumber;
	}
	public int getPaymentstatus() {
		return paymentstatus;
	}
	public void setPaymentstatus(int paymentstatus) {
		this.paymentstatus = paymentstatus;
	}
	
//	 @OneToOne(fetch = FetchType.LAZY, optional = false)
//	    @JoinColumn(name = "Course_id", nullable = false)
	
	
}