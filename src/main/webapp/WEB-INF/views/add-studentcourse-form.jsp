<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PaymentDetals</title>
</head>
<body style="background-color: powderblue;">

	<div id="root">
	
		<div id="form">
			<form:form action="addstudentcoursedetails" method="post" modelAttribute="addstudentCourse">
				<div>
					<label for="courseId">CourseId</label>
					<div>
						<form:input path="courseId" />
					</div>
				</div>
				<div>
					<label for="userid">userId</label>
					<div>
						<form:input path="userid" />
					</div>
				</div>
				<div>
					<label for="registrationNumber">RegistrationNumber</label>
					<div>
						<form:input path="registrationNumber" />
					</div>
				</div>
				<div>
					<label for="paymentstatus">Paymentstatus</label>
					<div>
						<form:input path="paymentstatus" />
					</div>
				</div>
				</div>
				<div>
					<form:button>Registration</form:button>
				</div>
			</form:form>
		</div>
	</div> 
</body>
</html>