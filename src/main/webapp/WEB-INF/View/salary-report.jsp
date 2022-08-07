<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Salary Detail</title>
<link rel="stylesheet" type="text/css" href= "/payroll/URLToResources/resources/css/salary-report.css" >
</head>
<body>
	<h1>Please select the month below.</h1>
	<div align="center" class="table">
	<table border = "1">
		<c:forEach var = "salaryList" items = "${list}">
			<tr>
				<td>${salaryList.month}</td>
				<td><a href="payslipReport?id=${salaryList.id}&month=${salaryList.month}" >Show</a></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>