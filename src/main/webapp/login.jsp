<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login page</title>

<style>
body {
	margin: 0;
	padding: 0;
	background-image: url();
	background-size: cover;
}

.container {
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
}

.card {
	padding: 60px 40px 50px 40px;
	background: rgb(50, 50, 50);
	border-radius: 10px;
}

#name ,#myInput {
	width: 200px;
	border: none;
	background: transparent;
	border-bottom: 1px solid white;
	padding: 6px;
	margin-bottom: 20px;
	color: white;
}

#button {
	border-radius: 20px;
	padding: 10px 20px;
	background: dodgerblue;
	color: white;
	margin-top: 20px;
	border: none;
	outline: none;
	margin-left: 50px;
}

#button:hover {
	background-color: burlywood;
	color: black;
	cursor: pointer;
}

a {
	font-size: 16px;
}
img {
	border-radius: 50%;
	position: absolute;
	margin-left: 100px;
	margin-top: -40px;
}
a:link {
  color: green;
  background-color: transparent;
  text-decoration: none;
}
a:visited {
  color: pink;
  background-color: transparent;
  text-decoration: none;
}

a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}
</style>
</head>
<body>
 
 <%String msg=(String)session.getAttribute("Invalid"); 
 if(msg!=null){%> 
	 <h2><%=msg %></h2>
	 <%session.removeAttribute("Invalid"); %>
 <% } %>


	<form action="Login" method="post">
		<div class="container">
			<img alt="img" src="assets/user1.png" height="70" width="70">
			<div class="card">
				<input type="email" placeholder="username" id="name" name="EmailId" required autofocus 
				
				oninvalid="this.setCustomValidity('UserName Must be Your Registered Email Id(xyz@xyz.com)')" onchange="try{setCustomValidity('')}catch(e){}"> <br>
				 
				<input type="password" placeholder="Password" id="myInput" name="password"
				 
				pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$" required
				 
				oninvalid="this.setCustomValidity('Password must Contains in Upper and Lower case and Any Special Charecter and numbers')" onchange="try{setCustomValidity('')}catch(e){}"><br>
				
				<h4 style="color:red"><input type="checkbox" onclick="myFunction()" style="color:red;">Show Password</h4>
				
				<a href="forgetPassword.jsp"><h3><em>Reset My Password</em></h3></a>		
				
				<button type="submit" id="button">Submit</button>
				
			</form>	
				<form action="register.jsp">
	     	<button type="submit" id="button">Register</button><br><br>
	        </form>				
	</div>
	</div>
	</body>
<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
</html>