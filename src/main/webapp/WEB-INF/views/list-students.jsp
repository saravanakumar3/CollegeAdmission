<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student List</title>
</head>
<body>
	<div id="table root">
		<table border="2" width= "100%" cellpadding="2">
			<thead>
				<tr>
				<th>Id</th>
					<th>UserName</th>
					
					<th>Qualification</th>
					<th>SslcMark</th>
					<th>HscMark</th> 
					<th>Gender</th>
					<th>Address</th>
					<th>Userlocation</th>
					<th>Nation</th>
					<th>PhoneNumber</th>
					<th>Email</th>
					<th>UserPassword</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="Student" items="${allstudent}">
					<tr>
						<td>${Student.id}</td>
						<td>${Student.username}</td>			
						<td>${Student.qualification}</td>
						<td>${Student.sslcMark}</td>
						<td>${Student.hscMark}</td>
						<td>${Student.gender}</td>
						<td>${Student.address}</td>
						<td>${Student.userlocation}</td>
						<td>${Student.nation}</td>
						<td>${Student.phoneNumber}</td>
						<td>${Student.email}</td>
						<td>${Student.userPassword}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>