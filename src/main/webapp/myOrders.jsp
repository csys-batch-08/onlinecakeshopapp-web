<%@page import="com.cakeshop.dao.impl.SpecialCakeDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.UserDaoImpl" 
    import="com.cakeshop.dao.impl.CartDaoImpl"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
       <%@ page import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>My order</title>
<link rel="stylesheet" href="assets/css/myOrders.css">
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

<form action="cancelOrder">
<table>
<caption></caption>

<tr>
<th id="1"><h2 style=color:red><strong>User Name</strong></h2></th>
<th id="2"><h2 style=color:red><strong>Product Name</strong></h2></th>
<th id="3"><h2 style=color:red><strong>Order Quantity</strong></h2></th>
<th id="4"><h2 style=color:red><strong>Total Price</strong></h2></th>
<th id="6"><h2 style=color:red><strong>Order Date</strong></h2></th>
<th id="7"><h2 style=color:red><strong>Action</strong></h2></th>

</tr>

<h2>User Name : ${requestScope['userName']}</h2>

<c:forEach var="show" items="${viewOrder}"> 

<tr>

<td>${requestScope['userName']}</td>
<td>${show.cakeName}</td>
<td>${show.quantity}</td>
<td>${show.totalPrice}</td>
<td>${show.orderDate.format( DateTimeFormatter.ofPattern("dd.MM.yyyy"))}</td>
<td><button class="button button1"><a href="cancelOrder?cartId=${show.cartId}" style="text-decoration:none;">Cancel Order</a></button>

</tr>
</c:forEach>
</table>
</form>

</body>
</html>