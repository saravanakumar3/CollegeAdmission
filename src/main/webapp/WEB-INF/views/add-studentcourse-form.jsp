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
<body style="background-color: powderblue;> 
	<div  align ="justify""root">
		<div id="form">
			<form:form action="addstudentcoursedetails" method="post" modelAttribute="addstudentCourse">
				<div>
					<label for="courseId" class="form-label">CourseId</label>
					<div>
						<form:input path="courseId" />
					</div>
				</div>
				<form:errors path="courseId" />
				<div>
					<label for="userid" class="form-label">userId</label>
					<div>
						<form:input path="userid" />
					</div>
				</div>
					<form:errors path="userid" />
				<div>
					<label for="paymentstatus">Paymentstatus</label>
					<div>
						<form:input path="paymentstatus" />
					</div>
				</div>
				<form:errors path="paymentstatus" />
				<div>
					<form:button>Registration</form:button>
				</div>
			</form:form>
		</div>
	</div> 
</body>
</html>