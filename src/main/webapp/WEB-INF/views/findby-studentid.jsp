<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Student</title>
</head>
<body style="background-color: powderblue;">

	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getstudent">
					<div>
					<label for="Id">Id</label>
					<div>
						<form:input path="Id" />
					</div>
				</div>
				<div>
					<label for="Username">Username</label>
					<div>
						<form:input path="Username" />
					</div>
				</div>
				<div>
					<label for="Qualification">Qualification</label>
					<div>
						<form:input path="Qualification" />
					</div>
				</div>
				<div>
					<label for="SslcMark">SslcMark</label>
					<div>
						<form:input path="SslcMark" />
					</div>
				</div>
				<div>
					<label for="HscMark">HscMark</label>
					<div>
						<form:input path="HscMark" />
					</div>
				</div>
				<div>
					<label for="Gender">Gender</label>
					<div>
						<form:input path="Gender" />
					</div>
				</div>
				<div>
					<label for="Address">Address </label>
					<div>
						<form:input path="Address" />
					</div>
				</div>
				<div>
					<label for="Userlocation">Userlocation</label>
					<div>
						<form:input path="Userlocation" />
					</div>
				</div>
				<div>
					<label for="nation">Nationally</label>
					<div>
						<form:input path="nation" />
					</div>
				</div>
				<div>
					<label for="PhoneNumber">PhoneNumber</label>
					<div>
						<form:input path="PhoneNumber" />
					</div>
				</div>
				<div>
					<label for="Email">Email</label>
					<div>
						<form:input path="Email" />
					</div>
				</div>
				<div>
					<label for="UserPassword">UserPassword</label>
					<div>
						<form:input path="UserPassword" />
					</div>
				</div>
				
				</div>
				
				<div>
			</form:form>
		</div>
	</div>
</body>
</html>