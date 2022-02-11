<%@page import="java.sql.ResultSet"%>
<%@page import="com.cakeshop.dao.impl.SpecialCakeDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customized Orders</title>
<link rel="stylesheet" href="assets/css/customizedOrders.css">
</head>
<body>
<img alt="img" src="assets/images/logo2.png" width="100px" height="90px">
<div class="topnav" > 
  <a href="viewOrder.jsp">Orders</a> 
   <a href="ShowProduct">Products</a> 
  <a href="Categories">Categories</a> 
  <a href="searchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating">Ratings</a>     
   <a href="customizedCake.jsp">Customized Cake</a>
   <a href="home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile" style="float:right;">Profile</a>
         
</div>


<table class="center">
<caption></caption>


<tr>
<th id="1"><h3 style=color:red><strong>User Name</strong></h3></th>
<th id="2"><h3 style=color:red><strong>Quantity</strong></h3></th>
<th id="3"><h3 style=color:red><strong>Order Date</strong></h3></th>
<th id="4"><h3 style=color:red><strong>Flavour</strong></h3></th>
<th id="6"><h3 style=color:red><strong>Types</strong></h3></th>
<th id="7"><h3 style=color:red><strong>Shape</strong></h3></th>
<th id="7"><h3 style=color:red><strong>Total Price</strong></h3></th>

</tr>

<h2>User Name : ${requestScope['email']}</h2>

<c:forEach var="show" items="${orderlist}">
<tr>
<td>${show.email}</td>
<td>${show.quantity}</td>
<td>${show.orderDate}</td>
<td>${show.flavour}</td>
<td>${show.type}</td>
<td>${show.shape}</td>
<td>${show.totalPrice}</td>

</tr>
</c:forEach>
</table>
</body>
</html>