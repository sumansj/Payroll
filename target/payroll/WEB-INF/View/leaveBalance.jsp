<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leave Balance</title>
<link rel="stylesheet" type="text/css" href= "/payroll/URLToResources/resources/css/leaveBalance.css" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">
	h3{
		margin-top: 100px;
		margin-left: 60px;
		font-family: cursive;
		font-style: italic;
	}
	#date{
		font-size: large;
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
          <a class="nav-link navbar-brand" aria-current="page" href="employee?id=${leaveReport.id}"><strong>Home</strong></a>
        </li>
        <li class="nav-item">
          <a class="nav-link navbar-brand" href="addLeave?id=${leaveReport.id}"><strong>Apply Leave</strong></a>
        </li>
        <!--  <li class="nav-item">
          <a class="nav-link navbar-brand" href="leaveReport?id=${aEmployee.id}"><strong>Leave</strong></a>
        </li>-->
      </ul>
      <form class="d-flex" action="logout">
      <button class="btn btn-outline-info" type="submit"><strong>Logout</strong></button>
    </form>
    </div>
  </div>
</nav>
	<h3>My Leave Balance Report (<span id="date"></span>)</h3>
	<script type="text/javascript" src="/payroll/URLToResources/resources/js/leaveBalance.js"></script>
	<hr>
	<div>
		<table  class="table-secondary" style="width: 50%">
			<tr>
				<td><strong>Employee Id : </strong></td>
				<td>${leaveReport.id}</td>
			</tr>
			<tr >
				<td><strong>Employee Name : </strong></td>
				<td>${leaveReport.name}</td>
			</tr>
			<tr>
				<td><strong>Role : </strong></td>
				<td>${leaveReport.role}</td>
			</tr>
			<tr>
				<td><strong>Location : </strong></td>
				<td>${leaveReport.office_location}</td>
			</tr>
		</table>
	</div>
	<hr>
	<div align="center">
		<table class="table table-success table-striped" style="width: 50%">
			<tr>
				<td><strong>Casual Leaves : </strong></td>
				<td>${leaveReport.casual_leave}</td>
			</tr>
			<tr >
				<td><strong>Earned Leaves : </strong></td>
				<td>${leaveReport.earned_leave}</td>
			</tr>
			<tr>
				<td><strong>Sick Leaves : </strong></td>
				<td>${leaveReport.sick_leave}</td>
			</tr>
			<tr>
				<td><strong>Flexi Leaves : </strong></td>
				<td>${leaveReport.flexi_leave}</td>
			</tr>
			<tr>
				<td><strong>Total Leaves : </strong></td>
				<td>${leaveReport.total_leave}</td>
			</tr>
		</table>
	</div>
</body>
</html>