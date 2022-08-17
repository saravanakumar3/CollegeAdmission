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
<style type="text/css">
<%@include file="/WEB-INF/css/fintby-studentid.css"%>
</style>
</head>
<body>
	<nav>
		<div class="menu">
			<div class="logo">
				<a>Madurai Government Arts College</a>
			</div>
			<ul>
				<li><a href="/">Log out</a></li>
			</ul>
		</div>
	</nav>
<div class="container">
<h1 >Student Profile</h1> 
<br>
    <div class="root">
           <div id="form">
			<form:form action="" method="post" modelAttribute="getstudent">
            <div>
            <table>
            <tbody>
            <tr>
                    <td><label for="userid">userId</label></td>
                        <td><form:input path="userid" class="form-control" readonly="true"/></td>
                        <br>
                </tr>
                <tr>
                    <td><label for="Username">FullName</label></td>
                        <td><form:input path="Username" class="form-control" readonly="true"/></td>
                </tr>
                <tr>
                    <td><label for="Qualification">Qualification</label></td>
                        <td><form:input path="Qualification" class="form-control" readonly="true"/></td>
                </tr>
                <br>
                <tr>
                    <td><label for="SslcMark">SslcMark</label></td>
                        <td><form:input path="SslcMark" class="form-control" readonly="true"/></td>
                </tr>
                <tr>
                    <td><label for="HscMark">HscMark</label></td>
                        <td><form:input path="HscMark" class="form-control" readonly="true"/></td>
                </tr>
                <tr>
                    <td><label for="Gender">Gender</label></td>
                        <td><form:input path="Gender" class="form-control" readonly="true"/></td>
                </tr>
                <tr>
                    <td><label for="Address">Address</label></td>
                        <td><form:input path="Address" class="form-control" readonly="true"/></td>
                </tr>
                <tr>
                    <td><label for="Userlocation">UserLocation</label></td>
                        <td><form:input path="Userlocation" class="form-control" readonly="true"/></td>
                </tr>
                <tr>
                    <td><label for="nation">Nation</label></td>
                        <td><form:input path="nation" class="form-control" readonly="true"/></td>
                </tr>
                <tr>
                    <td><label for="PhoneNumber">PhoneNumber</label></td>
                        <td><form:input path="PhoneNumber" class="form-control" readonly="true"/></td>
                </tr>
         
                 <tr>
                    <td><label for="Email">Email</label></td>
                        <td><form:input path="Email" class="form-control" readonly="true"/></td>
                </tr>
            </tbody>
            </table>
            </form:form>
         </div>
         </div>
         </div>
         <br>
         <div class="root">
         <a href="/students/updatestudentdetails?id=${getstudent.userid}"><button>update</button></a>
            <a href="/students/getidbystudent?id=${getstudent.userid}"><button>Status</button></a>
             <a href="/user/addform"><button>Back to</button></a>
            </div>
</body>
</body>
</html>