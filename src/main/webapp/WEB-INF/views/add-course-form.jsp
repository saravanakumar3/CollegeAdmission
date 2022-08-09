<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
						<form:input path="courseName"  class="form-control form-control-sm"/>
						<form:errors path="courseName" />

					</div>
				</div>
				<div>
					<label for="timeScale">TimeScale</label>
					<div>
						<form:input path="timeScale" class="form-control form-control-sm" />

					</div>
				</div>
				<div>
					<label for="qualification">Qualification</label>
					<div>
						<form:input path="qualification" class="form-control form-control-sm" />
					</div>
				</div>
				<div>
					<label for="admisssionFee">AdmisssionFee</label>
					<div>
						<form:input path="admisssionFee" class="form-control form-control-sm"/>
					</div>
				</div>
				<div>
					<label for="tuitionFee">TuitionFee</label>
					<div>
						<form:input path="tuitionFee" class="form-control form-control"/>
					</div>
				</div>
				<div>
					<label for="totalSeats">TotalSeats </label>
					<div>
						<form:input path="totalSeats" class="form-control form-control" />
					</div>
				</div>
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