
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
<style type="text/css">
<%@include file="/WEB-INF/css/login-user-form.css"%>
</style>
</head>
<body>
<button class="button1"
        onclick="history.back()">Go Back</button>
	<h1 >Student login Page</h1>
	<div class="box">
		<div>
			<table>
			<caption></caption>
			<tr><th></th></tr>
				<form:form action="checkstudentlogin" method="post"
					modelAttribute="student">
					<tr>
						<div>
							<td><label for="email">Email</label></td>
							<div>
								<td><form:input path="email" class="form-control"  required="true"/></td>
							</div>
			                  <div>						
							<form:errors path="email"/>	
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
							<td colspan="5"><br> <form:button
									id="log">Login</form:button></td>
						</div>
					</tr>
				</form:form>
			</table>
			<label>Don't have an Account?</label> <a href="/students/addstudents">
				<input onclick="change()" type="button" value="Sign Up"></input>
			</a>
		</div>
	</div>
	
</body>
</html>