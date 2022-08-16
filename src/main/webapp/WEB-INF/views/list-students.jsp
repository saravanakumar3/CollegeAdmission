<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Student List</title>
 <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous"> 
<style >table, th, td {
	border: 1px solid black;
	padding: 15px;
	text-align: left;
}
th, td {
	border-color: #96D4D4;
}
tr:hover {
	background-color: #D6EEEE;
}
baby{
background-color:#EBF1F9;
}
a{
background-color:#AFE7E8;
}
nav {
	background:black;
	width: 100%;
	padding: 10px 0;
	z-index: 12;
}

nav .menu {
	max-width: 1250px;
	margin: auto;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 20px;
}

.menu .logo a {
	text-decoration: none;
	color: #fff;
	font-size: 30px;
	font-weight: 500;
}

.menu ul {
	display: inline-flex;
}

.menu ul li {
	list-style: none;
	margin-left: 7px;
}

.menu ul li:first-child {
	margin-left: 0px;
}

.menu ul li a {
	text-decoration: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	padding: 8px 15px;
	border-radius: 5px;
	transition: all 0.3s ease;
}

.menu ul li a:hover {
	background: #ADCF9A;
	color: blue;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav>
		<div class="menu">
			<div class="logo">
				<a>Madurai Government Arts College</a>
			</div>
			<ul>
				<li><a href="/admin/adminpage">Home</a></li>
				<li><a href="/students/list">Refresh</a></li>
				<li><a href="/">log out</a></li>
			</ul>
		</div>
	</nav>
<br>
 <h1><a href="/admin/addstudents">Add Student</a></h1>
	<div id="table root">
		<table  class="table table-info table-striped-columns table-hover" >
			<thead >
				<tr >
					<th>UserName</th>
			        <th>Dob</th>
					<th>Qualification</th>
					<th>SslcMark</th>
					<th>HscMark</th> 
					<th>Gender</th>
					<th>Address</th>
					<th>UserLocation</th>
					<th>Nation</th>
					<th>PhoneNumber</th>
					<th>Email</th>
                     <th>Edit</th>
                   <th>Deleted</th>
                    <th>Views</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Student" items="${allstudent}">
					<tr>
						<td>${Student.username}</td>
                       <td>${Student.dob}</td>			
						<td>${Student.qualification}</td>
						<td>${Student.sslcMark}</td>
						<td>${Student.hscMark}</td>
						<td>${Student.gender}</td>
						<td>${Student.address}</td>
						<td>${Student.userlocation}</td>
						<td>${Student.nation}</td>
						<td>${Student.phoneNumber}</td>
						<td>${Student.email}</td>
						<td><a href="/students/updatestudentdetails?id=${Student.userid}">Edit</a></td>
                        <td><a href="/students/deletestudent?id=${Student.userid}">Delete</a>
                        <td><a href="/students/getidbystudent?id=${Student.userid}">Views</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>