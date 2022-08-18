<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Course List</title>
<style type="text/css">
<%@include file="/WEB-INF/css/list-card.css"%>
</style>
</head>
<body>
	<div id="table root">
		<table>
			<caption></caption>
			<thead>
			<tr>
			<th>UserId </th>
				<th>paymentId </th>
				<th>courseName</th>
					<th>Amount</th>
					<th>PaymentDate</th>
					<th>cardholderName</th> 
				</tr>
			</thead>
			<tbody>
				<c:forEach var="CardDetails" items="${allplayment}">
					<tr>
						<td>${CardDetails.userId}</td>
						<td>${CardDetails.paymentId}</td>
						<td>${CardDetails.courseName}</td>
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