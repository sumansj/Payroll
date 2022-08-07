<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href= "/payroll/URLToResources/resources/css/recordUpdate.css" >
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
          <a class="nav-link navbar-brand" href="empReports"><strong>Employee</strong></a>
        </li>
      </ul>
      <form class="d-flex" action="logout">
      <button class="btn btn-outline-info" type="submit"><strong>Logout</strong></button>
    </form>
    </div>
  </div>
</nav>
<div align="center">
	<h2>Edit</h2>
	<hr>
	<form:form action="success" modelAttribute="employee" method="POST">
		<table>
			<thead>
				<tr>
					<td><strong>ID</strong></td>
					<td><form:input path="id" id="empid" />
				</tr>
				<tr>
					<td><strong>NAME</strong></td>
					<td><form:input path="name" id="empName" /></td>
				</tr>
				<tr>
					<td><strong>DEPARTMENT</strong></td>
					<td><form:input path="department" id="empDepart" /></td>
				</tr>
				<tr>
					<td><strong>EMAIL</strong></td>
					<td><form:input path="email" id="empemail" /></td>
				</tr>
				<tr>
					<td><strong>MOBILE</strong></td>
					<td><form:input path="mobile" id="empcontact" /></td>
				</tr>
				<tr>
					<td><strong>ROLE</strong></td>
					<td><form:input path="role" id="emprole" /></td>
				</tr>
				<tr>
					<td><strong>OFFICE_LOCATION</strong></td>
					<td><form:input path="office_location" id="emploc" /></td>
				</tr>
				<tr>
					<td><strong>ADDRESS</strong></td>
					<td><form:input path="address" id="empaddress" /></td>
				</tr>
				<tr>
					<td><strong>HIRE_DATE</strong></td>
					<td><form:input path="hire_date" id="empdate" type="date" /></td>
				</tr>
				<tr>
					<td><strong>END_DATE</strong></td>
					<td><form:input path="end_date" id="empdate1" type="date" /></td>
				</tr>
				<tr>
					<td><strong>STATUS</strong></td>
					<td><form:input path="status" id="empStatus" /></td>
				</tr>
			</thead>
		</table>
		<br/>
		<input class="btn btn-outline-info" type="submit" value="Save">
	</form:form>
</div>
</body>
</html>