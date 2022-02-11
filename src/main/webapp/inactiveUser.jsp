<%@page import="com.cakeshop.dao.impl.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Inactive User</title>
<link rel="stylesheet" href="assets/css/inactiveUser.css">
</head>
<body>

<div class="header container-fluid">
      	<h2 style=color:darkBlack>Inactive User</h2>		
</div>

<div class="sidenav">
  <a href="ShowUser">View All Users List</a>
  <a href="addProduct.jsp">Add a New Product</a>
  <a href="viewProduct">Update Product</a>
  <a href="ShowCart">View Order Details</a>
  <a href="salesDate.jsp">View Sales Details</a>
  <a href="inactiveUser.jsp">Delete User</a>
  <a href="home.jsp">LogOut</a>
</div>

<fieldset id="box"><legend>Inactive User</legend>
<form action="Inactive" method="post">


<label id="1">Email Id : <input type="email" name="Email" id="2"
oninvalid="this.setCustomValidity('UserName Must be Your Registered Email Id(xyz@xyz.com)')" 
onchange="try{setCustomValidity('')}catch(e){}"></label>

<button type="submit" class="button button1">Delete</button>
<c:if test="${not empty invalidEmail }">
<h3 style=color:red>This Email Id not Exits</h3>
</c:if>
</form>
</fieldset>
</body>
</html>