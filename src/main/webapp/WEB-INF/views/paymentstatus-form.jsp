<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="En">
  <head>
  <title>Payment Successfully</title>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
  </head>
<style type="text/css">
<%@include file="/WEB-INF/css/paymentstatus.css"%>
</style>
    <body> 
    <br>
    <br>
    <br>
   <div class="container">
   <div class="row">
      <div class="col-md-6 mx-auto mt-5">
         <div class="payment">
            <div class="payment_header">
               <div class="check"><i class="fa fa-check" aria-hidden="true"></i></div>
            </div>
            <div class="content">
               <h1>Payment Success !</h1>
                <p>We have received your payment!<br>Thank you for being a valued Student of Madurai Government Arts College;<br/> we'll be in touch shortly!</p>
       
               <a href="/">Go to Home</a>
               <a href="/user/addform">Login In</a>
            </div>
            
         </div>
      </div>
   </div>
</div>
    </body>
</html>	