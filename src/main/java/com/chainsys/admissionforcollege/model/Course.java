package com.chainsys.admissionforcollege.model;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;
@Entity
@Table(name = "course")
public class Course {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "course_id")
    @SequenceGenerator(name = "course_id", sequenceName = "course_id",  allocationSize = 1)
	@Column(name = "course_id")
	private int courseId;
	@Size(min =3,max =50,message =" Username Size not less then 2")
	@NotBlank( message ="Username can not be Empty")
	@Column(name = "course_name")
	private String courseName;
	@Range(min=1,max=9,message="Please enter a timescale between 1 and 9 ")
	@Column(name = "time_scale")
	private int timeScale;
	@Size(min =2,max =50,message ="qualification Size not less than 2.")
	@NotBlank( message ="Username can not be Empty")
	@Column(name = "qualification")
	private String qualification;
	@Range(min=10000,message="10000 rupees is required for this field")
	@Column(name = "admisssion_fee")
	private int admisssionFee;
	@Range(min=40000,message="40000 rupees is required for this field")
	@Column(name = "tuition_fee")
	private int tuitionFee;
	@Range(min=10,max =50,message="Please enter a number from 10 to 50. ")
	@Column(name = "total_seats")
	private int totalSeats;
	  @OneToMany(mappedBy="course",fetch=FetchType.LAZY)
		private List<StudentCourseDetails> studentCourseDetails;
	
	public List<StudentCourseDetails> getStudentCourseDetails() {
		return studentCourseDetails;
	}
	public void setStudentCourseDetails(List<StudentCourseDetails> studentCourseDetails) {
		this.studentCourseDetails = studentCourseDetails;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public int getTimeScale() {
		return timeScale;
	}
	public void setTimeScale(int timeScale) {
		this.timeScale = timeScale;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public int getAdmisssionFee() {
		return admisssionFee;
	}
	public void setAdmisssionFee(int admisssionFee) {
		this.admisssionFee = admisssionFee;
	}
	public int getTuitionFee() {
		return tuitionFee;
	}
	public void setTuitionFee(int tuitionFee) {
		this.tuitionFee = tuitionFee;
	}
	public int getTotalSeats() {
		return totalSeats;
	}
	public void setTotalSeats(int totalSeats) {
		this.totalSeats = totalSeats;
	}
}