<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
</head>
<style type="text/css">
<%@include file="/WEB-INF/css/add-card-details.css"%>
</style>
</style>
<body>
<nav>
		<div class="menu">
			<div class="logo">
				<a>Madurai Government Arts College</a>
			</div>
			<ul>
				<li><a href="/">Home</a></li>
				<li><a href="/students/addstudents">Back</a></li>
				<li><a href="/">log out</a></li>
			</ul>
		</div>
	</nav>
<br>
<br>
	<div id="root" class="center">
		<div id="form" >
			<form:form action="/details/adddetails" method="post" modelAttribute="addcarddetails">
				
				<div>
				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" class="form-control" required="true"/>
						 <form:errors path="userId" />
					</div>	
				<div>
				<div>
				<br><br>
				<div>
					<label for="courseName">CourseName</label>
					<form:select path="courseName"  class="form-control" required="true">
							<form:option value="Lawyer">Lawyer</form:option>
							<form:option value="Hotel Magement">Hotel Magement</form:option>
							<form:option value="journalit">Journalit</form:option>
							<form:option value="Fashion Designer">Fashion Designer</form:option>	
						</form:select>
						 <form:errors path="courseName" /></div>
					<br>
					<br>
				<div>
					<label for="amount">Amount</label>
					
					<div>
							<form:input path="amount" class="form-control" value="50000" readonly="true"/>
					</div>
				</div>
				<br>
				<br>
				<div>
					<label for="paymentDate">PaymentDate</label>
					<div>
						<form:input path="paymentDate" class="form-control" type="date"  required="true"  />
					</div>
				</div>
				<br>
				<br>
				<div>
					<label for="cardNumber">CardNumber</label>
					<div>
						<form:input path="cardNumber"  class="form-control" required="true" />
					</div>
				</div>
				<br>
				<br>
				<div>
					<label for="cvvNumber">CvvNumber</label>
					<div>
						<form:input path="cvvNumber"  class="form-control"  pattern="[0-9]{3}"
                            title="Please enter a valid three-digit number" required="true"/>
					  <form:errors path="cvvNumber" />
					</div>
				</div>
				<br>
				<br>
				<div>
					<label for="cardholderName">CardholderName</label>
					<div>
						<form:input path="cardholderName" class="form-control" placeholder="CardholderName"
						title="This field can't be empty or must contain only alphabets" 
						pattern="^[A-Za-z\s]*$" required="true"/>
					<form:errors path="cardholderName" />
					</div>
				</div>
               <br>
               <br>
				</div>
				<div>
					<form:button class="click-button" >Pay</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>