<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Doctor</title>
</head>
<body style="background-color: powderblue;">
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addcarddetails">
				<div>
					<label for="paymentid">Paymentid</label>
					<div>
						<form:input path="paymentid" />
					</div>
				<div>
				<div>
					<label for="courseName">CourseName</label>
					<form:select path="courseName">
							<form:option value="Lawyer">Lawyer</form:option>
							<form:option value="Hotel Magement">Hotel Magement</form:option>
							<form:option value="journalit">Journalit</form:option>
							<form:option value="Fashion Designer">Fashion Designer</form:option>	
						</form:select>
						 <form:errors path="courseName" />
				<div>
					<label for="name">UserName</label>
					<div>
						<form:input path="name" />
						 <form:errors path="name" />
					</div>	
				<div>
				<div>
					<label for="phoneNumber">PhoneNumber</label>
					<div>
						<form:input path="phoneNumber" />
					</div>	
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" />
					</div>
				</div>
				<div>
					<label for="paymentDate">PaymentDate</label>
					<div>
						<form:input path="paymentDate" type="date"  />
					</div>
				</div>
				<div>
					<label for="cardNumber">CardNumber</label>
					<div>
						<form:input path="cardNumber" />
					</div>
				</div>
				<div>
					<label for="cvvNumber">CvvNumber</label>
					<div>
						<form:input path="cvvNumber" />
					  <form:errors path="cvvNumber" />
					</div>
				</div>
				<div>
					<label for="cardholderName">CardholderName</label>
					<div>
						<form:input path="cardholderName" />
					<form:errors path="cardholderName" />
					</div>
				</div>
                <div>
				</div>
				<div>
					<form:button>Pay</form:button>
				</div>
			</form:form>
		</div>
	</div>
	
	
</body>
</html>