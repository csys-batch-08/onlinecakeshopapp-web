<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.ProductDaoImpl"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>show Rating</title>
<link rel="stylesheet" href="assets/css/showRating.css">
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

<table>
<caption><h2>Rating</h2></caption>
<tr>
<th id="1"><h3 style="color:white; font-size:large;">Product Name</h3></th>
<th id="2"><h3 style="color:white; font-size:large;">Ratings</h3></th>
</tr>
<c:forEach var="show" items="${ratinglist}">

<tr>
<td style="color:white; font-size:large;">${show.cakeName}</td>
<td style="color:white; font-size:large;">${show.oldRating}</td>
</tr>
</c:forEach>
</table>
</body>
</html>