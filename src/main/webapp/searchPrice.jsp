<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>search Price</title>
<style>

body{
background-image:url('assets/cake2.jpg');
background-repeat:no-repeat;
background-size:cover;

}
#box {
 background-image:linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.2));
	width: 350px;
	margin-left: 30px;
	margin-right:400px;
	margin-top: 150px;
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
label {
        display: inline-block;
        width: 155px;
        text-align: right;
        margin-left:-50px; 
      }
fieldset{
align:center;
}

</style>
</head>
<body>

<div class="topnav" >
 
  <a href="viewOrder.jsp">Orders</a> 
  <a href="ShowProduct">Products</a> 
  <a href="Categories">Categories</a> 
  <a href="searchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating">Ratings</a>     
   <a href="customizedCake.jsp">Customized Cake</a>
    <a href="home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile" style="float:right;">Profile</a>       
</div>
 
 
<form action="SearchPrice" method="post" >
<fieldset id="box"><legend style=color:red><h2>Search By Price</h2></legend>
<label for="from"><strong><em>From Price : </em></strong></label>
<input type="number" name="fromPrice" pattern="[0-9]" min="0" required><br><br>
<label for="to"><strong><em>To Price : </em></strong></label>
<input type="number" name="toPrice" pattern="[0-9]" min="0" required><br>
<button class="button button1" type="submit" name="button">submit</button>

</fieldset>
</form>
</body>
</html>