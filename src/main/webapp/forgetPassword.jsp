<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>forget Password</title>
<link rel="stylesheet" href="assets/css/forgetPassword.css">
</head>
<body>
<fieldset id="box"><legend>Reset Your Password</legend>
<form action="forgetPassword" method="post">
<label id="1">Set New Password : <br/><input type="text" name="password" required pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$"></label><br><br>
<label id="2">Email Id : <br/><input type="Email" name="emailId" required ></label><br><br>
<button class="button button1" type="submit" id="button"><em>Change</em></button>
&emsp;
</form>
<form action="login.jsp">
<button class="button button1">Back</button>

</form>
</fieldset>
</body>
</html>