package com.chainsys.admissionforcollege.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Range;
import com.chainsys.admissionforcolllege.compositekey.StudentCompositeKey;
@Entity
@Table(name = "studentcoursedetails")
@IdClass(StudentCompositeKey.class)
public class StudentCourseDetails {
	@Id
	@Range(min=1,message="Value should be greater than 0")
	@Column(name ="Courseid")
	private int  courseId ;
	@Id
	@Range(min=1,message="Value should be greater than 0")
	@Column(name ="userid")
	private int userid;
	@Column(name ="registrationnumber")
	private int registrationNumber;
	@Size(min =3,max =50,message =" Username Size not less then 2")
	@NotBlank( message ="This field can not be Empty")
	@Column(name ="paymentstatus")
     private String paymentstatus ;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="userid",nullable=false, insertable=false, updatable=false)
	private Student student;
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="Courseid",nullable=false, insertable=false, updatable=false)
	private Course course;
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
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

}