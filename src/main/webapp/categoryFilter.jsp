<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*" import ="com.cakeshop.dao.impl.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>category wise cake</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
 
<style type="text/css">

table, th, td {
background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1));
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
  align:center;
}

body{

background-image:url('assets/background2.jpeg');
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
<div class="topnav" >
 
  <a href="ViewOrder.jsp">Orders</a>  
   <a href="ShowProduct">Products</a>
  <a href="Categories">Categories</a> 
  <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating">Ratings</a>  
   <a href="CustomizedCake.jsp">Customized Cake</a>
    <a href="Home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile" style="float:right;">Profile</a>
         
</div>



<form>
<table class="table table-hover"> 
<caption></caption>
<tr>

<th id="1"><h6 style=color:red><strong>Cake</strong></h6></th>
<th id="2"><h6 style=color:red><strong>Product Name</strong></h6></th>
<th id="3"><h6 style=color:red><strong>Product Description</strong></h6></th>
<th id="4"><h6 style=color:red><strong>Product price</strong></h6></th>
<th id="6"><h6 style=color:red><strong>Product Categories</strong></h6></th>
<th id="7"><h6 style=color:red><strong>Product Rating</strong></h6></th>
<th id="8"><h6 style=color:red><strong>Button</strong></h6></th>

</tr>
<c:forEach var="show" items="${showCategory}">

<tr>
<td><img src="assets/${show.picture}" alt="#alter" width="200" height="200" class="card-img-top"></td>
<td>${show.cakeName}</td>
<td>${show.cakeDescription}</td>
<td>${show.cakePrice}</td>
<td>${show.categoryName}</td>
<td>${show.rating}</td>
<td><button class="button button1"><a href="order.jsp?cakeId=${show.cakeId }&cakeName=${show.cakeName}" style="text-decoration:none;">Buy</a></button></td>

</tr>
</c:forEach>

</table>
</form>

</body>
</html>