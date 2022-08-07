<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply Leave</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href= "/payroll/URLToResources/resources/css/addLeave.css" >
<style type="text/css">
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
          <a class="nav-link navbar-brand" aria-current="page" href="employee?id=${addLeave.id}"><strong>Home</strong></a>
        </li>
        <li class="nav-item">
          <a class="nav-link navbar-brand" href="leaveReport?id=${addLeave.id}"><strong>Leave Balance</strong></a>
        </li>
      </ul>
      <form class="d-flex" action="logout">
      <button class="btn btn-outline-info" type="submit"><strong>Logout</strong></button>
    </form>
    </div>
  </div>
</nav>
	<h3 id="name">${addLeave.name}</h3>
	<h4>Apply Leave</h4>
	<hr>
	<form:form action = "leaveApply" modelAttribute="addLeave" method="POST">
			<table id="table">
				<tr>
					<td><label for="empId"><strong>Id</strong></td>
					<td><form:input path="id" id="empId"/></td>
				</tr>
				<tr>
					<td><label for="empName"><strong>Name</strong></td>
					<td><form:input path="name" id="empName"/></td>
				</tr>
				<tr>
					<td><label for="empLoc"><strong>Office_Location</strong></td>
					<td><form:input path="office_location" id="empLoc"/></td>
				</tr>
				<tr>
					<td><label for="empRole"><strong>Role</strong></td>
					<td><form:input path="role" id="empRole"/></td>
				</tr>
			</table>
			<hr>
			<br/>
			<div align="center">
			<form:form action = "leaveApply" modelAttribute="leaves" method="POST">
			<table>
				<tr>
					<td><label for="startDate"></label><strong>From</strong></td>
					<td><form:input path="start_date" id="startDate" type="date"/></td>
					<td align="center"><label for="endDate"></label><strong>To</strong></td>
					<td><form:input path="end_date" id="endDate" type="date"/></td>
					<td><strong>Leave</strong></td>
					<td>
						<form:select path="leave_type">
							<form:option value="select"/>
							<form:option value="Casual Leave" path="casual_leave"/>
							<form:option value="Earned Leave" path="earned_leave"/>
							<form:option value="Sick Leave" path="sick_leave"/>
							<form:option value="Flexi Leave" path="flexi_leave"/>
						</form:select>
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<input class="btn btn-info" type="submit" value="Apply"/>
			</form:form>
			</div>
		</form:form>
</body>
</html>