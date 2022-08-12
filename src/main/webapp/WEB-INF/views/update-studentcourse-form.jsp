<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Updates</title>
</head>
<body style="background-color: powderblue;">
	<div id="root">
		<div id="form">
			<form:form action="updatestudentCompositeKey" method="post" modelAttribute="updatestudentcoursedetails">
				<div>
					<label for="courseId">CourseId</label>
					<div>
						<form:input path="courseId" />
					</div>
				</div>
				<div>
					<label for="userId">userId</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				<div>
					<label for="registrationNumber">RegistrationNumber</label>
					<div>
						<form:input path="registrationNumber" />
					</div>
				</div>
				<div>
					<label for="paymentstatus">Paymentstatus</label>
					<div>
						<form:input path="paymentstatus" />
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