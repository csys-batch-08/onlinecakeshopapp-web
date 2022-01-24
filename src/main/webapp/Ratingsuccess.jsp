<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>rating added</title>
<style>

body{
background-image:url('assets/rating.jpeg');
background-repeat:no-repeat;
background-size:cover;

}
h3{
background-color:black;
margin-left:400px;
margin-top:250px;

}
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
h2{

margin-top:200px;
margin-left:500px;
}

</style>
</head>
<body >
<div class="topnav" > 
  <a href="ViewOrder.jsp">Orders</a>
  <a href="showProduct.jsp">Products</a>  
  <a href="categories.jsp">Categories</a> 
  <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating.jsp">Ratings</a>      
   <a href="CustomizedCake.jsp">Customized Cake</a>
    <a href="Home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile.jsp" style="float:right;">Profile</a>
   
         
</div>
<form action="showProduct.jsp">
<h2><i>Your Rating Was Added Successfully!!..</i></h2>
<center><button>Back</button></center>
</form>
</body>
</html>