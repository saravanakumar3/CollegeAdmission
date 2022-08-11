<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Student</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background-color: powderblue;">
<div class="container">
  <h2>personal information</h2>
  <p>To view personal information, click the button..</p>
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Simple collapsible</button>
  <div id="demo" class="collapse">
    <div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getstudent">
					<div>
					<label for="userid">Id</label>
					<div>
						<form:input path="userid" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Username">Username</label>
					<div>
						<form:input path="Username" readonly="true" />
					</div>
				</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" type="date" readonly="true"/>
						</div>
				<div>
					<label for="Qualification">Qualification</label>
					<div>
						<form:input path="Qualification" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="SslcMark">SslcMark</label>
					<div>
						<form:input path="SslcMark" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="HscMark">HscMark</label>
					<div>
						<form:input path="HscMark" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Gender">Gender</label>
					<div>
						<form:input path="Gender" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Address">Address </label>
					<div>
						<form:input path="Address" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Userlocation">User location</label>
					<div>
						<form:input path="Userlocation" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="nation">Nationally</label>
					<div>
						<form:input path="nation" readonly="true" />
					</div>
				</div>
				<div>
					<label for="PhoneNumber">PhoneNumber</label>
					<div>
						<form:input path="PhoneNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Email">Email</label>
					<div>
						<form:input path="Email" readonly="true" />
					</div>
				</div>
				</div>
				<div>
			</form:form>
		</div>
	</div>
  </div>
</div>
<iframe src="/course/list" height="450" width="1000" title="Iframe Example"></iframe>
</body>
</html>