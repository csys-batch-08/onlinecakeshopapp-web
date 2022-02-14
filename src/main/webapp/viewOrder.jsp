<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>view order</title>

<link rel="stylesheet" href="assets/css/viewOrder.css">
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


 
<fieldset id="box"><legend>Orders List</legend>
<form action="MyOrders"><br>
<button class="button button1">Existing Product</button>
</form><br>
<form action="CustmizedOrders">
<button class="button button1">New Product</button>
</form><br>

</fieldset>
</body>
</html>