<%@ page language="java" import="java.sql.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
	import="java.sql.ResultSet"
	import="com.cakeshop.dao.impl.ProductDaoImpl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>category wise cake</title>
<style>
*{
margin:0px;
padding:0px;
}
body {
	background-image: url('assets/images/Background.png');
	background-repeat: no-repeat;
	background-size: cover;
	
}

.center{
   margin-left: auto;
  margin-right: auto;
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
.button {
	background-color: pink;
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
	background-color: pink;
	color: white;
}
</style>
</head>
<body>
<img alt="img" src="assets/images/logo2.png" width="100px" height="90px">
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

	<br>
	<br>
	<br>
	<br>
	<table border="3" class="center">
	<caption><h2>Category List</h2></caption>

		<th id="1"><h3>Category Name</h3></th>
		<th id="2"><h3>Action</h3></th>

		<c:forEach var="show" items="${showCategory}">

		<tr>
				<td>${show.categoryName}</td>
				
				<td><button class="button button1" id="buy"><a href="CategoryFilter?categoryname=${show.categoryName}" style="text-decoration: none;">Search</a></button></td>

		</tr>
		</c:forEach>

	</table>

</body>
</html>