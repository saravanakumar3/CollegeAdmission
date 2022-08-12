<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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