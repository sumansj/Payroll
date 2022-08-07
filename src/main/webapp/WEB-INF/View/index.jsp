<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style type="text/css">
	.index{
		margin-top: 200px;
		margin-right: 40px;
		margin-bottom: 80px;
		margin-left: 20px;
		text-align: center;
		font-size: x-large;
		font-weight: bold;
	}
	body{
		background-image: url("/payroll/URLToResources/resources/image/Office-back.webp");
	}
</style>
</head>
<body>
	<div class="index">
		<sec:authorize access='hasAuthority("Admin")'>
			<a href="admin">Admin</a><br>
		</sec:authorize>
		<sec:authorize access='hasAuthority("User")'>
			<a href="employee?id=${username}">My Profile</a><br>
			<a href="logout">Logout</a>
		</sec:authorize>
	</div>
</body>
</html>

<!-- <div id="app"></div>
	<script src="/Payroll/URLToReach/resources/ main.js"></script> -->