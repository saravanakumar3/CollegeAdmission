<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>
</head>
<body>
	<div id="root">

		<div id="form">
			<form:form action="/course/add" method="post"
				modelAttribute="addcoursedetail">
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
						<form:errors path="courseName" />

					</div>
				</div>
				<div>
					<label for="timeScale">TimeScale</label>
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
	<div>
		<form:button>Add Course</form:button>
	</div>
	</form:form>
	</div>
	</div>
</body>
</html>