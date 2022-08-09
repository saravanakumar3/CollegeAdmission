<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin page</title>
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
    <a class="nav-link" href="/students/addstudents">Add students</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/students/list"> Students list</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/admincourse/addcourse">Add course</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="/admincourse/list">Course Details</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/studentcourse/list">Student Course Detail list</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="/studentcourse/addform"> Add Student Course Details</a>
  </li>
</ul>
<br>
</body>
</html>