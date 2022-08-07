<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<style type="text/css">
	body {
		font-family: Arial, Helvetica, sans-serif;
	}
	form {
		border: 3px solid #f1f1f1;
		background-color: #bbe3fa;
	}
	input[type=text], input[type=password] {
  		width: 50%;
  		padding: 12px 20px;
  		margin: 8px 0;
  		display: inline-block;
  		border: 1px solid #ccc;
 	 	box-sizing: border-box;
	}
	.container {
  		padding: 16px;
	}
	.login{
		margin-top: 100px;
		margin-left: 20px;
		margin-right: 20px;
		margin-bottom: 40px;
	}
	
</style>
<body>
<div class="login" align="center">
	<h2>Login</h2>
	
	<c:if test="${param.error != null}">
		<strong style="color: red;"> Invalid login credentials </strong>
	</c:if>
	
	<c:if test="${param.logout != null}">
		<i style="color: red;">You are successfully logout</i>
	</c:if>
	<div class="container">
		<form action=" " method="POST">
			<label for="user"><strong>Employee Id </strong></label><br/>
			<input type = "text" id ="user" name = "username" placeholder = "enter employee id" required/><br/>
			<label for="pass"><strong>Password </strong></label><br/>
			<input type = "password" id ="pass" name = "password" placeholder = "enter password" required/><br/>
			<input type="submit" value="Login" class="btn btn-info" />
		</form>
	</div>
</div>
</body>
</html>