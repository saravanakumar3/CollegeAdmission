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
<body>
<h1><a href="/course/addcourse">Add Course</a></h1>

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
					<th>Edit</th>
                    <th>Delete</th>
                    <th>Views</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Courses" items="${allCourses}">
					<tr>
						<td>${Courses.courseId}</td>
						<td>${Courses.courseName}</td>
						<td>${Courses.timeScale}</td>
						<td>${Courses.qualification}</td>
						<td>${Courses.admisssionFee}</td>
						<td>${Courses.tuitionFee}</td>
						<td>${Courses.totalSeats}</td>
						<td><a href="/course/updatedetails?id=${Courses.courseId}">Update</a></td>
						<td><a href="/course/deletecourse?id=${Courses.courseId}">Delete</a></td>
						<td><a href="/course/getidbycourse?cid=${Courses.courseId}">Views</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>