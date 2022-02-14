<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>add product</title>
<link rel="stylesheet" href="assets/css/addProduct.css">
</head>
<body>

<div class="header container-fluid">
      	<h2>Add cake</h2>        		
      </div>

<div class="sidenav">
<ul>
  <li><a href="ShowUser">View All Users List</a></li>
  <li><a href="addProduct.jsp">Add a New Product</a></li>
  <li><a href="viewProduct">Update Product</a></li>
  <li><a href="ShowCart">View Order Details</a></li>
  <li><a href="salesDate.jsp">View Sales Details</a></li>
  <li><a href="inactiveUser.jsp">Delete User</a></li>
  <li><a href="home.jsp">LogOut</a></li>  
  </ul>  
</div>

<fieldset id="box"><legend>Add New Product</legend>
<form action="AddProduct" method="post">
<label for="cakeName" id="1">Cake_Name  : <input type="text" name="cakeName"  required></label><br>
<label for="cakedes" id="2"> Cake_description : <input type="text" name="cakeDescription" required></label><br>
<label for="cakeprice" id="3">Cake_price :<input type="number" name="cakePrice" pattern="[0-9]" min="0" required></label><br>
<label for="catename" id="4">Category_name :<input type="text" name="categoryName"  required></label><br>
<label for="picture" id="5">Image :<input type="file" name="picture"></label>
<button type="submit" name="button" class="button button1">Add</button>
<button class="button button1"><a href="admin.jsp" style="text-decoration:none;">Back</a></button>
</form>
</fieldset>

</body>
</html>