package com.chainsys.admissionforcollege.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name=" admin")
public class Admin {
	@Id
	@Column(name="adminid")
	private int id; 
	@Column(name="adminname")
	private String adminName ;
	@Column(name="phoneno")
	private long adminPhoneNo ;
	@Column(name="adminemail")
	private String adminEmail;
	@Column(name="password")
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public long getAdminPhoneNo() {
		return adminPhoneNo;
	}
	public void setAdminPhoneNo(long adminPhoneNo) {
		this.adminPhoneNo = adminPhoneNo;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
