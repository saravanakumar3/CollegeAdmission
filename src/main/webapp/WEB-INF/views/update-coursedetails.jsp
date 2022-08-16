<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>UpdateCourseDetails</title>
<style>
body {
	background-image:
url("https://www.betterup.com/hubfs/Imported_Blog_Media/behavior%20change%20blog%20image.png");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
 font-family: Arial, Helvetica, sans-serif;
}
.form-control {
	width:550px;
	height: 25px;
	height: 240px
	border: none;
	border-radius: 5px;
	padding-left: 8px;
}
.click-button{
	width:550px;
	height: 25px;
	height: 240px
	border: none;
	border-radius: 3px;
	padding-left: 8px;
	background-color: #9E9B45 ;
}
h4,a{
color:#91EEE4;
}
.form-control {
	width:550px;
	height: 25px;
	height: 240px
	border: none;
	border-radius: 5px;
	padding-left: 8px;
	color:#91EEE4;
}
label{
color:#ECC4F3;
font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}
</style>
</head>
<body>
<br>
<br>
<br>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatecourse">
					<div>
						<form:input path="courseId"
						type="hidden" />
						<form:errors path="courseId" cssClass="text-success" />
					</div><br>
		<div>
					<label for="courseName">CourseName</label>
					<div>
						<form:input path="courseName"  class="form-control"
						placeholder="CourseName"
							title="CourseName can't be empty or must contain only alphabets" 
						pattern="^[a-zA-Z]+$" required="true" />
						<form:errors path="courseName" cssClass="text-success" />
					</div>
				</div><br>
				<div>
					<label for="timeScale">TimeScale</label>
					<div>
						<form:input path="TimeScale" class="form-control "
						placeholder="CourseName"
							title="Please enter a timescale between 1 and 9" 
						pattern="[1-9]{1}" required="true"  />
                    	<form:errors path="timeScale" cssClass="text-success" />
					</div>
				</div><br>
				<div>
					<label for="qualification">Qualification</label>
					<div>
						<form:input path="qualification" class="form-control "
						placeholder="Qualification"
							title="Qualification can't be empty" 
						 required="true" />
					 <form:errors path="qualification" cssClass="text-success" />
					</div>
				</div><br>
				<div>
					<label for="admisssionFee">AdmisssionFee</label>
					<div>
						<form:input path="admisssionFee" class="form-control"
							placeholder="Qualification"
							title="AdmisssionFee can't be empty or 10000 rupees is required for this field" 
						pattern="10000" required="true" />
							<form:errors path="admisssionFee" cssClass="text-success" />
					</div>
				</div><br>
				<div>
					<label for="tuitionFee">TuitionFee</label>
					<div>
						<form:input path="tuitionFee" class="form-control"
						placeholder="TuitionFee"
							title="TuitionFee can't be empty or 40000 rupees is required for this field" 
						pattern="50000" required="true" />
							<form:errors path="tuitionFee" cssClass="text-success" />
					</div>
				</div>
				<br>
				<div>
					<label for="totalSeats">TotalSeats </label>
					<div>
						<form:input path="totalSeats" class="form-control" 
						placeholder="TotalSeats"
							title="TotalSeats can't be empty"/>
							<form:errors path="totalSeats" cssClass="text-success" />
					</div>
				</div>
				<div>${message}</div>
				<br>    
				<br>
	            <div>
					<form:button class="click-button">Click Update</form:button>
				</div>
			</form:form>
			<h4><a href="/admin/adminpage">Go to home page</a></h4>
		</div>
	</div>
</body>
</html>