<%@page import="com.cakeshop.dao.impl.SpecialCakeDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.UserDaoImpl" 
    import="com.cakeshop.dao.impl.CartDaoImpl"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>My order</title>

<style type="text/css">
table, th, td {
 background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1));
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
  align:center;
    margin-left:170px;
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
h2{
align:center;
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