<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.cakeshop.dao.impl.ProductDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Price Wise Product</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
body{
background-image:url('assets/cake2.jpg');
background-repeat:no-repeat;
background-size:cover;

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

<%int FromPrice=Integer.parseInt(request.getParameter("fromPrice"));
int ToPrice=Integer.parseInt(request.getParameter("toPrice"));	

ProductDaoImpl productDao=new ProductDaoImpl();
ResultSet rs=productDao.filterPrice(FromPrice,ToPrice);
%>


<table class="table table-hover">
<tr>
<th> CAKE </th>
<th>Product Name</th>
<th>Product Description</th>
<th>Product price</th>
<th>Product Categories</th>
<th>Product Rating</th>
<th>Button</th>
</tr>

<%DecimalFormat df = new DecimalFormat("0.00");%>
<% while(rs.next()){
	double rating=rs.getDouble(8)/rs.getDouble(7);
	double rating1=Double.parseDouble(df.format(rating));
%>
<tr>
<td><img alt="#alter" src="assets/<%= rs.getString(6) %>" width="200" height="200"></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getDouble(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rating1 %></td>
<td><button class="button button1"><a href="order.jsp?cakeId=<%=rs.getInt(1)%>&cakeName=<%=rs.getString(2)%>"style="text-decoration:none;">Buy</a></button></td>

</tr>
<%} %>
</table>

</body>
</html>