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
			<form:form action="/students/update" method="post" modelAttribute="updatedetails">	
		
				<div>
					<label for="username">UserName</label>
					<div>
						<form:input path="username" />
						<form:errors path="username" />
					</div>
				</div>
				<div>
					<label for="qualification">Qualification</label>
					<div>
						<form:input path="qualification" />
						<form:errors path="qualification" />
					</div>
				</div>
				<div>
					<label for="sslcMark">SslcMark</label>
					<div>
						<form:input path="sslcMark" />
						<form:errors path="sslcMark" />
					</div>
				</div>
				<div>
					<label for="hscMark">HscMark</label>
					<div>
						<form:input path="hscMark" />
						<form:errors path="hscMark" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
					    Male:
						<form:radiobutton path="gender" value="Male" />
						Female:
						<form:radiobutton path="gender" value="Female" />
						<form:errors path="gender" />
					</div>
				</div>
				<div>
					<label for="address">address </label>
					<div>
						<form:input path="address" />
						<form:errors path="address" />
					</div>
				</div>
				<div>
					<label for="userlocation">userlocation</label>
					<div>
						<form:input path="userlocation" />
						<form:errors path="userlocation" />
					</div>
				</div>
				<div>
					<label for="nation">Nationally</label>
					<div>
						<form:input path="nation" />
						<form:errors path="nation" />
					</div>
				</div>
				<div>
					<label for="phoneNumber">PhoneNumber</label>
					<div>
						<form:input path="phoneNumber" />
						<form:errors path="phoneNumber" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" />
						<form:errors path="email" />
					</div>
				</div>
				<div>
					<label for="userPassword">userPassword</label>
					<div>
						<form:input path="userPassword" />
						<form:errors path="userPassword" />
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