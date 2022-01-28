<%@page import="com.cakeshop.dao.impl.SpecialCakeDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.UserDaoImpl" 
    import="com.cakeshop.dao.impl.CartDaoImpl"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My order</title>

<style type="text/css">
table, th, td {
 background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1));
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}
body{
background-image:url('assets/cake2.jpg');
background-repeat:no-repeat;
background-size:cover;

}

/* Add a black background color to the top navigation */
.topnav {
  background-color: Gray;
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
  <a href="ViewOrder.jsp">Orders</a>  
  <a href="showProduct.jsp">Products</a>
  <a href="categories.jsp">Categories</a> 
  <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating.jsp">Ratings</a>    
   <a href="CustomizedCake.jsp">Customized Cake</a>
   <a href="Home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile.jsp" style="float:right;">Profile</a>         
</div>

<form action="cancelOrder">
<table align="center">
<tr>

<th style="color:red">User Name</th>
<th style="color:red">Product Name</th>
<th style="color:red">Order Quantity</th>
<th style="color:red">Total Price</th>
<th style="color:red">Order Date</th>
<th style="color:red">Button</th>
</tr>

<center><h2>User Name : ${requestScope['userName']}</h2></center>

<c:forEach var="show" items="${viewOrder}"> 

<tr>
<td>${requestScope['userName']}</td>
<td>${show.cakeName}</td>
<td>${show.quantity}</td>
<td>${show.totalPrice}</td>
<td>${show.orderDate}</td>
<td><button class="button button1"><a href="cancelOrder?cartId=${show.cartId}" style="text-decoration:none;">Cancel Order</a></button>
</tr>
</c:forEach>
</table>
</form>

</body>
</html>