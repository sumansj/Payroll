<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leave</title>
</head>
<body>
	<div>
		<form:form action = "leaveUpdate" modelAttribute="employee" method="POST">
			<table>
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
			<form:form action = "leaveUpdate" modelAttribute="leave" method="POST">
				<table>
					<tr>
						<td><label for="leaveDate"><strong>Leave Date</strong></td>
						<td><form:input path="Date_Of_leave" id="leaveDate"type="date"/></td>
					</tr>
					<tr>
						<td><strong>Leaves:</strong></td>
						<td>
							<form:select path="types_leave">
								<form:option value="Select"></form:option>
								<form:option value="Casual Leave" path="casual_leave"></form:option>
								<form:option value="Earned Leave" path="earned_leave"></form:option>
								<form:option value="Sick Leave" path="sick_leave"></form:option>
								<form:option value="Flexi Leave" path="flexi_leave"></form:option>
							</form:select>
						</td>
					</tr>
				</table>
				<br/>
				<input type="submit" value="APPLY"/>			
			</form:form>
		</form:form>
	</div>
</body>
</html>