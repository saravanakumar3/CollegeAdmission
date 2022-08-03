<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>

				<tr>
					<th>CourseId</th>
					<th>UserId</th>
					<th>RegistrationNumber</th>
					<th>Paymentstatus</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="PaymentDetails" items="${allpaymentlist}">
					<tr>
						<td>${PaymentDetails.courseId}</td>
						<td>${PaymentDetails.userId}</td>

						<td>${PaymentDetails.registrationNumber}</td>
						<td>${PaymentDetails.paymentstatus}</td>


					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>