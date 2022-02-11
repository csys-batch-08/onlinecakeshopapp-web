<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import=" com.cakeshop.dao.impl.*" import="java.sql.*"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>order here</title>

<link rel="stylesheet" href="assets/css/order.css">
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
			
		<fieldset id="box"><legend style=color:red><h2>Order Here</h2></legend>	
			
			<form action="Order?cakeName=${requestScope['cakeName']}&cakeId=${requestScope['cakeId']}&cakePrice=${requestScope['price']}"><br/>
			<label for="quantity" id="1">Cake Name : <input type="text" name="cakeName" value="<c:out value='${requestScope["cakeName"]}'/>" readonly></label><br/><br/>
			<label for="quantity" id="2">Cake Price/Kg : <input type="text" name="price" value="<c:out value='${requestScope["price"]}'/>" readonly></label><br/>
			<label id="3"><input type="hidden" name="cakeId" value="<c:out value='${requestScope["cakeId"]}'/>"></label><br/>
										
			<label for="quantity" id="4">Quantity:<input type="number" name="quantity" pattern="[0-9]{2}" min="0" required></label><br><br>							
			<label for="orderdate" id="5">OrderDate :<input type="date" id="datefield"  name="orderDate" pattern="dd/mm/yyyy"></label><br><br>				
			<button class="button button1" type="submit" id="button">Buy</button>						
			</form>
			
		</fieldset>
	
</body>
<script src="assets/js/order.js">

</script>

</html>