<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>customized cake</title>
<link rel="stylesheet" href="assets/css/customizedCake.css">
</head>
<body>
<img alt="img" src="assets/images/logo2.png" width="100px" height="90px">
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

<fieldset id="box"><legend style=color:red><h2>Customized Order</h2></legend>
<form action="customized" method="post">

<label id="1">Flavour
<select name="flavour">

<option value="disabled" >Select</option>
<option >Vanilla</option>
<option >Butterscotch</option>
<option >Chocolate</option>
<option >Strawberry</option>
<option >Blueberry</option>
</select></label><br><br>

<label id="2">Type
<select name="type">
<option value="disabled" >Select</option>
<option>Egg</option>
<option>Eggless</option>
</select></label><br><br>

<label id="3">Size
<select name="size">
<option value="disabled">Select</option>
<option>Heart</option>
<option>Circle</option>
<option>Square</option>
</select></label><br><br>

<label id="1"><h4 style=color:white>Quantity</h4><input type="number" name="quantity" required min="0" id="1"></label><br><br>
<label id="2"><h4 style=color:white>Order Date</h4><input type="date" name="orderdate" id="datefield" required id="2"></label><br><br>
<button type="submit" class="button button1">Click</button>
</form>
</fieldset>
</body>

<script src="assets/js/customizedCake.js">

</script>
</html>