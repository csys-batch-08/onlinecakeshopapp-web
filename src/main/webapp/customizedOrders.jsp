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
table, th, td {
background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1));
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
  align:center;
}
body{
background-image:url('assets/cake2.jpg');
background-repeat:no-repeat;
background-size:cover;

}
.center{
 margin-left: auto; 
  margin-right: auto;
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
h2{
text-align:center;
}
</style>
</head>
<body>
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

<table class="center">
<caption></caption>


<tr>
<th id="1"><h2 style=color:red><strong>User Name</strong></h2></th>
<th id="2"><h2 style=color:red><strong>Quantity</strong></h2></th>
<th id="3"><h2 style=color:red><strong>Order Date</strong></h2></th>
<th id="4"><h2 style=color:red><strong>Flavour</strong></h2></th>
<th id="6"><h2 style=color:red><strong>Types</strong></h2></th>
<th id="7"><h2 style=color:red><strong>Shape</strong></h2></th>
<th id="7"><h2 style=color:red><strong>Total Price</strong></h2></th>

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