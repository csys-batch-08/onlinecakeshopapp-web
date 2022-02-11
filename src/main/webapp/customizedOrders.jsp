<%@page import="java.sql.ResultSet"%>
<%@page import="com.cakeshop.dao.impl.SpecialCakeDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customized Orders</title>
<style type="text/css">
*{
margin:0px;
padding:0px;
}

table, th, td {
background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1));
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
  align:center;
}
body{

background-repeat:no-repeat;
background-size:cover;

}
.center{
 margin-left: auto; 
  margin-right: auto;
}
/* Add a black background color to the top navigation */
.topnav {
	background-color: gray;
	overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav {
  background-color: gray;
  overflow: hidden;
  position:relative;
  margin-top:-65px;
  margin-left:80px;
  
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
.topnav-right{
float:right;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: red;
  color: white;
}
h2{
text-align:center;
}
</style>
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


<table class="center">
<caption></caption>


<tr>
<th id="1"><h3 style=color:red><strong>User Name</strong></h3></th>
<th id="2"><h3 style=color:red><strong>Quantity</strong></h3></th>
<th id="3"><h3 style=color:red><strong>Order Date</strong></h3></th>
<th id="4"><h3 style=color:red><strong>Flavour</strong></h3></th>
<th id="6"><h3 style=color:red><strong>Types</strong></h3></th>
<th id="7"><h3 style=color:red><strong>Shape</strong></h3></th>
<th id="7"><h3 style=color:red><strong>Total Price</strong></h3></th>

</tr>

<h2>User Name : ${requestScope['email']}</h2>

<c:forEach var="show" items="${orderlist}">
<tr>
<td>${show.email}</td>
<td>${show.quantity}</td>
<td>${show.orderDate}</td>
<td>${show.flavour}</td>
<td>${show.type}</td>
<td>${show.shape}</td>
<td>${show.totalPrice}</td>

</tr>
</c:forEach>
</table>
</body>
</html>