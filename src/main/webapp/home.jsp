<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
.center{
text-align:center;
}
 .marquee {
    width: 100%; 
	color: white;
    white-space: nowrap;
    overflow: hidden;
    box-sizing: border-box;
    position : absolute;   
}
.marquee h1{ 
   color:#CD5959;
    width:100%;
    padding-left: 100%;
    padding-top:100px;
    margin-top:10px;    
    animation: marquee 30s linear infinite;
}
@keyframes marquee {
    0%   { transform: translate(0, 0); }
    100% { transform: translate(-70%, 0); }
}

</style>

</head>
<body>

 <div class="center">
<h1 style=color:#CD5959><em>Welcome to  Frosting Fairy Cake Shop</em></h1><br>
</div> 

<img alt="img" src="assets/logo2.png" width="90px" height="80px">
<div class="topnav"> 
  <a class="active" href="login.jsp">Login</a>
  <a href="register.jsp">Register</a>
  <a href="contactUs">Contact</a>
  <a href="aboutUs.jsp">About</a>    
  
</div><br><br><br><br>

<div class="marquee">
<h1>&#128523 We bake happiness for you in the face of cake!! Let us deliver sweetness in your lives!!</h1> 
</div>

</body>
</html>