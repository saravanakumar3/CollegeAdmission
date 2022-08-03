<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course List</title>
</head>
<body>
	<div id="table root">
		<table border="2" width= "100%" cellpadding="2">
			<thead>
	
				<th>RegistrationNumber</th>
					<th>amount</th>
					<th>paymentdate</th>
					<th>cardNumber</th>
					
					<th>cvvNumber</th>
					<th>cardholderName</th> 
					
					

				</tr>
			</thead>
			<tbody>
				<c:forEach var="CardDetails" items="${allCard}">
					<tr>
						<td>${CardDetails.registrationNumber}</td>
						<td>${CardDetails.amount}</td>
						<td>${CardDetails.paymentDate}</td>
						<td>${CardDetails.cardNumber}</td>
						<td>${CardDetails.cvvNumber}</td>
						<td>${CardDetails.cardholderName}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>