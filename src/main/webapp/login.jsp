<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login page</title>
<link rel="stylesheet" href="assets/css/login.css">

</head>
<body>   
	        <c:if test="${not empty Invalid}">	               
	             </c:if>

	<form action="Login" method="post">
		<div class="container">
			<img alt="img" src="assets/images/user1.png" height="70" width="70">
			<div class="card">
				<label id="1"><input type="email" placeholder="User Email" id="name" name="EmailId" required autofocus 
				
				oninvalid="this.setCustomValidity('UserName Must be Your Registered Email Id(xyz@xyz.com)')" onchange="try{setCustomValidity('')}catch(e){}"> </label><br>
				 
				<label id="2"><input type="password" placeholder="Password" id="myInput" name="password"
				 
				pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$" required
				 
				oninvalid="this.setCustomValidity('Password must Contains in Upper and Lower case and Any Special Charecter and numbers')" onchange="try{setCustomValidity('')}catch(e){}"></label><br>
				
				<h4 style="color:red"><label id="3">				
				<input type="checkbox" onfocus="myFunction()" style="color:red;" >Show Password</label></h4>
				
				<a href="forgetPassword.jsp"><h3><em>Reset My Password</em></h3></a>		
				
				<button type="submit" id="button">Submit</button>
				
					</form>	
				<form action="register.jsp">
	     	<button type="submit" id="button">Register</button><br><br>
	        </form>	
				
				
					</div>
				</div>
		     

	</body>
<script src="assets/js/login.js">

</script>
</html>