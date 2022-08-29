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
				<li><a href="/">log out</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<div  class="root">
	<br>
	<br>
		<div id="form">
			<form:form action="addstudentcoursedetails" method="post" modelAttribute="addstudentCourse">
				<h2  style ="color:green"> Student Status update  form</h2>
				<div>
					<label for="courseId"  class="form-label">CourseId</label>
					<div>
						<form:input path="courseId" id ="courseId" class="form-control" onblur="setId();"/>
					</div>
				</div>
				<br>
				<div>
					<label for="userid" class="form-label">UserId</label></div>
					<div>
						<form:input path="userid" class="form-control" />
					</div>
				
					<form:errors path="userid" cssClass="text-success" />
					<br>
				<div>
				 <div>
					<label for="registrationNumber" >RegistrationNumber</label>
					<div>
						<form:input path="registrationNumber" class="form-control" />
					</div>
				</div>
					<label for="courseName" >CourseName</label>
					<div>
						<form:input path="courseName" id="courseName" class="form-control" onblur="setId();"/>
					</div>
				</div>
				<br><div>
					<label for="paymentstatus">Payment Status</label>
					<div>
						<form:input path="paymentstatus" class="form-control" placeholder="Payment Status"
							 required="true"  />
					</div>
				</div>
				
				<br>
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
   function setId(){
   var name = document.getElementById('courseName').value;
   var id;
   if(name == "Fashion Designer"){
	   id=2;
   }else if (name == "Lawyer"){
	   id=1;
   }
   else if (name == "Hotel Manager"){
	   id=3;
	  
   } else if (name == " Journalism"){
	   id=4;
   }
   document.getElementById('courseId').value = id; 	
   }
</script>
</body>
</html>