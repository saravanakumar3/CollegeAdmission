<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Admin page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style >
body {
	background-image:
url("https://thumbs.dreamstime.com/b/admin-message-working-office-table-background-93379017.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
 font-family: Arial, Helvetica, sans-serif;
}
.navbar {
   overflow: hidden; 
  background-color:#E0E0D1;
}
.navbar a {
  float: left;
  font-size: 20px;
  color: #109BDC;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 20px;  
  border: none;
  outline: none;
  color: #109BDC;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}</style>
</head>
<body>
<h1>Madurai Government Arts College</h1>

<div class="navbar">
 <a href="/">Home</a>
   <a href="/studentcourse/addform">Payment Update</a>
  <div class="dropdown">
    <button class="dropbtn">List  
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/students/list">Students list</a>
      <a href="/admincourse/list">Course list</a>
      <a href="/studentcourse/list">Student Course Detail list</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Admin Feature  
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="/admin/addstudents">Add Student</a>
      <a href="/admincourse/addcourse">Add Course</a>
      <a href="/studentcourse/addform">Payment Update</a>
    </div>
  </div> 
</div>

</body>
</html>