package com.chainsys.admissionforcollege.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name=" admin")
public class Admin {
	@Id
	@Column(name="adminId")
	private int Id; 
	@Column(name="adminName")
	private String AdminName ;
	@Column(name="adminPhoneNo")
	private int AdminPhoneNo ;
	@Column(name="adminEmail")
	private String AdminEmail;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getAdminName() {
		return AdminName;
	}
	public void setAdminName(String adminName) {
		AdminName = adminName;
	}
	public int getAdminPhoneNo() {
		return AdminPhoneNo;
	}
	public void setAdminPhoneNo(int adminPhoneNo) {
		AdminPhoneNo = adminPhoneNo;
	}
	public String getAdminEmail() {
		return AdminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		AdminEmail = adminEmail;
	}
	
}
