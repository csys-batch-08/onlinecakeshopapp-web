
<%@page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     import ="com.cakeshop.dao.impl.*" pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">
<title>showcart page</title>
<style type="text/css">
*{
margin:0px;
padding:0px;
}

table, th, td {
  background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1));
  border-collapse: collapse;
  font-size:17px;  
  padding: 4px;
  margin-left:450px;
  margin-top:50px;
  align:center;
}

.header{
padding-top:24px;
background:#111;
color:white;
padding-bottom:24px;
}

.header a h3:hover{
background-color: red;
height:50px;
}

.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav {
  height: 100%; /* Full-height: remove this if you want "auto" height */
  width: 325px; /* Set the width of the sidebar */
  position: fixed; /* Fixed Sidebar (stay in place on scroll) */
  z-index: 1; /* Stay on top */
  top: 70px; /* Stay at the top */
  left: 0;
  background-color: #111; /* Black */
  overflow-x: hidden; /* Disable horizontal scroll */
  padding-top: 50px;
}
.sidenav a {
  padding: 16px 16px 16px 18px;
  text-decoration: none;
  font-size: 20px;
  color:white;
  display: block;
}
.sidenav a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 200px; /* Same as the width of the sidenav */
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

body{
background-image:url('assets/background2.jpeg');
background-repeat:no-repeat;
background-size:cover;
}
h2{
text-align:center;
}

</style>

</head>
<body>

<div class="header container-fluid">
      	<h2>Orders List</h2>         		
      </div>
<div class="sidenav">
<ul>
  <li><a href="showUser.jsp">View All Users List</a></li>
  <li><a href="AddProduct.jsp">Add a New Product</a></li>
  <li><a href="UpdateProduct.jsp">Update Product</a></li>
  <li><a href="showCart.jsp">View Order Details</a></li>
  <li><a href="SalesDate.jsp">View Sales Details</a></li>
  <li><a href="Home.jsp">LogOut</a></li>
  
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
<c:forEach var="show" items="${cartlist}" >
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