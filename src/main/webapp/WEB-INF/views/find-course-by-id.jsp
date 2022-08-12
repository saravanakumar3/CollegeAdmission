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
<body style="background-color: powderblue;">

<div id="root">
		<div id="form">
		<form:form action="" method="post"  modelAttribute="getcourse">
			
					<div>
					<label for="courseId">CourseId</label>
					<div>
						<form:input path="courseId"/>
					</div>
				</div>
				<div>
					<label for="courseName">CourseName</label>
					<div>
						<form:input path="courseName" />
					</div>
				</div>
				<div>
					<label for="timeScale">Timescale</label>
					<div>
						<form:input path="timeScale" />
					</div>
				</div>
				<div>
					<label for="qualification">Qualification</label>
					<div>
						<form:input path="qualification" />
					</div>
				</div>
				<div>
					<label for="admisssionFee">AdmisssionFee</label>
					<div>
						<form:input path="admisssionFee" />
					</div>
				</div>
				<div>
					<label for="tuitionFee">TuitionFee</label>
					<div>
						<form:input path="tuitionFee" />
					</div>
				</div>
				<div>
					<label for="totalSeats">TotalSeats </label>
					<div>
						<form:input path="totalSeats" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
			<div id="table root">
		<table border="2" width="100%" cellpadding="2">
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
</body>
</html>