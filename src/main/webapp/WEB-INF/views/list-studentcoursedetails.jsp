<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>StudentCourseDetails list</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous"> 
<style>
table, th, td {
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
</style>
</head>
<body>
<h1>Madurai Government Arts College</h1>
<ul class="nav nav-tabs nav-dark bg">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/admin/adminpage">Home</a>
  </li>
</ul>
<br>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>CourseId</th>
					<th>UserId</th>
					<th>RegistrationNumber</th>
					<th>Paymentstatus</th>
					<th>Deleted</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="StudentCourseDetails" items= "${alladdstudentCourseDetails}">
					<tr>
						<td>${StudentCourseDetails.courseId}</td>
						<td>${StudentCourseDetails.userid}</td>
						<td>${StudentCourseDetails.registrationNumber}</td>
						<td>${StudentCourseDetails.paymentstatus}</td>
						 <td><a href="/studentcourse/deletestudentcoursedetails?id=${StudentCourseDetails.courseId}&&cid=${StudentCourseDetails.userid}"}>Delete</a></td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>