<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>forget Password</title>
<style>
#box{
width:350px;
margin-left:600px;
margin-top:250px;
}
body{
background-image:url('assets/Background.png');
background-repeat:no-repeat;
background-size:cover;

}
.button {
  background-color:pink; 
  border: none;
  color: white;
  padding: 4px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
   border-radius: 20px;
}
.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid pink;
  }
  
  .button1:hover {
  background-color:pink;
  color: white;
}

label {
        display: inline-block;
        width: 155px;
        text-align: right;
        margin-left:-50px; ;
      }

</style>
</head>
<body>
<fieldset id="box"><legend align="right">Reset Your Password</legend><center>
<form action="forgetPassword" method="post">
<label>Set New Password : </label><input type="text" name="password" required pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$"><br><br>
<label>Email Id : </label><input type="Email" name="emailId" required ><br><br>
<button class="button button1" type="submit" id="button"><i>Change</i></button>
&emsp;
</form></center>
<form action="Login.jsp"><center>
<button class="button button1">Back</button>
</center>
</form>
</fieldset>
</body>
</html>