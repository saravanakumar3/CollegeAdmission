<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
</head>
<style>
body {
	background-image:
url("https://wallpaperaccess.com/full/1153664.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>
<body style="background-color: powderblue;">
	<div id="root" class="center">
		<div id="form">
			<form:form action="/details/adddetails" method="post" modelAttribute="addcarddetails">
				<div>
				<div>
					<label for="courseName">CourseName</label>
					<form:select path="courseName"  required="true">
							<form:option value="Lawyer">Lawyer</form:option>
							<form:option value="Hotel Magement">Hotel Magement</form:option>
							<form:option value="journalit">Journalit</form:option>
							<form:option value="Fashion Designer">Fashion Designer</form:option>	
						</form:select>
						 <form:errors path="courseName" />
				<div>
					<label for="name">UserName</label>
					<div>
						<form:input path="name"  required="true"/>
						 <form:errors path="name" />
					</div>	
				<div>
				<div>
					<label for="phoneNumber">PhoneNumber</label>
					<div>
						<form:input path="phoneNumber"  required="true" />
					</div>	
				<div>
					<label for="amount">Amount</label>
					
					<div>
							<form:input path="amount" value="50000" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="paymentDate">PaymentDate</label>
					<div>
						<form:input path="paymentDate" type="date"  required="true"  />
					</div>
				</div>
				<div>
					<label for="cardNumber">CardNumber</label>
					<div>
						<form:input path="cardNumber"  required="true" />
					</div>
				</div>
				<div>
					<label for="cvvNumber">CvvNumber</label>
					<div>
						<form:input path="cvvNumber"  required="true" />
					  <form:errors path="cvvNumber" />
					</div>
				</div>
				<div>
					<label for="cardholderName">CardholderName</label>
					<div>
						<form:input path="cardholderName"  required="true"/>
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