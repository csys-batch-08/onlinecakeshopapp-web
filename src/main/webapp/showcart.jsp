
<%@page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     import ="com.cakeshop.dao.impl.*" pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">
<title>showcart page</title>
<link rel="stylesheet" href="assets/css/showcart.css">

</head>
<body>

<div class="header container-fluid">
      	<h2>Orders List</h2>         		
      </div>
<div class="sidenav">
<ul>
  <li><a href="showUser.jsp">View All Users List</a></li>
  <li><a href="addProduct.jsp">Add a New Product</a></li>
  <li><a href="updateProduct.jsp">Update Product</a></li>
  <li><a href="showCart.jsp">View Order Details</a></li>
  <li><a href="salesDate.jsp">View Sales Details</a></li>
  <li><a href="inactiveUser.jsp">Delete User</a></li>
  <li><a href="home.jsp">LogOut</a></li>
  
  </ul>
</div>



<table>
<caption></caption>
<tr>

<th id="1" style=color:red><h4>Product Name</h4></th>
<th id="2" style=color:red><h4>User Name</h4></th>
<th id="3" style=color:red><h4>Order Quantity</h4></th>
<th id="4" style=color:red><h4>Total Price</h4></th>
<th id="5" style=color:red><h4>Order Date</h4></th>
</tr>
<c:forEach var="show" items="${cartlist}">
<tr>

<td style="color:black; text-align:center">${show.cakeName}</td>
<td style="color:black; text-align:center">${show.userName}</td>
<td style="color:black; text-align:center">${show.quantity}</td>
<td style="color:black; text-align:center">${show.totalPrice}</td>
<td style="color:black; text-align:center">${show.orderDate}</td>

</tr>
</c:forEach>
</table>

</body>
</html>