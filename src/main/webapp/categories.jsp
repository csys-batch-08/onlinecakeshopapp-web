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
<link rel="stylesheet" href="assets/css/categories.css">
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