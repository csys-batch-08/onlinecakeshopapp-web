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

<link rel="stylesheet" href="assets/css/userProfile.css">
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