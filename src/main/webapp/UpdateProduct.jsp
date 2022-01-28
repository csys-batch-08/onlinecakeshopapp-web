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
<title>Update product</title>
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
  <a href="showUser.jsp">View All Users List</a>
  <a href="AddProduct.jsp">Add a New Product</a>
  <a href="UpdateProduct.jsp">Update Product</a>
  <a href="showCart.jsp">View Order Details</a>
  <a href="SalesDate.jsp">View Sales Details</a>
   <a href="InactiveUser.jsp">Delete User</a>
  <a href="Home.jsp">LogOut</a>
</div>

<table class="table table-hover">
<caption></caption>
<tr>

<th id="1">Product Name</th>
<th id="2">Product Description</th>
<th id="3">Product price</th>
<th id="4">Product Categories</th>
<th id="5">Product Rating</th>
</tr>
<c:forEach var="show" items="${showProduct}">

<tr>
<td>${show.cakeName}</td>
<td>${show.cakeDescription}</td>
<td>${show.cakePrice}</td>
<td>${show.categoryName}</td>
<td>${show.rating}</td>
</tr>
</c:forEach>
</table>

<fieldset id="box"><legend><h3 style=color:red>Delete Product using Id</h3></legend><br>
<form action="deleteProduct" method="post">
Cake Id:<input type="number" name="cakeId" pattern="[0-9]"><br><br>
<button class="button button1" type="submit" id="button">delete</button>
<button class="button button1"><a href="admin.jsp" style="text-decoration:none;">Back</button></a>
</form>
</fieldset>

<fieldset id="box1"><legend><h3 style=color:red>Update Product Price using Name</h3></legend>
<form action="updateProduct" method="post">
<label for="cake price">New Cake Price: </label><input type="number" name="cakePrice"><br><br>
<label for="name">Cake Name: </label><input type="text"  name="cakeName"><br><br>
<button class="button button1" type="submit" id="button">Update</button>
<button class="button button1"><a href="admin.jsp" style="text-decoration:none;">Back</button></a>
</form>

</fieldset><br>

</body>
</html>