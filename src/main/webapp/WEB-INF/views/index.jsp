<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body>
<h1>Madurai Government Arts College</h1>
<ul class="nav nav-tabs nav-dark bg-success">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/students/addstudents">Sign up now</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/course/list">Course Details</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="/admin/login">Admin login</a>
  </li>
</ul>
<br>
<img src="https://www.bankrate.com/2014/05/26174958/Reasons-to-go-to-college.jpg?auto=webp&optimize=high&crop=16:9 class="img-fluid" alt="...">
<br>
<br>
<div class="card text-center" >
  <div class="card-header" >
  </div>
  <div class="card-body">
    <h5 class="card-title-bg-success mb-3">Admission is available right now.</h5>
    <p class="card-text">Take advantage of these fantastic opportunities</p>
    <a href="/students/addstudents" class="btn btn-primary">Register today</a>
  </div>
  <div class="card-footer text-muted">
   100% placement opportunities
  </div>
</div>
<div class="row">
  <div class="col-sm-6">
    <div class="card dark">
      <div class="card-body">
        <h1 class="card-title text-danger">Vision</h1>
        <p class="card-text">To Make this Institution the unique of its kind in the field of Research and Development activities in this part of world.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h1 class="card-title text-danger">Quality Policy</h1>
        <p class="card-text">Committed to impart Quality Technical Education imbibed with proficiency, human values and continual improvement.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
</div>
<a href="/students/list">List of student</a><br>
<a href="/students/addstudents">Add Student</a>	
<br>
<a href="/course/list">Course list</a>	
<br>
<a href="/details/carddetails">Add card details</a>	
<br>
<a href="/students/getidbystudent?id=2" >get by id student course details</a>
<br>
<a href="/admin/login" >Admin login </a><br>
<a href="/details/carddetails" >payment </a><br>
<a href="/details/list" >payment list </a><br>
<a href="/studentcourse/list">Student Course list </a><br>
<br>
<a href="/studentcourse/addform">Student Course list </a>
<br>
<br>
<a href="/students/updatestudentdetails?id=10">Student Course list </a>
<br>
<br>
	<a href="/students/updatestudentdetails?id=${Student.userid}">Edit</a>
	<ul class="nav">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Active</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled">Disabled</a>
  </li>
</ul>
</body>
</body>
</html>