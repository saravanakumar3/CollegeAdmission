package com.chainsys.admissionforcollege.model;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Range;
@Entity
@Table(name="carddetails")
public class CardDetails {
	@Id
	@Column(name="payment_id")
	private int paymentId;
	@NotBlank( message ="This field can not be Empty")
	@Column(name="course")
	private String courseName;
	@Size(min =3,max =50,message =" Username Size not less then 2")
	@NotBlank( message ="This field can not be Empty")
	@Column(name="name")
	private String name;
	@Column(name ="phone")
	private long phoneNumber;
	@Column(name="amount")
    private long amount;
	@Column(name="payment_date")
	private Date paymentDate; 
	@Column(name="card_number")
	private long cardNumber ;
	@Range(min=100,max=999,message="Please enter a valid three-digit number")
	@Column(name="cvv_number")
	private long cvvNumber;
	@Size(min =3,max =50,message =" Username Size not less then 2")
	@NotBlank( message ="cardholder name can not be Empty")
	@Column(name="cardholder_name")
	private String cardholderName ;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="payment_id",nullable=false, insertable=false, updatable=false)
	private CardDetails cardDetails;
	public CardDetails getCardDetails() {
		return cardDetails;
	}
	public void setCardDetails(CardDetails cardDetails) {
		this.cardDetails = cardDetails;
	}
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
	public int getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}
	
}