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
<style>
.center {
	width: 60%;
	height: 100%;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	background-color: #B1BECD ;
}
.form-control {
	width:350px;
	height: 25px;
	height: 240px
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
.click-button{
	width:350px;
	height: 25px;
	height: 240px
	border: none;
	border-radius: 3px;
	padding-left: 8px;
	background-color: #9E9B45 ;
}
</style>
<body>
<br>
<br>
<br>
	<div id="root" class="center">
		<div id="form" align="center">
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
						 <br><br>
				<div>
					<label for="name">UserName</label>
					<div>
						<form:input path="name" class="form-control" placeholder="User Name"
						title="This field can't be empty or must contain only alphabets" 
						pattern="^[A-Za-z\s]*$" required="true"/>
						 <form:errors path="name" />
					</div>	
					<br>
					<br>

				<div>
					<label for="phoneNumber">PhoneNumber</label>
					<div>
						<form:input path="phoneNumber" class="form-control"  placeholder ="PhoneNumber" pattern="[1-9]{1}[0-9]{9}"
                            title="Phone number should have atleast 10 digits and start with 9 or 1"
                            required="true" />
					</div>	
					</div>
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