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
   color:#91EEE4;
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
	 background-color:white;
}
.form-control {
	width: 85%;
	height: 30px;
	border: none;
	border-radius: 9px;
	padding-left: 8px;
	 color:#ECC4F3;
}
h4,a{
color:#91EEE4;
}
table, th, td {
	border: 1px solid black;
	padding: 15px;
	text-align: left;
}
th, td {
	border-color: #96D4D4;
}
tr:hover {
	background-color: #D6EEEE;
}
nav {
	background:black;
	width: 100%;
	padding: 10px 0;
	z-index: 12;
}

nav .menu {
	max-width: 1250px;
	margin: auto;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 20px;
}

.menu .logo a {
	text-decoration: none;
	color: #fff;
	font-size: 30px;
	font-weight: 500;
}

.menu ul {
	display: inline-flex;
}

.menu ul li {
	list-style: none;
	margin-left: 7px;
}

.menu ul li:first-child {
	margin-left: 0px;
}

.menu ul li a {
	text-decoration: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	padding: 8px 15px;
	border-radius: 5px;
	transition: all 0.3s ease;
}

.menu ul li a:hover {
	background: #ADCF9A;
	color: blue;
}

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
		<div class="form" align="center">
			<form:form action="" method="post" modelAttribute="getstudent">
				<div>
					<label for="userid">UserId</label>
					<div  >
						<form:input path="userid" class ="form-control"/>
					</div>
				</div>
				<div>
					<label for="username">username</label>
					<div>
						<form:input path="username" class ="form-control"/>
					</div>
				</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" class ="form-control" />
						</div>
				<div>
					<label for="qualification">Qualification</label>
					<div>
						<form:input path="qualification" class ="form-control"/>
					</div>
				</div>
				<div>
					<label for="sslcMark">SslcMark</label>
					<div>
						<form:input path="sslcMark" class ="form-control"/>
					</div>
				</div>
				<div>
					<label for="hscMark">HscMark</label>
					<div>
						<form:input path="hscMark" class ="form-control"/>
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" class ="form-control"/>
					</div>
				</div>
				<div>
					<label for="address">Address </label>
					<div>
						<form:input path="address" class ="form-control"/>
					</div>
				</div>
				<div>
					<label for="userlocation">userlocation</label>
					<div>
						<form:input path="userlocation" class ="form-control"/>
					</div>
				</div>
				<div>
				<div>
					<label for="nation">Nationally</label>
					<div>
						<form:input path="nation" class ="form-control"/>
					</div>
				</div>
					<label for="phoneNumber">PhoneNumber</label>
					<div>
						<form:input path="phoneNumber" class ="form-control"/>
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" class ="form-control"/>
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
		<div class="table root">
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
		<h4 align="center"><a href="/admin/adminpage">Go to home page</a></h4>
	</div>
	</div>
	</div>
</html>