
<%@page import="java.text.DecimalFormat"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1" import ="com.cakeshop.dao.impl.*" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>home page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<head>
<style type="text/css">

body{
background-image:url('assets/cake2.jpg');
background-repeat:no-repeat;
background-size:cover;

}

/* Add a black background color to the top navigation */
.topnav {
  background-color: gray;
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
.topnav input[type=text] {
  float: right;
  padding: 6px;
  border: none;
  margin-top: 8px;
  margin-right: 16px;
  font-size: 17px;
}

/* When the screen is less than 600px wide, stack the links and the search field vertically instead of horizontally */
@media screen and (max-width: 600px) {
  .topnav a, .topnav input[type=text] {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;
  }
}

</style>
</head>
<body>
<div class="topnav" > 
  <a href="Categories">Categories</a> 
  <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating">Ratings</a>      
   <a href="CustomizedCake.jsp">Customized Cake</a>    
    <a href="Home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile" style="float:right;">Profile</a>          
</div>
<form>

<table class="table table-hover">
<tr>
<th>Cake </th>
<th>Product Name</th>
<th>Product Description</th>
<th>Product price</th>
<th>Product Categories</th>
<th>Product Rating</th>
<th>Button</th>
</tr>
<%//DecimalFormat df = new DecimalFormat("0.00");%>
<%// while(rs.next()){
	//double rating=rs.getDouble(7)/rs.getDouble(8);
	//double rating1=Double.parseDouble(df.format(rating));		
%>
<c:forEach var="show" items="${showProduct}">
<tr>
<td><img src="assets/${show.picture}" alt="#alter" width="200" height="200" class="card-img-top"></td>
<td>${show.cakeName}</td>
<td>${show.cakeDescription}</td>
<td>${show.cakePrice}</td>
<td>${show.categoryName}</td>
<td>${show.rating}</td>
<td><button class="button button1"><a href="order?cakeId=${show.cakeId}&cakeName=${show.cakeName}&cakePrice=${show.cakePrice}" style="text-decoration:none;">Buy</a></button></td>

</tr>
</c:forEach>
</table>
</form>
</body>
</html>