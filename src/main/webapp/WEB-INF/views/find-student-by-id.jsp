<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Find student by Id</title>
<style type="text/css">
<%@include file="/WEB-INF/css/find-student-by-id.css"%>
</style>
</head>
<body>
<nav>
		<div class="menu">
			<div class="logo">
				<a>Madurai Government Arts College</a>
			</div>
			<ul>
				<li><a href="/admin/adminpage">Home</a></li>
				<li><a href="/">Login out</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<div id="root">
	<div class="box">
		<div class="form">
			<form:form action="" method="post" modelAttribute="getstudent">
				<div>
					<label for="userid">UserId</label>
					<div  >
						<form:input path="userid" class ="form-control"  readonly="true"/>
					</div>
				</div>
				<div>
					<label for="username">FullName</label>
					<div>
						<form:input path="username" class ="form-control" readonly="true"/>
					</div>
				</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" class ="form-control" readonly="true"/>
						</div>
				<div>
					<label for="qualification">Qualification</label>
					<div>
						<form:input path="qualification" class ="form-control" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="sslcMark">SslcMark</label>
					<div>
						<form:input path="sslcMark" class ="form-control" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="hscMark">HscMark</label>
					<div>
						<form:input path="hscMark" class ="form-control" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" class ="form-control" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="address">Address </label>
					<div>
						<form:input path="address" class ="form-control"/>
					</div>
				</div>
				<div>
					<label for="userlocation">UserLocation</label>
					<div>
						<form:input path="userlocation" class ="form-control" readonly="true"/>
					</div>
				</div>
				<div>
				<div>
					<label for="nation">Nationally</label>
					<div>
						<form:input path="nation" class ="form-control" readonly="true"/>
					</div>
				</div>
					<label for="phoneNumber">PhoneNumber</label>
					<div>
						<form:input path="phoneNumber" class ="form-control" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" class ="form-control" readonly="true"/>
					</div>
				</div>
				<div>
					<div>
						<form:input path="userPassword" type ="hidden" />
					</div>
				</div>
				
				</div>
			</form:form>
		</div>
		<br>
		<div class ="table">
		<table>
			<caption></caption>
			<thead>
				<tr>
					<th>CourseId</th>
					<th>UserId</th>
					<th>RegistrationNumber</th>
					<th>Payment Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="StudentCourseDetails" items="${studentcourselist}">
					<tr>
						<td>${StudentCourseDetails.courseId}</td>
						<td>${StudentCourseDetails.userid}</td>
						<td>${StudentCourseDetails.registrationNumber}</td>
						<td>${StudentCourseDetails.paymentstatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
	</div>
	<br>
	<hr>
	 <div class="root">
         <a href="/students/updatestudentdetails?id=${getstudent.userid}"><button>update</button></a>
            <a href="/students/getidbystudent?id=${getstudent.userid}"><button>Status</button></a>
             <a href="/students/getstudentbyid?id=${getstudent.userid}"><button>Back to</button></a>
            </div>
</html>