package com.chainsys.admissionforcollege.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "student")
public class Student {

	@Id
	@Column(name = "userid")
	private int id;
	@Column(name = "name")
	private String username;
	@Column(name = "qualification")
	private String qualification;
	@Column(name = "sslcmark")
	private float sslcMark;
	@Column(name = "hscmark")
	private float hscMark;
	@Column(name = "gender")
	private String gender;
	@Column(name = "address")
	private String address;
	@Column(name = "User_location")
	private String userlocation;
	@Column(name = "Nationally")
	private String nation;
	@Column(name = "phonenumber")
	private long phoneNumber;
	@Column(name = "email")
	private String email;
	@Column(name = "userpassword")
	private String userPassword;

	@OneToOne(mappedBy = "student", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

}