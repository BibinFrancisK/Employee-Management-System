<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
<style>  
.error {
        color: red;
    }
 </style> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>Employee Management System</h1>
		<hr>
		<h2>Update employee details</h2>
		<hr>
		<form:form method="POST" action="/saveEmployee"
			modelAttribute="employee">
			<form:hidden path="ID" />
			<table>
				<tr>
					<td><form:label path="name">Name</form:label></td>
					<td><form:input path="name" class="form-control"/></td>
					<td><form:errors path="name" cssClass="error"/>
				</tr>		
				<tr>
					<td><form:label path="email">Email</form:label></td>
					<td><form:input path="email" class="form-control"/></td>
					<td><form:errors path="email" cssClass="error"/>
				</tr>		
				<tr>
					<td><form:label path="DOB">DOB (min. 18 years)</form:label></td>
					<td><form:input type="date" path="DOB" class="form-control"/></td>
				</tr>			
				<tr>
					<td><form:label path="salary">Salary</form:label></td>
					<td><form:input path="salary" class="form-control"/></td>
					<td><form:errors path="salary" cssClass="error"/>
				</tr>			
				<tr>
				<td><form:label path="strStatus">Gender</form:label></td>
		         <td>
		         	<form:radiobutton path="strStatus" value="Enabled" />Enabled
		          	<form:radiobutton path="strStatus" value="Disabled"/>Disabled
		          </td>
				</tr>				
				<tr>
					<td><input type="submit" value="Submit" class="btn btn-info col-6"/></td>
				</tr>
			</table>
		</form:form>
		<hr>
		<a href="/"> Back to Employee List</a>
	</div>
</body>
</html>