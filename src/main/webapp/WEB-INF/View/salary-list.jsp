<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Salary Report</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href= "/payroll/URLToResources/resources/css/salary-list.css" >
<style type="text/css">
	body{
		
		background-image: url("/payroll/URLToResources/resources/image/gold-coins.webp");
		
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
          <a class="nav-link navbar-brand" aria-current="page" href="admin"><strong>Home</strong></a>
        </li>
      </ul>
      <form class="d-flex" action="logout">
      <button class="btn btn-outline-info" type="submit"><strong>Logout</strong></button>
    </form>
    </div>
  </div>
</nav>
<div class="table">
	<h2 align="center">Salary Report</h2>
	<div class="forms">
		<form:form action="empReports"  method="GET">
			<input type="submit" style="float:left;" class="btn btn-info" value="ADD MORE"/>
		</form:form>
		<form:form action="empReports"  method="GET">
			<input type="submit" style="float:right;" class="btn btn-info" value="ADD MORE"/>
		</form:form>
	</div>
	<br/>
	<table border="1" class="table table-hover">
		<thead>
			<tr>
				<td><strong>ID</strong></td>
				<td><strong>NAME</strong></td>
				<td><strong>OFFICE LOCATION</strong></td>
				<td><strong>MONTH</strong></td>
				<td><strong>DAYS PAID</strong></td>
				<td><strong>LEAVES</strong></td>
				<td><strong>ACCOUNT NUMBER</strong></td>
				<td><strong>BASIC SALARY</strong></td>
				<td><strong>HOUSE RENT</strong></td>
				<td><strong>MISCELLANOUS</strong></td>
				<td><strong>PERFORMANCE PAY</strong></td>
				<td><strong>PROVIDENT FUND</strong></td>
				<td><strong>HEALTH INSURANCE</strong></td>
				<td><strong>TOTAL SALARY</strong></td>
				<td><strong>NET SALARY</strong></td>
			</tr>
		</thead>
		<c:forEach var="sList" items="${sList}">
			<tr>
				<td><strong>${sList.id}</strong></td>
				<td><strong>${sList.name}</strong></td>
				<td><strong>${sList.office_location}</strong></td>
				<td><strong>${sList.month}</strong></td>
				<td><strong>${sList.days_paid}</strong></td>
				<td><strong>${sList.leaves}</strong></td>
				<td><strong>${sList.account_no}</strong></td>
				<td><strong>${sList.basic_salary}</strong></td>
				<td><strong>${sList.house_rent}</strong></td>
				<td><strong>${sList.miscellanous}</strong></td>
				<td><strong>${sList.performance_pay}</strong></td>
				<td><strong>${sList.provident_fund}</strong></td>
				<td><strong>${sList.health_insurance}</strong></td>
				<td><strong>${sList.total_salary}</strong></td>
				<td><strong>${sList.total}</strong></td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>