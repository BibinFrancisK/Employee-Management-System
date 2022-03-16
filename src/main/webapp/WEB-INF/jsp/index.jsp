<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
<head>
<title>Employee Management System</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
	<div class="container my-2">
		<h1>Employee Management System</h1>
		<hr>
		<h2>List of Employees</h2>
		<hr>
		<a href="addNewEmployeeForm" class="btn btn-primary btn-sm mb-3">Add Employee</a>
		<table border="1" class="table table-striped table-responsive-md">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>DOB</th>
					<th>Age</th>
					<th>Salary</th>
					<th>Status</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
			 <c:forEach items="${listEmployees}" var="employee">
			 <tr>
					<td> <c:out value="${employee.ID}"></c:out></td>
					<td> <c:out value="${employee.name}"></c:out></td>
					<td> <c:out value="${employee.email}"></c:out></td>
					<td><fmt:formatDate value="${employee.DOB}" type="date" pattern="dd-MMM-yyyy"/></td>				
					<td> <c:out value="${employee.age}"></c:out></td>
					<td> <c:out value="${employee.salary}"></c:out></td>
					<td> <c:out value="${employee.strStatus}"></c:out></td>
					<td><a
						href="showFormForUpdate/${employee.ID}"
						class="btn btn-primary">Update</a> <a
						href="deleteEmployee/${employee.ID}"
						class="btn btn-danger">Delete</a></td>
			</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>