<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateStudent</title>
</head>
<body style="background-color: powderblue;">
<body>
	<div id="root">
	
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatedetails">	
				<div>
					<label for="userid">userid</label>
					<div>
						<form:input path="userid" />
					</div>
				</div>
				<div>
					<label for="username">Username</label>
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
					<label for="address">address </label>
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
					<label for="nation">Nationally</label>
					<div>
						<form:input path="nation" />
					</div>
				</div>
				<div>
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
					<label for="userPassword">Address fees</label>
					<div>
						<form:input path="userPassword" />
					</div>
				</div>
				
				</div>
				
				<div>
					<form:button>Click Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>