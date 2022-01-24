<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.ProductDaoImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show Rating</title>

<style type="text/css">
table, th, td {
background-image:linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.2));
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}
body{
background-image:url('assets/back2.jpg');
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

</style>
</head>
<body>
<div class="topnav"> 
  <a href="ViewOrder.jsp">Orders</a> 
  <a href="showProduct.jsp">Products</a> 
  <a href="categories.jsp">Categories</a> 
  <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating.jsp">Ratings</a>      
   <a href="CustomizedCake.jsp">Customized Cake</a>
   <a href="Home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile.jsp" style="float:right;">Profile</a>       
</div>

<center><h2><b>High Rated Cake List</b></h2></center>
<%
ProductDaoImpl product=new ProductDaoImpl();
ResultSet rs=product.ShowRating();
%>
<table align="center" border="4">

<th><h3 style="color:white; font-size:large;">Product Name</h3></th>
<th><h3 style="color:white; font-size:large;">Ratings</h3></th>

<%DecimalFormat df = new DecimalFormat("0.00");%>

<% while(rs.next()){
double rating=rs.getDouble(2)/rs.getDouble(3);
double rating1=Double.parseDouble(df.format(rating));%>
<tr>
<td style="color:white; font-size:large;"><%= rs.getString(1) %></td>
<td style="color:white; font-size:large;"><%= rating1%></td>
</tr>
<%} %>

</table>
</body>
</html>