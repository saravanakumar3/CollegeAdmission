<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Course details</title>
<style type="text/css">
<%@include file="/WEB-INF/css/find-student-by-id.css"%>
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
				<li><a href="/">Login out</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
<div id="root">
	<div class="box">
		<div class="form">
		<form:form action="" method="post"  modelAttribute="getcourse">
			
					<div>
					<label for="courseId">CourseId</label>
					<div>
						<form:input path="courseId" class ="form-control" />
					</div>
				</div>
				<div>
					<label for="courseName">CourseName</label>
					<div>
						<form:input path="courseName"  class ="form-control" />
					</div>
				</div>
				<div>
					<label for="timeScale">Timescale</label>
					<div>
						<form:input path="timeScale"  class ="form-control" />
					</div>
				</div>
				<div>
					<label for="qualification">Qualification</label>
					<div>
						<form:input path="qualification" class ="form-control"  />
					</div>
				</div>
				<div>
					<label for="admisssionFee">AdmisssionFee</label>
					<div>
						<form:input path="admisssionFee" class ="form-control" />
					</div>
				</div>
				<div>
					<label for="tuitionFee">TuitionFee</label>
					<div>
						<form:input path="tuitionFee"  class ="form-control" />
					</div>
				</div>
				<div>
					<label for="totalSeats">TotalSeats </label>
					<div>
						<form:input path="totalSeats"  class ="form-control"  />
					</div>
				</div>
			</form:form>
		</div>
		<br>
			<div class ="table">
		<table>
			<thead>
				<tr>
					<th>CourseId</th>
					<th>UserId</th>
					<th>RegistrationNumber</th>
					<th>Payment Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="StudentCourseDetails" items= "${studentcourselist}">
					<tr>
						<td>${StudentCourseDetails.courseId}</td>
						<td>${StudentCourseDetails.userid}</td>
						<td>${StudentCourseDetails.registrationNumber}</td>
						<td>${StudentCourseDetails.paymentstatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
	</div>
	<br>
	<hr>
	 <div class="root">
         <a href="/course/updatedetails?id=${getcourse.courseId}"><button>update</button></a>
             <a href="/course/list"><button>Back to</button></a>
            </div>
</body>
</html>