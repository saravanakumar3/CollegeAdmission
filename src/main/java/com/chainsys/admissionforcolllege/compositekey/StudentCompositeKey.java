package com.chainsys.admissionforcolllege.compositekey;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;

public class StudentCompositeKey implements Serializable{
	@Id
	@Column(name ="Courseid")
	private int  courseId ;
	@Id
	@Column(name ="Userid")
	private int userid;

	StudentCompositeKey(){}

	public StudentCompositeKey(int courseId, int userid) {
		super();
		this.courseId = courseId;
		this.userid = userid;
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
}

