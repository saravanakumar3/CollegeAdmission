<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Find Student</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body {
	background-image:
url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbOFtSRiT43CvdRvPXtnHtTbN4ERwht9DOCA&usqp=CAU");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>
</head>
<body>
<ul class="nav nav-tabs nav-dark bg" style="background-color:#F5EEEC" align="center" >
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/">Home</a>
  </li>
</ul>
<div class="container">
  <h1>Student admission page</h1>
   <h2 Style="color:#96535D"><p>Quality Policy.</p> </h2>
  <p Style="color:#1F2322">Committed to impart Quality Technical Education imbibed with proficiency, human values and continual improvement.</p>      
       
  <div class="row">
    <div class="col-sm-3" id =box">
      <h2>personal information</h2>
  <p>To view personal information, click the button..</p>
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Click Here</button>
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
    </div>
    <div class="col-sm-8" style="background-color:#B2B2B2 ;">
      <iframe src="/details/carddetails" height="800" width="100%" title="Iframe Example" ></iframe>  
    </div>
  </div>
</div>
<div class="container">
</body>
</html>