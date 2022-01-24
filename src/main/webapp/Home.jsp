<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

<style>
*{
margin:0px;
padding:0px;
}

body{
background-image:url('assets/index3.jpeg');
background-repeat:no-repeat;
background-size:cover;

}

/* Add a black background color to the top navigation */
.topnav {
  background-color: #ED2939;
  overflow: hidden;
  position:relative;
  margin-top:-65px;
  margin-left:80px;
  
}
/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topnav-right{
float:right;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: red;
  color: white;
}
img{
margin-left:-8px;
}

</style>

</head>
<body>
  
<center><h1><i>Welcome to My CakeShop</i></h1></center><br>
<img src="assets/logo2.png" width="90px" height="80px">
<div class="topnav"> 
  <a class="active" href="Login.jsp">Login</a>
  <a href="register.jsp">Register</a>
  <a href="Contact.jsp">Contact</a>
  <a href="AboutUs.jsp">About</a>    
  
</div><br><br><br><br>




<marquee><h1 style=color:#CD5959>&#128523<i>We bake happiness for you in the face of cake!! Let us deliver sweetness in your lives!! </i></h1></marquee>
</body>
</html>