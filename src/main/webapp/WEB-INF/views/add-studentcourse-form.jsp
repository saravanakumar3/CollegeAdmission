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
<style type="text/css">
<%@include file="/WEB-INF/css/add-studentcourse-form.css"%>
</style>

<body> 
	<nav>
		<div class="menu">
			<div class="logo">
				<a>Madurai Government Arts College</a>
			</div>
			<ul>
				<li><a href="/admin/adminpage">Home</a></li>
				<li><a href="/studentcourse/addform">Refresh</a></li>
				<li><a href="/">log out</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
 <iframe class="iframe" src="/details/list" height="250px" width="100%" title="Iframe Example" ></iframe>  
	<div  class="root">
	<br>
	<br>
		<div id="form" align="center">
			<form:form action="addstudentcoursedetails" method="post" modelAttribute="addstudentCourse">
				<h2  style ="color:green"> Student Status update  form</h2>
				<div>
					<label for="courseId" class="form-label">CourseId</label>
					<div>
						<form:input path="courseId" class="form-control"  placeholder="CourseId"
							title="CourseId can't be empty" required="true" />
						<form:errors path="courseId" cssClass="text-success"/>
					</div>
				</div>
				<div>
					<label for="userid" class="form-label">UserId</label>
					<div>
						<form:input path="userid" class="form-control" placeholder="CourseId"
							title="userid can't be empty" required="true"/>
					</div>
				</div>
					<form:errors path="userid" cssClass="text-success" />
				<div>
				 <div>
					<label for="registrationNumber" >RegistrationNumber</label>
					<div>
						<form:input path="registrationNumber" class="form-control"
							title="RegistrationNumber can't be empty" required="true" id="registrationNumber"/>
					<form:errors path="registrationNumber" cssClass="text-success" />
					</div>
				</div> 
					<label for="paymentstatus">Payment Status</label>
					<div>
						<form:input path="paymentstatus" class="form-control" placeholder="Payment Status"
							title="Paymentstatus can't be empty" required="true"  />
					</div>
				</div>
				<form:errors path="paymentstatus" cssClass="text-success" />
				<div>
				<br>
				<form:button class="click-button">Update</form:button></a>
				</div>
			</form:form>
			<h5 ><a href ="/admin/adminpage" style ="color:green">Go to home page</a></h5>
		</div>
	</div> 
	<script type="text/javascript">
    document.getElementById('registrationNumber').value = Math.floor(Math.random() * 1000);
    
</script>
</body>
</html>