<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body bgcolor="pink">
	<%@ include file="header.html" %>

	<table>
		<tr>
			<th>customer_Id</th>
			<th>customer_Name</th>
			<th>Birthdate</th>
			<th>Countrycode</th>
			<th>PhoneNo</th>
			<th>Email</th>
			<th>Address</th>
			<th>Gender</th>
			<th>IdType</th>
			<th>IdNumber</th>
			<th>Nationality</th>
			
			
			
			
		</tr>
	
	<c:forEach var="p" items="${sessionScope.customerList}">
	
		<tr>
			<td>${c.customer_Id} </td>
			<td>${c.customer_Name}</td>
			<td>${c.Birthdate} </td>
			<td>${c.Countrycode}</td>
			<td>${c.PhoneNo}</td>
			<td>${c.Email}</td>
			<td>${c.Address}</td>
			<td>${c.Gender}</td>
			<td>${c.IdType}</td>
			<td>${c.IdNumber}</td>
			<td>${c.Nationality}</td>
			
			
			
			
			<td><a href="edit?customer_Id=${c.customer_Id}&name=${c.customer_Name}&Birthdate=${c.Birthdate}&Countrycode=${c.Countrycode}&PhoneNo=${c.PhoneNo}&Email=${c.Email}&Address=${c.Address}&Gender=${c.Gender}&IdType=${c.IdType}&IdNumber=${c.IdNumber}&Nationality=${c.Nationality}">Edit</a></td> 
			
			<td><a href="delete?customer_Id=${c.customer_Id}&name=${c.customer_Name}&Birthdate=${c.Birthdate}&Countrycode=${c.Countrycode}&PhoneNo=${c.PhoneNo}&Email=${c.Email}&Address=${c.Address}&Gender=${c.Gender}&IdType=${c.IdType}&IdNumber=${c.IdNumber}&Nationality=${c.Nationality}">Delete</a></td> 
			
			
		</tr>
	
	</c:forEach>
	

	</table>
	<%@ include file="footer.html" %>

</body>
</html>