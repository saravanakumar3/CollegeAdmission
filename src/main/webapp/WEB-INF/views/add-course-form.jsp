<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>
<style type="text/css">
<%@include file="/WEB-INF/css/add-course-form.css"%>
</style>
</head>
<body>
<nav>
		<div class="menu">
			<div class="logo">
				<a>Madurai Government Arts College</a>
			</div>
				<ul>
				<li><button class="button1"
        onclick="history.back()">Go Back</button></a></li>
			</ul>
		</div>
	</nav>
<br>
<h1>Add course</h1>
	<div id="root">
		<div id="form">
			<form:form action="/course/add" method="post"
				modelAttribute="addcoursedetail">
				<div>
					<label for="courseName">CourseName</label>
					<div>
						<form:input path="courseName"  class="form-control"
						placeholder="CourseName"
							title="CourseName can't be empty or must contain only alphabets" 
						pattern="^[a-zA-Z]+$" required="true" />
						<form:errors path="courseName" cssClass="text-success" />
					</div>
				</div>
				<div>
					<label for="timeScale">TimeScale</label>
					<div>
						<form:input path="TimeScale" class="form-control"
						placeholder="CourseName"
							title="Please enter a timescale between 1 and 9" 
						pattern="[1-9]{1}" required="true"  />
                    	<form:errors path="timeScale" cssClass="text-success" />
					</div>
				</div>
				<div>
					<label for="qualification">Qualification</label>
					<div>
						<form:input path="qualification" class="form-control"
						placeholder="Qualification"
							title="Qualification can't be empty" 
						 required="true" />
					 <form:errors path="qualification" cssClass="text-success" />
					</div>
				</div>
				<div>
					<label for="admisssionFee">AdmisssionFee</label>
					<div>
						<form:input path="admisssionFee" class="form-control"
							placeholder="Qualification"
							title="AdmisssionFee can't be empty or 10000 rupees is required for this field" 
						pattern="10000" required="true" />
							<form:errors path="admisssionFee" cssClass="text-success" />
					</div>
				</div>
				<div>
					<label for="tuitionFee">TuitionFee</label>
					<div>
						<form:input path="tuitionFee" class="form-control"
						placeholder="TuitionFee"
							title="TuitionFee can't be empty or 40000 rupees is required for this field" 
						pattern="40000" required="true" />
							<form:errors path="tuitionFee" cssClass="text-success" />
					</div>
				</div>
				<div>
					<label for="totalSeats">TotalSeats </label>
					<div>
						<form:input path="totalSeats" class="form-control" 
						placeholder="TotalSeats" 
							title="TotalSeats can't be empty" required="true" />
					</div>
				</div>
				<div class="alret">${message}</div>
				<br>    
				<br>
	<div>
       <form:button class="click-button">AddCourse</form:button>
	</div>
	</form:form>
	</div>
	</div>
	 <a href="/admin/adminpage"><h3>Go back home page</h3></a>
</body>
</html>