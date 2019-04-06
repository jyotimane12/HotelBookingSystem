<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>${addCustomer}</h2>
	
	 <div class="custcontainer">
  
  	<form name="deleteForm"action="deleteCust" method="post">
  	
  		<label for="cid">CustId:</label>
		<input type="number" name="customer_Id" id="cid" value="${param.Id}" readonly>
		
		<label for="cnm">CustName:</label>
		<input type="text" name="customer_Name" id="cnm" value="${param.name}" readonly>
		
		<label for="cbirthdate">Birthdate:</label>
		<input type="date" name="" id="cbirthdate" value="${param.date}"readonly>
		
		
		<label for="ccode">Countrycode:</label>
		<input type="number" name="" id="ccode" value="${param.date}"readonly>
		
		 
		 <label for="cphno">PhoneNo:</label>
		<input type="number" name="" id="cphno" value="${param.phoneNo}" readonly>
		
		
		
		<label for="emailId">Email:</label>
		<input type="email" name="email" id="emailId" value="${param.email}"readonly>
		
		
		<label for="caddr">Address:</label>
		<input type="text" name="address" id="caddr" value="${param.address}"readonly>
		
		<label for="cgender">Gender:</label>
		<input type="text" name="gender" id="cgender" value="${param.gender}"readonly>
		
		<label for="cidtype">IdType:</label>
		<input type="text" name="type" id="cidtype" value="${param.idtype}"readonly>
		
		<label for="cidnum">IdNumber:</label>
		<input type="number" name="" id="cidnum" value="${param.idnumber}"readonly>
		
		<label for="cnationality">Nationality:</label>
		<input type="text" name="" id="cnationality" value="${param.nationality}"readonly>
		
		
		
		
		
		 <input type="submit" value="Are you sure to delete">

	</form>

</body>
</html>