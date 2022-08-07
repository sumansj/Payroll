<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EmployeeProfile</title>
<link rel="stylesheet" type="text/css" href= "/payroll/URLToResources/resources/css/employeePage.css" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">
	h1{
		margin-top: 80px;
		margin-right: 20px;
	}
</style>
</head>
<body>
<nav class="navbar fixed-top navbar-expand-lg navbar-light" style="background-color:#bbe3fa;">
  <div class="container-fluid">
    <img src="/payroll/URLToResources/resources/image/logo-social.png" alt="" width="90" height="50" class="d-inline-block align-text-top">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link navbar-brand" aria-current="page" href="employee?id=${aEmployee.id}"><strong>Home</strong></a>
        </li>
        <li class="nav-item">
          <a class="nav-link navbar-brand" href="showSalary?id=${aEmployee.id}"><strong>Pay Slip</strong></a>
        </li>
        <li class="nav-item">
          <a class="nav-link navbar-brand" href="leaveReport?id=${aEmployee.id}"><strong>Leave</strong></a>
        </li>
      </ul>
      <form class="d-flex" action="logout">
      <button class="btn btn-outline-info" type="submit"><strong>Logout</strong></button>
    </form>
    </div>
  </div>
</nav>
	<div align="center">
		<h1 align="right"><span>${aEmployee.name}</span></h1>
		<h2>My Profile</h2><br/>
		<table  class="table-secondary" style="width: 50%">
			<tr>
				<td><strong>Employee Id : </strong></td>
				<td>${aEmployee.id}</td>
			</tr>
			<tr >
				<td><strong>Employee Name : </strong></td>
				<td>${aEmployee.name}</td>
			</tr>
			<tr>
				<td><strong>Department : </strong></td>
				<td>${aEmployee.department}</td>
			</tr>
			<tr>
				<td><strong>Employee Email : </strong></td>
				<td>${aEmployee.email}</td>
			</tr>
			<tr>
				<td><strong>Employee Contact : </strong></td>
				<td>${aEmployee.mobile}</td>
			</tr>
			<tr>
				<td><strong>Role : </strong></td>
				<td>${aEmployee.role}</td>
			</tr>
			<tr>
				<td><strong>Location : </strong></td>
				<td>${aEmployee.office_location}</td>
			</tr>
			<tr>
				<td><strong>Address : </strong></td>
				<td>${aEmployee.address}</td>
			</tr>
			<tr>
				<td><strong>Hire Date : </strong></td>
				<td>${aEmployee.hire_date}</td>
			</tr>
			<tr>
				<td><strong>Status : </strong></td>
				<td>${aEmployee.status}</td>
			</tr>
		</table>
	</div>
</body>
</html>