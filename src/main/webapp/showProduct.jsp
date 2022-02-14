
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cakeshop.dao.impl.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>home page</title>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/showProduct.css">
</head>
<body>
	
	<img alt="img" src="assets/images/logo2.png" width="100px" height="90px">
	<div class="topnav">
		 <a href="Categories">Categories</a>
		 <a href="searchPrice.jsp">Price Wise Search</a> 
		 <a href="ShowRating">Ratings</a>
		 <a	href="customizedCake.jsp">Customized Cake</a> 
		 <a href="home.jsp"	style="float: right;">LogOut</a>
		 <a href="UserProfile"	style="float: right;">Profile</a>
	</div>
	<form>

		<table class="table table-hover">
			<caption></caption>

			<tr>
				<th id="1"><h6 style="color: red">
						<strong>Cake</strong>
					</h6></th>
				<th id="2"><h6 style="color: red">
						<strong>Product Name</strong>
					</h6></th>
				<th id="3"><h6 style="color: red">
						<strong>Product Description</strong>
					</h6></th>
				<th id="4"><h6 style="color: red">
						<strong>Product price</strong>
					</h6></th>
				<th id="6"><h6 style="color: red">
						<strong>Product Categories</strong>
					</h6></th>
				<th id="7"><h6 style="color: red">
						<strong>Product Rating</strong>
					</h6></th>
				<th id="8"><h6 style="color: red">
						<strong>Action</strong>
					</h6></th>
			</tr>
			<c:forEach var="show" items="${showProduct}">
				<tr>
				
					<td><img src="assets/images/${show.picture}" alt="#alter" width="200" height="200" class="card-img-top"></td>
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
	</form>
</body>
</html>