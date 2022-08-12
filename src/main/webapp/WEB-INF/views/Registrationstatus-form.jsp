<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="En">
<head>
<meta charset="ISO-8859-1">
<title>Registration status</title>
<style>
.iframe {
    position: absolute;
     top:65%;
    right: 0%;
    width: 500px;
    height: 500px;
    margin-top: -400px;
    margin-right: 20px;
    z-index: 999;
    border-radius:20px;
}
</style>
</head>
<body>
<h1>Your registration has been completed successfully.</h1>

<iframe src="/details/list" height="450" width="1000" title="Iframe Example"></iframe>

</body>
</html>