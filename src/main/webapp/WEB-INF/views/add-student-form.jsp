<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Student</title>
</head>
<body style="background-color: powderblue;">

	<div id="root">
	
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addstudentdetail">
				<div>
					<label for="id">Id</label>
					<div>
						<form:input path="id" />
					</div>
				</div>
				<div>
					<label for="username">username</label>
					<div>
						<form:input path="username" />
					</div>
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
						<form:input path="sslcMark" />
					</div>
				</div>
				<div>
					<label for="hscMark">HscMark</label>
					<div>
						<form:input path="hscMark" />
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
						<form:input path="userlocation" />
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
				
				<div>
					<form:button>Registration</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>