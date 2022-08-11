
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
<style>
body {
	background-image:
url("https://www.firststudent.com/wp-content/themes/first_student/images/home-visual.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
h1 {
	color: #ff1493;
}

label {
	color: #000080;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

.form-control {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

.password {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#log {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 12px;
	padding-left: 7px;
	color: green;
}

.box {
    
	width: 400px;
	height: 240px;
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
	<h1 align="center">Student login Page</h1>
	<div class="box">
		<div>
			<table>
				<form:form action="checkstudentlogin" method="post"
					modelAttribute="student">
					<tr>
						<div>
							<td><label for="email">Email</label></td>
							<div>
								<td><form:input path="email" class="form-control" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="userPassword">Password</label></td>
							<div>
								<td><form:input type="password" path="userPassword"
										class="form-control" /></td>
							</div>
						</div>
						<br>
					</tr>
					<tr>
						<div>
							<td colspan="5" align="center"><br> <form:button
									id="log">Login</form:button></td>
						</div>
					</tr>
				</form:form>
			</table>
			<label>Don't have an Account?</label> <a href="registerpatient">
				<input onclick="change()" type="button" value="Sign Up"></input>
			</a>
		</div>
	</div>
</body>
</html>