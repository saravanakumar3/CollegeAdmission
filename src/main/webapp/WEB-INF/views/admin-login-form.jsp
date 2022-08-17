<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<style type="text/css">
<%@include file="/WEB-INF/css/admin-login-form.css"%>
</style>
</head>
<bodys>
<nav>
		<div class="menu">
			<div class="logo">
				<a>Madurai Government Arts College</a>
			</div>
			<ul>
				<li><a href="/admin/login">Refresh</a></li>
				<li><a href="/">Login out</a></li>
			</ul>
		</div>
	</nav>
<br>
<br>
	<div class="card mb-3 h=100" style="max-width: 10000px; ">
  <div class="row g-0">
    <div class="col-md-4 w-100 p-3 w-50 h=100">
      <img src="https://icon-library.com/images/admin-login-icon/admin-login-icon-26.jpg" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8  w-100 p-3 w-50 h=35"">
      <div class="card-body">
        <h3 class="card-title"><p class="font-weight-bold">Welcome back</p> </h3>
        <p class="card-text">
        <div id="root">
		<div id="form">
			<form:form action="checkadminlogin" method="post" modelAttribute="admin">
				<div>
				<div class="icon"><i class="fas fa-user"></i></div>
					<label for=adminEmail">Email</label>
					
					<div>
						<form:input path="adminEmail" class="form-control form-control-lg" />
                     </div>						
							<form:errors path="adminEmail" />	
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" type="password"  class="form-control form-control-lg"/>
					</div>
					<br>
				</div>
				
				<form:button class="form-control form-control-lg btn btn-info">Login</form:button>
			</form:form>
		</div>
	</div>
        <p class="card-text"><small class="text-muted"><a href="/" class="text-decoration-none">Go back to home page</a></small></p>
      </div>
    </div>
  </div>
</div>
</body>
</html>