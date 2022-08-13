<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Payment List</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getstudentdata">
				<div>
					<label for="userid">UserId</label>
					<div>
						<form:input path="userid" />
					</div>
				</div>
				<div>
					<label for="username">username</label>
					<div>
						<form:input path="username" />
					</div>
				</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" />
						</div>
				<div>
					<label for="qualification">Qualification</label>
					<div>
						<form:input path="qualification" />
					</div>
				</div>
				<div>
					<label for="sslcMark">SslcMark</label>
					<div>
						<form:input path="sslcMark" />
					</div>
				</div>
				<div>
					<label for="hscMark">HscMark</label>
					<div>
						<form:input path="hscMark" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="address">Address </label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="userlocation">userlocation</label>
					<div>
						<form:input path="userlocation" />
					</div>
				</div>
				<div>
				<div>
					<label for="nation">Nationally</label>
					<div>
						<form:input path="nation" />
					</div>
				</div>
					<label for="phoneNumber">PhoneNumber</label>
					<div>
						<form:input path="phoneNumber" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<div>
					<label for="userPassword">userPassword</label>
					<div>
						<form:input path="userPassword" />
					</div>
				</div>
				</div>
			</form:form>
		</div>
		<div id="table root">
		<table border="2" width= "100%" cellpadding="2">
			<thead>
	
				<th>PaymentId</th>
				<th>courseName</th>
				<th>phoneNumber</th>
					<th>Amount</th>
					<th>PaymentDate</th>
					<th>cardholderName</th> 
				</tr>
			</thead>
			<tbody>
				<c:forEach var="CardDetails" items="${studentpaymentlist}">
					<tr>
						<td>${CardDetails.paymentid}</td>
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