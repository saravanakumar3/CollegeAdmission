<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course List</title>
</head>
<body>
	<div id="table root">
		<table border="2" width= "100%" cellpadding="2">
			<thead>
	<tr>
				<th>CourseId</th>
					<th>CourseName</th>
					<th>TimeScale</th>
					<th>Qualification</th>
					
					<th>AdmisssionFee</th>
					<th>TuitionFee</th> 
					<th>TotalSeats</th>
					<th>Registration now</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="Course" items="${allCourse}">
					<tr>
						<td>${Course.courseId}</td>
						<td>${Course.courseName}</td>
						
						<td>${Course.timeScale}</td>
						<td>${Course.qualification}</td>
						<td>${Course.admisssionFee}</td>
						<td>${Course.tuitionFee}</td>
						<td>${Course.totalSeats}</td>
						<td><a href="/details/carddetails">Registration</a></td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>