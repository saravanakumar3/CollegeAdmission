<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>UpdateStudent</title>
</head>
<body style="background-color: powderblue;">
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatecourse">
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
					<form:button>Click Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>