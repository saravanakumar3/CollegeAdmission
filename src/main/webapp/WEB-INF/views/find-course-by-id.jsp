<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
						<form:input path="courseId" />
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
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Course" items="${studentcourselist}">
					<tr>
						<td>${Course.courseId}</td>
						<td>${Course.courseName}</td>
						<td>${Course.timeScale}</td>
						<td>${Course.qualification}</td>
						<td>${Course.admisssionFee}</td>
						<td>${Course.tuitionFee}</td>
						<td>${Course.totalSeats}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>