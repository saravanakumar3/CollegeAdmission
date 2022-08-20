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
<style type="text/css">
<%@include file="/WEB-INF/css/list-studentcoursedetails.css"%>
</style>
</head>
<body>
<nav>
		<div class="menu">
			<div class="logo">
				<a>Madurai Government Arts College</a>
			</div>
			<ul>
				<li><a href="/admin/adminpage">Back to</a></li>
				<li><a href="/">Log Out</a></li>
			</ul>
		</div>
	</nav>
<br>
	<div id="table root">
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>CourseId</th>
					<th>UserId</th>
					<th>RegistrationNumber</th>
					<th>PaymentStatus</th>
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