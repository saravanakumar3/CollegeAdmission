<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Admin page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
<%@include file="/WEB-INF/css/admin-page.css"%>
</style>
</head>
<body>
<h1>Madurai Government Arts College</h1>
<div class="navbar">
 <a href="/">Log Out</a>

  <div class="dropdown">
    <button class="dropbtn">List  
      <i class="fa fa-caret-down"></i> 
    </button>
    <div class="dropdown-content">
      <a href="/students/list">Students list</a>
      <a href="/details/list">Playment List</a>
      <a href="/studentcourse/list">Student Course Detail list</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Admin Feature  
      <i class="fa fa-caret-down"></i> 
    </button>
    <div class="dropdown-content">
     <a href="/admin/addstudents">Add Student</a>
     
    </div>
  </div> 
</div>
</body>
</html>