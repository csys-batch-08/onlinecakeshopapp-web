<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add product</title>
<style>
*{
margin:0px;
padding:0px;
}

table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 10px;
  margin-left:500px;
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
.button{
margin-left:1250px;
width:100px;

}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #111;
}


li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

/* Change the link color on hover */
li a:hover {
  background-color: #555;
  color: white;
}
* {
  box-sizing: border-box;
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

</style>
</style>
</head>
<body>


<div class="header container-fluid">
      	<center><h2>Add </h2></center>      	
   		<a href="Logout.jsp"><h3 style="float:right; position:relative; bottom:40px; color:black;">Logout</h3></a>
      </div>


<div class="sidenav">
<ul>
  <li><a href="showUser.jsp">View All Users List</a></li>
  <li><a href="AddProduct.jsp">Add a New Product</a></li>
  <li><a href="UpdateProduct.jsp">Update Product</a></li>
  <li><a href="showCart.jsp">View Order Details</a></li>
  <li><a href="SalesDate.jsp">View Sales Details</a></li>
   <a href="InactiveUser.jsp">Delete User</a>
  <li><a href="Home.jsp">LogOut</a></li>
  
  </ul>
</div>


<fieldset id="box"><legend>Add New Product</legend><center>
<form action="AddProduct" method="post">
<label for="cakeName">Cake_Name</label><input type="text" name="cakeName"  required><br><br>
<label for="cakedes">Cake_description</label><input type="text" name="cakeDescription" required><br><br>
<label for="cakeprice">Cake_price</label><input type="number" name="cakePrice" pattern="[0-9]" min="0" required><br><br>
<label for="catename">Category_name</label><input type="text" name="categoryName"  required><br><br>
<label for="picture">Image</label><input type="file" name="picture" ><br><br>
<button type="submit" name="button" class="button button1">Add</button>
<button class="button button1"><a href="admin.jsp" style="text-decoration:none;">Back</button></a>
</form></center>
</fieldset>

</body>
</html>