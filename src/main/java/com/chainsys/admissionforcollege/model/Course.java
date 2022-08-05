package com.chainsys.admissionforcollege.model;


import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Table;


@Entity
@Table(name = "course")
public class Course {
	@Id
	@Column(name = "courseid")
	private int courseId;
	@Column(name = "coursename")
	private String courseName;
	@Column(name = "timescale")
	private int timeScale;
	@Column(name = "qualification")
	private String qualification;
	@Column(name = "admisssionfee")
	private int admisssionFee;
	@Column(name = "tuitionfee")
	private int tuitionFee;
	@Column(name = "totalseats")
	private int totalSeats;
	
//	 @JoinTable(
//		        name = "studentcoursedetails",
//		        joinColumns = {
//		            @JoinColumn(name = "CourseId")
//		        },
//		        inverseJoinColumns = {
//		            @JoinColumn(name = "UserId")
//		        })
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