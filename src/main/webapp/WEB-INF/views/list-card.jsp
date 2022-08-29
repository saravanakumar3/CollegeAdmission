<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Payment List</title>
<style type="text/css">
<%@include file="/WEB-INF/css/list-card.css"%>
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
				
				<li><a href="/">Log Out</a></li>
			</ul>
		</div>
	</nav>
	<div id="table root">
	<br>
	<br>
	<br>
		<table>
			<caption></caption>
			<thead>
			<tr>
			<th>UserId </th>
				<th>PaymentId </th>
				<th>CourseName</th>
					<th>Amount</th>
					<th>PaymentDate</th>
					<th>CardholderName</th> 
					<th>Update Status</th> 
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
					    <td><a  class ="botton" href="/studentcourse/addform?id=${CardDetails.userId}&&id1=${CardDetails.courseName}" >Update Status</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>