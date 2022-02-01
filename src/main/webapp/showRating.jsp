<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.ProductDaoImpl"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>show Rating</title>

<style type="text/css">
table, th, td {
background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1));
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px; 
  margin-left:500px;
}
body{
background-image:url('assets/back2.jpg');
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

<table>
<caption><h2>Rating</h2></caption>
<tr>
<th id="1"><h3 style="color:white; font-size:large;">Product Name</h3></th>
<th id="2"><h3 style="color:white; font-size:large;">Ratings</h3></th>
</tr>
<c:forEach var="show" items="${ratinglist}">

<tr>
<td style="color:white; font-size:large;">${show.cakeName}</td>
<td style="color:white; font-size:large;">${show.oldRating}</td>
</tr>
</c:forEach>
</table>
</body>
</html>