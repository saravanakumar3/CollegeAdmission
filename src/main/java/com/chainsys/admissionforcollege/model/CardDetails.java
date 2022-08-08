package com.chainsys.admissionforcollege.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Range;
@Entity
@Table(name="carddetails")
public class CardDetails {
	@Id
	@Column(name="paymentid")
	private int paymentid;
	@NotBlank( message ="This field can not be Empty")
	@Column(name="course")
	private String courseName;
	@Size(min =3,max =50,message =" Username Size not less then 2")
	@NotBlank( message ="This field can not be Empty")
	@Column(name="name")
	@NotBlank( message ="This field can not be Empty")
	private String name;
	@Column(name ="phone")
	private long phoneNumber;
	@Range(min=50000,message="Please pay only 50000 rupees only")
	@Column(name="amount")
    private long amount;
	@Column(name="paymentdate")
	private Date paymentDate; 
	@Column(name="cardnumber")
	private long cardNumber ;
	@Range(min=100,max=999,message="Please enter a valid three-digit number")
	@Column(name="cvvnumber")
	private long cvvNumber;
	@NotBlank( message ="cardholder name can not be Empty")
	@Column(name="cardholdername")
	private String cardholderName ;
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	public Date getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}
	public long getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(long cardNumber) {
		this.cardNumber = cardNumber;
	}
	public long getCvvNumber() {
		return cvvNumber;
	}
	public void setCvvNumber(long cvvNumber) {
		this.cvvNumber = cvvNumber;
	}
	public String getCardholderName() {
		return cardholderName;
	}
	public void setCardholderName(String cardholderName) {
		this.cardholderName = cardholderName;
	}
	public int getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(int paymentid) {
		this.paymentid = paymentid;
	}
}