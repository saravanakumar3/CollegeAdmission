<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Registration Status</title>
</head>
<body>
<h1>Your registration has been completed successfully.</h1>

	</thead>
			<tbody>
				<c:forEach var="Student" items="${allstudent}">
					<tr>
						<td>${Student.userid}</td>
						<td>${Student.username}</td>
                       <td>${Student.dob}</td>			
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
</body>
</html>