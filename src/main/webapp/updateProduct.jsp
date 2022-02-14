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

<link rel="stylesheet" href="assets/css/updateProduct.css">
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
 <label id="1" for="cakeId">Cake Id : <br><input type="text" name="cakeId" value="<c:out value='${sessionScope.cakeId2}'/>" readonly></label><br/><br/>
<label id="2" for="cakeName">Cake Name : <br><input type="text" name="cakeName" value="<c:out value='${sessionScope.cakename}'/>" ></label><br/><br>
<label id="3" for="description">Cake Description : <br><input type="text" name="description" value="<c:out value='${sessionScope.description}'/>" ></label><br/><br/>
<label id="4" for="price">Cake Price : <br><input type="text" name="price" value="<c:out value='${sessionScope.cakeprice}'/>" ></label><br/><br>
<label id="5" for="categoryName"> CategoryName : <br><input type="text" name="categoryName" value="<c:out value='${sessionScope.category2}'/>" ></label><br/><br/>
<label id ="6" for="rating">Cake Rating : <br><input type="text" name="rating" value="<c:out value='${sessionScope.rating2}'/>" readonly></label><br/>
<button type="submit" class="button button1">Update</button>
</form>

</fieldset>
</body>
</html>