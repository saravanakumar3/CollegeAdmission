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
					<label for="registrationNumber">RegistrationNumber</label>
					<div>
						<form:input path="registrationNumber" />
					</div>
				</div>
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" />
					</div>
				</div>
				<div>
					<label for="paymentDate">Paymentdate</label>
					<div>
						<form:input path="paymentDate" />
					</div>
				</div>
				<div>
					<label for="cardNumber">Cardnumber</label>
					<div>
						<form:input path="cardNumber" />
					</div>
				</div>
				<div>
					<label for="cvvNumber">Cvvnumber</label>
					<div>
						<form:input path="cvvNumber" />
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