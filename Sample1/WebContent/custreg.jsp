<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="popnewreg.jsp">
<h3>CUSTOMER REGISTRATION FORM</h3>
	<table align="center" cellpadding="10">

		<!----- First Name ---------------------------------------------------------->
		<tr>
			<td>FIRST NAME</td>
			<td><input type="text" name="First_Name" maxlength="30" required="required" /> 
				</td>
		</tr>


		<!----- Last Name ---------------------------------------------------------->
		<tr>
			<td>LAST NAME</td>
			<td><input type="text" name="Last_Name" maxlength="30" required="required" /> 
				</td>
		</tr>

		<!----- Date Of Birth -------------------------------------------------------->
	
			

		<tr>
			<td>BIRTHDATE</td>
			<td><input type="date" name="BirthDate" maxlength="100" required="required" /></td>
		</tr>

		<!----- Email Id ---------------------------------------------------------->
		<tr>
			<td>EMAIL ID</td>
			<td><input type="email" name="emailaddress" required="required"></td>
		</tr>

		
		<!----- Country Code -------------------------------------------------------->
		<tr>
			<td>COUNTRY CODE</td>

			<td><select name="Country_Code" id="Country_Code">
					
		<option data-countryCode="IN" value="+91">India (+91)</option>
		<option data-countryCode="USA" value="+1">USA(+1)</option>
		<option data-countryCode="Mexico" value="+52">Mexico(+52)</option>
		<option data-countryCode="China" value="+86">China(+86)</option>
		<option data-countryCode="japan" value="+81">japan(+81)</option>
		
		<!----- Mobile Number ---------------------------------------------------------->
		<tr>
			<td>MOBILE NUMBER</td>
			<td><input type="tel" pattern="[0-9]{10}"name="Mobile_Number" maxlength="10" required="required" />
				</td>
		</tr>

		<!----- Alternate Mobile Number ---------------------------------------------------------->
		<tr>
			<td>ALTERNATE MOBILE NUMBER</td>
			<td><input  type="tel" pattern="[0-9]{10}" name="Alternate_Mobile_Number"
				maxlength="10" /> </td>
		</tr>


		<!----- Gender ----------------------------------------------------------->
		<tr>
			<td>GENDER</td>
			<td>Male <input type="radio" name="Gender" value="Male" />
				Female <input type="radio" name="Gender" value="Female" />
				other <input type="radio" name="Gender" value="Other" />
			</td>
		</tr>

		<!----- Address ---------------------------------------------------------->
		<tr>
			<td>ADDRESS <br />
			<br />
			<br /></td>
			<td><textarea name="Address" rows="4" cols="30"></textarea></td>
		</tr>

		<!----- City ---------------------------------------------------------->
		<tr>
			<td>CITY</td>
			<td><input type="text" name="City" maxlength="30" />  
				</td>
		</tr>

		<!----- Pin Code ---------------------------------------------------------->
		<tr>
			<td>PIN CODE</td>
			<td><input type="text" name="Pin_Code" maxlength="6" /></td>
		</tr>

		<!----- State ---------------------------------------------------------->
		<tr>
			<td>STATE</td>
			<td><input type="text" name="State" maxlength="30" /> 
				</td>
		</tr>

		<!----- Country ---------------------------------------------------------->
		<tr>
			<td>COUNTRY</td>
			<td><input type="text" name="Country" 
				 ></td>
		</tr>

		<!----- Id Type ----------------------------------------------------------->
		<tr>
			<td>ID TYPE</td>
			<td>Adhaar Card <input type="radio" name="ID Type" value="Adhaar Card" />
				Pan Card <input type="radio" name="ID Type" value="Pan Card " />
				OTHER <input type="text" name="ID Type"   />
			</td>
			<td>ID NUMBER</td>
			<td>Number <input type="TEXT" name="Gender" />
		</tr>




		<!----- Submit and Reset ------------------------------------------------->
		<tr>
			<td colspan="2" align="center"><input type="submit" value="submit" href="popnewreg.jsp">
			 <input type="reset" value="Reset"></td>
		</tr>
	</table>
	</form>




</body>
</html>