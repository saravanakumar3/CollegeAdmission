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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body  style="background-color: #EAE7E8 ">

<h1>Madurai Government Arts College</h1>
<ul class="nav nav-tabs nav-dark"style="background-color: #1E1C1C ;">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/students/addstudents">Add students</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/students/list"> Students list</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/admincourse/addcourse">Add course</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="/admincourse/list">Course Details</a>
  </li>
</ul>
<br>
	<div id="root">
		<div id="form">
			<form:form action="/course/add" method="post"
				modelAttribute="addcoursedetail">
				<div>
					<label for="courseName">CourseName</label>
					<div>
						<form:input path="courseName"  class="form-control form-control-sm"
						placeholder="CourseName"
							title="CourseName can't be empty or must contain only alphabets" 
						pattern="^[a-zA-Z]+$" required="true" />
						<form:errors path="courseName" cssClass="text-success" />
					</div>
				</div>
				<div>
					<label for="timeScale">TimeScale</label>
					<div>
						<form:input path="TimeScale" class="form-control form-control-sm"
						placeholder="CourseName"
							title="Please enter a timescale between 1 and 9" 
						pattern="[1-9]{1}" required="true"  />
                    	<form:errors path="timeScale" cssClass="text-success" />
					</div>
				</div>
				<div>
					<label for="qualification">Qualification</label>
					<div>
						<form:input path="qualification" class="form-control form-control-sm"
						placeholder="Qualification"
							title="Qualification can't be empty" 
						 required="true" />
					 <form:errors path="qualification" cssClass="text-success" />
					</div>
				</div>
				<div>
					<label for="admisssionFee">AdmisssionFee</label>
					<div>
						<form:input path="admisssionFee" class="form-control form-control-sm"
							placeholder="Qualification"
							title="AdmisssionFee can't be empty or 10000 rupees is required for this field" 
						pattern="10000" required="true" />
							<form:errors path="admisssionFee" cssClass="text-success" />
					</div>
				</div>
				<div>
					<label for="tuitionFee">TuitionFee</label>
					<div>
						<form:input path="tuitionFee" class="form-control form-control"
						placeholder="TuitionFee"
							title="TuitionFee can't be empty or 40000 rupees is required for this field" 
						pattern="50000" required="true" />
							<form:errors path="tuitionFee" cssClass="text-success" />
					</div>
				</div>
				<div>
					<label for="totalSeats">TotalSeats </label>
					<div>
						<form:input path="totalSeats" class="form-control form-control" 
						placeholder="TotalSeats"
							title="TotalSeats can't be empty"/>
							<form:errors path="totalSeats" cssClass="text-success" />
					</div>
				</div>
				<div>${message}</div>
				<br>    
				<br>
	<div>
       <form:button class="form-control form-control-sm btn btn-info">Add Course</form:button>
	</div>
	</form:form>
	</div>
	</div>
</body>
</html>