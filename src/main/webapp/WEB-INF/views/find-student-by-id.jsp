<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Student course</title>
<style>
body {
	background-color:#52540E;
}
input{
    display: block;
    height: 50px;
    width: 45%;
    background-color:#F0F3F4 ;
    border-radius: 4px;
    padding:  0.5px;
    margin-top: 8px;
    font-size: 15px;
    font-weight: 300;
    border: 2px solid #ADC29D;
}
label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}

.box {
    
	width: 90%;
	height: 90%;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	background-color: #B1BECD ;
}
</style>
</head>
<body>
	<div id="root">
	<div class="box">
		<div id="form" align="center">
			<form:form action="" method="post" modelAttribute="getstudent">
				<div>
					<label for="userid">UserId</label>
					<div  >
						<form:input path="userid" />
					</div>
				</div>
				<div>
					<label for="username">username</label>
					<div>
						<form:input path="username"/>
					</div>
				</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" />
						</div>
				<div>
					<label for="qualification">Qualification</label>
					<div>
						<form:input path="qualification" />
					</div>
				</div>
				<div>
					<label for="sslcMark">SslcMark</label>
					<div>
						<form:input path="sslcMark"/>
					</div>
				</div>
				<div>
					<label for="hscMark">HscMark</label>
					<div>
						<form:input path="hscMark"/>
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="address">Address </label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="userlocation">userlocation</label>
					<div>
						<form:input path="userlocation"/>
					</div>
				</div>
				<div>
				<div>
					<label for="nation">Nationally</label>
					<div>
						<form:input path="nation" />
					</div>
				</div>
					<label for="phoneNumber">PhoneNumber</label>
					<div>
						<form:input path="phoneNumber" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<div>
					<label for="userPassword">userPassword</label>
					<div>
						<form:input path="userPassword" />
					</div>
				</div>
				
				</div>
			</form:form>
		</div>
		
		<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>CourseId</th>
					<th>UserId</th>
					<th>RegistrationNumber</th>
					<th>Payment Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="StudentCourseDetails" items= "${studentcourselist}">
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
</html>