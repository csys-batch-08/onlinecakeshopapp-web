<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.ProductDaoImpl"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Order Success</title>


<style type="text/css">

.checked {
  color: orange;
}

body{
background-image:url('assets/rating.jpeg');
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
#box{
align:center;
}


</style>
</head>
<body>
<div class="topnav">  
   <a href="ViewOrder.jsp">Orders</a> 
   <a href="showProduct.jsp">Products</a> 
   <a href="categories.jsp">Categories</a> 
   <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating.jsp">Ratings</a>
   <a href="Home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile.jsp" style="float:right;">Profile</a>   
 
<h3><e> Wallet Amount :  ${requestScope['totalprice']}</e></h3>  
   
</div>
<fieldset id="box"><legend>Invoice</legend>
<h1>Your Order is Placed Successfully!! Thank You!!</h1>
<h2><e>Your Payment Is Debited from Your Wallet</e></h2>

<h2><e>Your Total Amount is :  ${requestScope['totalprice']}</e></h2>

<h2><e> Your Revised Wallet Amount :  ${requestScope['wallet']}</e></h2>

<form action="Rating" method="post">
<h3>Please Add Your Rating :<input type="number" name="Rating" placeholder="upto 1...5 rating" pattern="[0-9]" min="1" max="5" ></h3>
<button type="submit" id="rating">Rate</button>
</form>
</fieldset>


</body>
</html>