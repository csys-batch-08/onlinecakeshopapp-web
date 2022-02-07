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
background-image:linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.2));
width:350px;
margin-left:400px;
margin-top:0px;
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
      	<h2 style=color:darkBlack>Update</h2>      		
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

<fieldset id="box"><legend>Update Product</legend>
<form action="UpdatedProduct" method="post">
 <label id="1" for="cakeId">Cake Id : <br><input type="text" name="cakeId" value="<c:out value='${sessionScope.cakeId}'/>" readonly></label><br/><br/>
<label id="2" for="cakeName">Cake Name : <br><input type="text" name="cakeName" value="<c:out value='${sessionScope.cakename}'/>" ></label><br/><br>
<label id="3" for="description">Cake Description : <br><input type="text" name="description" value="<c:out value='${sessionScope.description}'/>" ></label><br/><br/>
<label id="4" for="price">Cake Price : <br><input type="text" name="price" value="<c:out value='${sessionScope.cakeprice}'/>" ></label><br/><br>
<label id="5" for="categoryName"> CategoryName : <br><input type="text" name="categoryName" value="<c:out value='${sessionScope.category}'/>" ></label><br/><br/>
<label id ="6" for="rating">Cake Rating : <br><input type="text" name="rating" value="<c:out value='${sessionScope.rating}'/>" readonly></label><br/>
<button type="submit" class="button button1">Update</button>
</form>

</fieldset>
</body>
</html>