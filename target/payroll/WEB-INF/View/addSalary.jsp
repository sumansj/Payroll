<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Salary</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href= "/payroll/URLToResources/resources/css/addSalary.css" >
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
          <a class="nav-link navbar-brand" aria-current="page" href="admin"><strong>Home</strong></a>
        </li>
        <li class="nav-item">
          <a class="nav-link navbar-brand" href="salaryReports"><strong>Salary</strong></a>
        </li>
      </ul>
      <form class="d-flex" action="logout">
      <button class="btn btn-outline-info" type="submit"><strong>Logout</strong></button>
    </form>
    </div>
  </div>
</nav>
	<div class="table">
	<h2>ADD Salary</h2>
	<hr>
		<form:form action = "saveSalary" modelAttribute="employee" method="POST">
			<table align="center" class="table-light">
				<tr>
					<td><label for="empId"><strong>Id</strong></td>
					<td><form:input path="id" id="empId"/></td>
				</tr>
				<tr>
					<td><label for="empName"><strong>Name</strong></td>
					<td><form:input path="name" id="empName"/></td>
				</tr>
				<tr>
					<td><label for="empRole"><strong>Role</strong></td>
					<td><form:input path="role" id="empRole"/></td>
				</tr>
				<tr>
					<td><label for="empLoc"><strong>Office_Location</strong></td>
					<td><form:input path="office_location" id="empLoc"/></td>
				</tr>
			</table>
			<hr>
			<form:form action = "saveSalary" modelAttribute="salary" method="POST">
			<table align="center" class="table-light">
				<tr>
					<td><label for="empMonth"><strong>Month</strong></td>
					<td>
						<form:select path="month">
							<form:option value="select"/>
							<form:option value="January"/>
							<form:option value="February"/>
							<form:option value="March"/>
							<form:option value="April"/>
							<form:option value="May"/>
							<form:option value="June"/>
							<form:option value="July"/>
							<form:option value="August"/>
							<form:option value="September"/>
							<form:option value="October"/>
							<form:option value="November"/>
							<form:option value="December"/>
						</form:select>
					</td>
				</tr>
				<tr>
					<td><label for="empDays"><strong>Days Paid</strong></td>
					<td><form:input path="days_paid" id="empDays"/></td>
				</tr>
				<tr>
					<td><label for="empLeave"><strong>Leaves</strong></td>
					<td><form:input path="leaves" id="empLeave"/></td>
				</tr>
				<tr>
					<td><label for="empAccount"><strong>Account Number</strong></td>
					<td><form:input path="account_no" id="empAccount"/></td>
				</tr>
				<tr>
					<td><label for="empBasic"><strong>Basic Salary</strong></td>
					<td><form:input path="basic_salary" id="empBasic"/></td>
				</tr>
				<tr>
					<td><label for="empHouse"><strong>House Rent Allowance</strong></td>
					<td><form:input path="house_rent" id="empHouse"/></td>
				</tr>
				<tr>
					<td><label for="empMis"><strong>Miscellanous</strong></td>
					<td><form:input path="miscellanous" id="empMis"/></td>
				</tr>
				<tr>
					<td><label for="empPerf"><strong>Performance Pay</strong></td>
					<td><form:input path="performance_pay" id="empPerf"/></td>
				</tr>
				<tr>
					<td><label for="empPf"><strong>Provident Fund Percentage</strong></td>
					<td><form:input path="pfPercentage" id="empPf"/></td>
				</tr>
				<tr>
					<td><label for="empHelth"><strong>Health Insurance</strong></td>
					<td><form:input path="health_insurance" id="empHelth"/></td>
				</tr>
			</table>
			<br/>
			<input class="btn btn-info" type="submit" value="Save"/>
			</form:form>
		</form:form>
	</div>
</body>
</html>