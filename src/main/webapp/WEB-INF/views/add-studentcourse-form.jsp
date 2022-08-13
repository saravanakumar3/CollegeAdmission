<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>PaymentDetals</title>
</head>
<body style="background-color: powderblue;> 
	<div  id=root">
		<div id="form">
			<form:form action="addstudentcoursedetails" method="post" modelAttribute="addstudentCourse">
				<div>
					<label for="courseId" class="form-label">CourseId</label>
					<div>
						<form:input path="courseId"  placeholder="CourseId"
							title="CourseId can't be empty" required="true" />
						<form:errors path="courseId" cssClass="text-success"/>
					</div>
				</div>
				<div>
					<label for="userid" class="form-label">UserId</label>
					<div>
						<form:input path="userid" placeholder="CourseId"
							title="userid can't be empty" required="true"/>
					</div>
				</div>
					<form:errors path="userid" cssClass="text-success" />
				<div>
				 <div>
					<label for="registrationNumber" class="form-label">RegistrationNumber</label>
					<div>
						<form:input path="RegistrationNumber" placeholder="CourseId"
							title="CourseId can't be empty" required="true"/>
					<form:errors path="registrationNumber" cssClass="text-success" />
					</div>
				</div> 
					<label for="paymentstatus">Payment Status</label>
					<div>
						<form:input path="paymentstatus" placeholder="CourseId"
							title="Paymentstatus can't be empty" required="true"  />
					</div>
				</div>
				<form:errors path="paymentstatus" cssClass="text-success" />
				<div>
				<form:button>Registration</form:button></a>
				</div>
			</form:form>
		</div>
	</div> 
</body>
</html>