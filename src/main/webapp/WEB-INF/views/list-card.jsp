<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Course List</title>
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
</head>
<body>
	<div id="table root">
		<table border="2" width= "100%" cellpadding="2">
			<thead>
	
				<th>UserId</th>
				<th>courseName</th>
				<th>UserName</th>
				<th>phoneNumber</th>
					<th>Amount</th>
					<th>PaymentDate</th>
					<th>cardholderName</th> 
				</tr>
			</thead>
			<tbody>
				<c:forEach var="CardDetails" items="${allplayment}">
					<tr>
						<td>${CardDetails.paymentId}</td>
						<td>${CardDetails.courseName}</td>
						<td>${CardDetails.name}</td>
						<td>${CardDetails.phoneNumber}</td>
						<td>${CardDetails.amount}</td>
						<td>${CardDetails.paymentDate}</td>
						<td>${CardDetails.cardholderName}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>