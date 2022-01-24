
<%@page import="java.util.List" import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     import ="com.cakeshop.dao.impl.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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


</style>
<meta charset="ISO-8859-1">
<title>showcart page</title>
</head>
<body>

<div class="header container-fluid">
      	<center><h2>Orders List</h2></center>      	
   		<a href="Logout.jsp"><h3 style="float:right; position:relative; bottom:40px; color:black;">Logout</h3></a>
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
<form>
<button class="button"><a href="admin.jsp" style="text-decoration:none;">Back</button></a>
<%
CartDaoImpl cartDao=new CartDaoImpl();
ResultSet rs=cartDao.viewCart();
%>
<table align="center">
<tr>

<h4><th style=color:red>Product ID</th></h4>
<h4><th style=color:red>Order Quantity</th></h4>
<h4><th style=color:red>Total Price</th></h4>
<h4><th style=color:red>User ID</th></h4>
<h4><th style=color:red>Order Date</th></h4>
</tr>
<% while(rs.next()){%>
<tr>

<td style="color:black; text-align:center"><%= rs.getInt(1) %></td>
<td style="color:black; text-align:center"><%= rs.getInt(2) %></td>
<td style="color:black; text-align:center"><%= rs.getDouble(3) %></td>
<td style="color:black; text-align:center"><%= rs.getInt(4) %></td>
<td style="color:black; text-align:center"><%= rs.getDate(5) %></td>
</tr>
<%} %>
</table>
</form><br><br>
</body>
</html>