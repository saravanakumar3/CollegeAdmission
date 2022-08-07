package com.chainsys.admissionforcollege.model;

import java.sql.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

import com.chainsys.admissionforcolllege.compositekey.StudentCompositeKey;

@Entity
@Table(name = "student")
public class Student {
	@Id
	@Column(name = "userid")
	private int userid;
	@Size(min =3,max =50,message =" Username Size not less then 2")
	@NotBlank( message ="Username can not be Empty")
	@Column(name = "name")
	private String username;
	@Column(name = "dob")
	private Date dob;
	@NotBlank( message ="This field can not be Empty")
	@Column(name = "qualification")
	private String qualification;
	@Range(min=350,max=500,message="To register, you must have an SSCmark of at least 350")
	@Column(name = "sslcmark")
	private float sslcMark;
	@Range(min=750,max=1200,message="To register, you must have an HSCmark of at least 750")
	@Column(name = "hscmark")
	private float hscMark;
	@NotBlank( message ="This field can not be Empty")
	@Column(name = "gender")
	private String gender;
	@NotBlank( message ="This field can not be Empty")
	@Column(name = "address")
	private String address;
	@NotBlank( message ="This field can not be Empty")
	@Column(name = "User_location")
	private String userlocation;
	@NotBlank( message ="This field can not be Empty")
	@Column(name = "Nationally")
	private String nation;
	@Column(name = "phonenumber")
	private long phoneNumber;
	@Email(message="Please enter a volid email !!")
	@Column(name = "email")
	private String email;
	@Pattern(regexp="^[a-zA-Z)-9]{5}",message =" The password can contain only characters and digits")
	@Column(name = "userpassword")
	private String userPassword;
   
   @OneToMany(mappedBy="student",fetch=FetchType.LAZY)
	private List<StudentCourseDetails> studentCourseDetails;
   
	public List<StudentCourseDetails> getStudentCourseDetails() {
	return studentCourseDetails;
}

public void setStudentCourseDetails(List<StudentCourseDetails> studentCourseDetails) {
	this.studentCourseDetails = studentCourseDetails;
}
	public int getUserid() {
	return userid;
}

public void setUserid(int userid) {
	this.userid = userid;
}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public float getSslcMark() {
		return sslcMark;
	}

	public void setSslcMark(float sslcMark) {
		this.sslcMark = sslcMark;
	}

	public float getHscMark() {
		return hscMark;
	}

	public void setHscMark(float hscMark) {
		this.hscMark = hscMark;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUserlocation() {
		return userlocation;
	}

	public void setUserlocation(String userlocation) {
		this.userlocation = userlocation;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}
}