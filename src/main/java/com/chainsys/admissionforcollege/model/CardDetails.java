package com.chainsys.admissionforcollege.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="carddetails")
public class CardDetails {
	@Id
	@Column(name="registrationnumber")
	private long registrationNumber;
	@Column(name="amount")
   private long amount;
	@Column(name="paymentdate")
	private String paymentDate; 
	@Column(name="cardnumber")
	private long cardNumber ;
	@Column(name="cvvnumber")
	private long cvvNumber;
	@Column(name="cardholdername")
	private String cardholderName ;
	public long getRegistrationNumber() {
		return registrationNumber;
	}
	public void setRegistrationNumber(long registrationNumber) {
		this.registrationNumber = registrationNumber;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
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
		
}
