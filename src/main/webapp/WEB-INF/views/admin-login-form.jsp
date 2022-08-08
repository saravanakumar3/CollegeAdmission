<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
</head>
<body>
<h1>Madurai Government Arts College</h1>
<ul class="nav nav-tabs nav-dark bg-success">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/students/addstudents">Sign up now</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/admincourse/addcourse">Add course</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="/admincourse/list">Course Details</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="/admin/login">Admin login</a>
  </li>
</ul>
<br>
	<div id="root">
		<div id="form">
			<form:form action="checkadminlogin" method="post" modelAttribute="admin">
				<div>
					<label for=adminEmail>Email</label>
					<div>
						<form:input path="adminEmail" />
						 <div class="icon"><i class="fas fa-user"></i></div>
							<form:errors path="adminEmail" />	
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" type="password" />
					</div>
				</div>
				<form:button>Login</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>