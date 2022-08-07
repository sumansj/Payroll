<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payslip</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href= "/payroll/URLToResources/resources/css/paySlip.css" >
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
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link navbar-brand" aria-current="page" href="employee?id=${sList.id}"><strong>Home</strong></a>
        </li>
      </ul>
      <form class="d-flex" action="logout">
      <button class="btn btn-outline-info" type="submit"><strong>Logout</strong></button>
    </form>
    </div>
  </div>
</nav>
	<div align="center">
		<h1><strong>PAYSLIP</strong></h1>
		<h2>${sList.month}</h2>
	</div>
	<div align="center">
		<table border ="1px" class="Tables1" style="width: 50%">
			<tr>
				<th style="width:25%"><strong>EMPLOYEE DETAILS</strong></th>
				<th style="width:25%"><strong>LEAVE DETAILS</strong></th>
			</tr>
			<tr>
				<td style="width:25%"><strong>Employee Id</strong>:${sList.id}</td>
				<td style="width:25%"><strong>Earned Leave</strong>:${leaveList.earned_leave}</td>
			</tr>
			<tr>
				<td style="width:25%"><strong>Name</strong>:${sList.name}</td>
				<td style="width:25%"><strong>Casual Leave</strong>:${leaveList.casual_leave}</td>
			</tr>
			<tr>
				<td style="width:25%"><strong>Role</strong>:${sList.role}</td>
				<td style="width:25%"><strong>Sick Leave</strong>:${leaveList.sick_leave}</td>	
			</tr>
			<tr>
				<td style="width:25%"><strong>Location</strong>:${sList.office_location}</td>
				<td style="width:25%"><strong>Flexi Leave</strong>:${leaveList.flexi_leave}</td>
			</tr>
			<tr>
				<td style="width:25%"><strong>Days Paid</strong>:${sList.days_paid}</td>
				<td style="width:25%"><strong>Total Leave</strong>:${leaveList.total_leave}</td>
			</tr>
		</table>
		<br/>
		<table  class="Tables" style="width: 50%">
			<tr>
				<th><strong>PAYMENT DETAILS</strong></th>
			</tr>
		</table>
		<table border="1px" class="Tables" style="width:50%">
			<tr>
				<td style="width:25%"><strong>Account No.</strong>:${sList.account_no}</td>
				<td style="width:25%"><strong>Provident Fund Percentage</strong>:${sList.pfPercentage}%</td>
			</tr>
			<tr>
				<td style="width:25%"><strong>Basic Salary</strong>:${sList.basic_salary}</td>
				<td style="width:25%"><strong>House Rent</strong>:${sList.house_rent}</td>
			</tr>
			<tr>
				<td style="width:25%"><strong>Miscellanous</strong>:${sList.miscellanous}</td>
				<td style="width:25%"><strong>Performance Pay</strong>:${sList.performance_pay}</td>
			</tr>
			<tr>
				<td style="width:25%"><strong>Provident Fund</strong>:${sList.provident_fund}</td>
				<td style="width:25%"><strong>Health Insurance</strong>:${sList.health_insurance}</td>
			</tr>
			<tr>
				<td style="width:25%"><strong>Total Salary</strong>:${sList.total_salary}</td>
				<td style="width:25%"><strong>Net Pay</strong>:${sList.total}</td>
			</tr>
		</table>
	</div>
	<img src="/payroll/URLToResources/resources/image/logo-social.png" alt="" width="300px" height="150px" class="image">
</body>
</html>