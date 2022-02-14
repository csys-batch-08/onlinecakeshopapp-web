<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.ProductDaoImpl"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Order Success</title>

<link rel="stylesheet" href="assets/css/orderSuccess.css">

</head>
<body>
<div class="topnav">  
   <a href="viewOrder.jsp">Orders</a> 
   <a href="ShowProduct">Products</a> 
   <a href="Categories">Categories</a> 
   <a href="searchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating">Ratings</a>
   <a href="home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile" style="float:right;">Profile</a>   
    
</div>

<fieldset id="box"><legend>Invoice</legend>
<h1>Your Order is Placed Successfully!! Thank You!!</h1>

<h2><em>Your Payment Is Debited from Your Wallet</em></h2>

<h2><em>Your Total Amount is :  ${requestScope['totalprice']}</em></h2>

<h2><em> Your Revised Wallet Amount :  ${requestScope['wallet']}</em></h2>

<form action="Rating" method="post">
<h3><label>Please Add Your Rating :<input type="number" name="Rating" placeholder="upto 1...5 rating" pattern="[0-9]" min="1" max="5" ></label></h3>
<button type="submit" id="rating" class="button button1">Rate</button>
</form>
</fieldset>


</body>
</html>