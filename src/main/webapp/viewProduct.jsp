<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.cakeshop.dao.impl.ProductDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>view product</title>

<link rel="stylesheet" href="assets/css/viewProduct.css">
</head>
<body>

<div class="header container-fluid">
      	<h2 style=color:darkBlack>Hole Product List</h2>      		
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

<table class="table table-hover">
<caption></caption>
<tr>
<th id="1"><h3>Product Name</h3></th>
<th id="2"><h3>Product Description</h3></th>
<th id="3"><h3>Product price</h3></th>
<th id="4"><h3>Product Categories</h3></th>
<th id="5"><h3>Product Rating</h3></th>
<th id="6"><h3>Action</h3></th>
</tr>

<c:forEach var="show" items="${viewProduct}">
<tr>

<td><h3>${show.cakeName}</h3></td>
<td><h3>${show.cakeDescription}</h3></td>
<td><h3>${show.cakePrice}</h3></td>
<td><h3>${show.categoryName}</h3></td>
<td><h3>${show.rating}</h3></td>
<td><button class="button button1"><a href="updateProduct?cakeId=${show.cakeId}&cakeName=${show.cakeName}&cakeDescription=${show.cakeDescription}&cakePrice=${show.cakePrice}&category=${show.categoryName}&rating=${show.rating}" style="text-decoration: none;">Update</a></button></td>

</tr>
</c:forEach>
</table>



</body>
</html>