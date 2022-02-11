<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.ProductDaoImpl"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
background-image:url('assets/images/rating.jpeg');
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

.button {
  background-color:pink; 
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
  background-color:pink;
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