<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="checkstudentlogin" method="post" modelAttribute="student">
				<div>
					<label for=email>Email</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<div>
					<label for="userPassword">Password</label>
					<div>
						<form:input path="userPassword" type="userPassword" />
					</div>
				</div>
				<form:button>Login</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>