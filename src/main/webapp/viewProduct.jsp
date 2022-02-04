<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.cakeshop.dao.impl.ProductDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>view product</title>
<style>
#box{
width:350px;
margin-left:400px;
margin-top:0px;
}

#box1{
width:350px;
margin-left:800px;
margin-top:0px;
}

table, th, td { 

 background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1));
  border-collapse: collapse;
  font-size:13px;  
  padding: 1px;
  margin-left:350px;
}


*{
margin:0px;
padding:0px;
}
.header{
padding-top:24px;
background:#111;
color:white;
padding-bottom:24px;
}

.header a h3:hover{
background-color: red;
height:50px;
}

.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav {
  height: 100%; /* Full-height: remove this if you want "auto" height */
  width: 325px; /* Set the width of the sidebar */
  position: fixed; /* Fixed Sidebar (stay in place on scroll) */
  z-index: 1; /* Stay on top */
  top: 50px; /* Stay at the top */
  left: 0;
  background-color: #111; /* Black */
  overflow-x: hidden; /* Disable horizontal scroll */
  padding-top: 50px;
}

.sidenav a {
  padding: 16px 16px 16px 18px;
  text-decoration: none;
  font-size: 20px;
  color:white;
  display: block;
}
.sidenav a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 200px; /* Same as the width of the sidenav */
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

body{
background-image:url('assets/background2.jpeg');
background-repeat:no-repeat;
background-size:cover;
}
label {
        display: inline-block;
        width: 155px;
        text-align: right;
        margin-left:-50px; ;
      }
.button {
  background-color:pink; 
  border: none;
  color: white;
  padding: 3px 6px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
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
h2{
text-align:center;
}

</style>
</head>
<body>

<div class="header container-fluid">
      	<h2 style=color:darkBlack>Hole Product List</h2>      		
      </div>


<div class="sidenav">
  <a href="ShowUser">View All Users List</a>
  <a href="addProduct.jsp">Add a New Product</a>
  <a href="viewProduct">Update Product</a>
  <a href="ShowCart">View Order Details</a>
  <a href="salesDate.jsp">View Sales Details</a>
  <a href="inactiveUser.jsp">Delete User</a>
  <a href="home.jsp">LogOut</a>
</div>

<table class="table table-hover">
<caption></caption>
<tr>
<th id="1"><h3>Product Name</h3></th>
<th id="2"><h3>Product Description</h3></th>
<th id="3"><h3>Product price</h3></th>
<th id="4"><h3>Product Categories</h3></th>
<th id="5"><h3>Product Rating</h3></th>
<th id="6"><h3>Action</h3></th>
</tr>

<c:forEach var="show" items="${viewProduct}">
<tr>
<td><h3>${show.cakeName}</h3></td>
<td><h3>${show.cakeDescription}</h3></td>
<td><h3>${show.cakePrice}</h3></td>
<td><h3>${show.categoryName}</h3></td>
<td><h3>${show.rating}</h3></td>
<td><button class="button button1"><a href="updateProduct?cakeId=${show.cakeId}&cakeName=${show.cakeName}&cakeDescription=${show.cakeDescription}&cakePrice=${show.cakePrice}&category=${show.categoryName}&rating=${show.rating}"
								style="text-decoration: none;">Update</a></button></td>

</tr>
</c:forEach>
</table>



</body>
</html>