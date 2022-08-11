<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FindByIdCourse</title>
</head>
<body style="background-color: powderblue;">

	<div id="root">
		<div id="form">
		<form:form action="" method="post"  modelAttribute="getCourseById">
			
					<div>
					<label for="courseId">CourseId</label>
					<div>
						<form:input path="courseId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="courseName">CourseName</label>
					<div>
						<form:input path="courseName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="timeScale">Timescale</label>
					<div>
						<form:input path="timeScale"  readonly="true"/>
					</div>
				</div>
				<div>
					<label for="tuitionFee">TuitionFee</label>
					<div>
						<form:input path="tuitionFee" readonly="true"/>
					</div>
				</div>
				
			</form:form>
		</div>
	</div>
	
</body>
</html>