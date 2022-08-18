<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Course List</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
<%@include file="/WEB-INF/css/list-course.css"%>
</style>
</head>
<body>
	<nav>
		<div class="menu">
			<div class="logo">
				<a>Madurai Government Arts College</a>
			</div>
			<ul>
				<li><a href="/admin/adminpage">Home</a></li>
				<li><a href="/course/list">Refresh</a></li>
				<li><a href="/">log out</a></li>
			</ul>
		</div>
	</nav>
<br>
 <h1><a href="/course/addcourse">Add Course</a></h1>
	<div id="table root">
		<table>
		<caption></caption>
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
                   <th>Deleted</th>
                    <th>Views</th>
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
						<td><a href="/course/updatedetails?id=${Course.courseId}">Edit</a></td>
                        <td><a href="/course/deletecourse?id=${Course.courseId}">Delete</a>
                        <td><a href="/course/getidbycourse?cid=${Course.courseId}">Views</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>