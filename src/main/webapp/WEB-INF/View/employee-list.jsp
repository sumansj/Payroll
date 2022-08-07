<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href= "/payroll/URLToResources/resources/css/employee-list.css" >
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
          <a class="nav-link navbar-brand" href="add"><strong>Add Employee</strong></a>
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
<div class="tables">
	<h2>Employee Details</h2>
	<table border="1" class="table table-hover">
		<thead>
			<tr>
				<td><strong>ID</strong></td>
				<td><strong>NAME</strong></td>
				<td><strong>DEPARTMENT</strong></td>
				<td><strong>EMAIL</strong></td>
				<td><strong>MOBILE</strong></td>
				<td><strong>ROLE</strong></td>
				<td><strong>OFFICE_LOCATION</strong></td>
				<td><strong>ADDRESS</strong></td>
				<td><strong>HIRE_DATE</strong></td>
				<td><strong>END_DATE</strong></td>
				<td><strong>STATUS</strong></td>
				<td><img src="/payroll/URLToResources/resources/image/edit-logo.jpg" alt="" width="25" height="25" class="d-inline-block align-text-top"></td>
				<td><img src="/payroll/URLToResources/resources/image/salary-icon.jpg" alt="" width="30" height="25" class="d-inline-block align-text-top"></td>
			</tr>
		</thead>
		<c:forEach var="elist" items="${list}">
			<tr>
				<td>${elist.id}</td>
				<td>${elist.name}</td>
				<td>${elist.department}</td>
				<td>${elist.email}</td>
				<td>${elist.mobile}</td>
				<td>${elist.role}</td>
				<td>${elist.office_location}</td>
				<td>${elist.address}</td>
				<td>${elist.hire_date}</td>
				<td>${elist.end_date}</td>
				<td>${elist.status}</td>
				<td><a href="update?id=${elist.id}">EDIT</a></td>
				<!--  <td><a href="delete?id=${elist.id}" onclick="if(!(confirm('Are you sure you want to delete the record?')))">DELETE</a></td>-->
				<td><a href="addSalary?id=${elist.id}">ADD SALARY</a></td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>