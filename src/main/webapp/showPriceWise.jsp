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
<title>Price Wise Product</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  
<style>
body{
background-image:url('assets/images/background2.jpeg');
background-repeat:no-repeat;
background-size:cover;

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

/* Add a black background color to the top navigation */
.topnav {
	background-color: gray;
	overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav {
  background-color: gray;
  overflow: hidden;
  position:relative;
  margin-top:-65px;
  margin-left:80px;
  
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
.topnav-right{
float:right;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: red;
  color: white;
}
</style>
</head>
<body>
<img alt="img" src="assets/logo2.png" width="100px" height="90px">
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

<table class="table table-hover">
<caption></caption>

<tr>

<th id="1"><h6 style=color:red><strong>Cake</strong></h6></th>
<th id="2"><h6 style=color:red><strong>Product Name</strong></h6></th>
<th id="3"><h6 style=color:red><strong>Product Description</strong></h6></th>
<th id="4"><h6 style=color:red><strong>Product price</strong></h6></th>
<th id="6"><h6 style=color:red><strong>Product Categories</strong></h6></th>
<th id="7"><h6 style=color:red><strong>Product Rating</strong></h6></th>
<th id="8"><h6 style=color:red><strong>Action</strong></h6></th>

</tr>


<c:forEach var="show" items="${showproduct}">

	          <tr>
					<td><img src="assets/images/${show.picture}" alt="#alter" width="200"	height="200" class="card-img-top"></td>
					<td>${show.cakeName}</td>
					<td>${show.cakeDescription}</td>
					<td>${show.cakePrice}</td>
					<td>${show.categoryName}</td>
					<td>${show.rating}</td>
					<td><button class="button button1">
					<a href="order?cakeId=${show.cakeId}&cakeName=${show.cakeName}&cakePrice=${show.cakePrice}&oldRating=${show.oldRating}&ratingCount=${show.ratingCount}"	style="text-decoration: none;">Buy</a></button></td>

				</tr>
</c:forEach>

</table>

</body>
</html>