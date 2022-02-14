<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>search Price</title>
<link rel="stylesheet" href="assets/css/searchPrice.css">
</head>
<body>

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
 
 
<form action="SearchPrice" method="post" >
<fieldset id="box"><legend style=color:red><h2>Search By Price</h2></legend>
<label for="from"><strong><em>From Price : </em></strong>
<input type="number" name="fromPrice" pattern="[0-9]" min="0" required></label><br><br>
<label for="to"><strong><em>To Price : </em></strong>
<input type="number" name="toPrice" pattern="[0-9]" min="0" required></label><br>
<button class="button button1" type="submit" name="button">submit</button>

</fieldset>
</form>
</body>
</html>