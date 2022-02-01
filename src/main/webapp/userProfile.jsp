<%@page import="com.cakeshop.dao.impl.UserDaoImpl"%>
<%@page import="com.cakeshop.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Profile</title>
<style>
#box {
 background-image:linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3));
	width: 350px;	
	margin-left:900px;
	
}
body{
background-image:url('assets/cake1.jpeg');
background-repeat:no-repeat;
background-size:cover;
}
/* Add a black background color to the top navigation */
.topnav {
  background-color: gray;
  overflow: hidden;
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

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: gray;
  color: white;
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
</style>
</head>
<body>
<div class="topnav"> 
  <a href="viewOrder.jsp">Orders</a> 
  <a href="ShowProduct">Products</a> 
  <a href="Categories">Categories</a> 
  <a href="searchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating">Ratings</a>      
   <a href="customizedCake.jsp">Customized Cake</a>
   <a href="home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile" style="float:right;">Profile</a>         
</div>



<fieldset id="box"><legend style=color:blue><h2><strong>User Profile</strong></h2></legend>
<h3 style=color:red>User Name : ${requestScope['UserName']}</h3>
<h3 style=color:red>User Email : ${requestScope['email']}</h3>
<h3 style=color:red>User Address : ${requestScope['address']}</h3>
<h3 style=color:red>User Wallet : ${requestScope['userWallet']}</h3>
<button class="button button1"><a href="edit.jsp" style="text-decoration:none">Edit</a></button>
&emsp;
<c:if test="${not empty wallet}">
<button class="button button1"><a href="recharge.jsp" style="text-decoration:none">Recharge</a></button>
</c:if>
</fieldset>
</body>
</html>