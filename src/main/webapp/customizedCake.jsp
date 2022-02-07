<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>customized cake</title>
<style>
*{
margin:0px;
padding:0px;
}
#box{
background-image:linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.2));
width:350px;
margin-left:500px;
margin-top:150px;
}
body{
background-image:url('assets/index2.jpeg');
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
  font-size: 14px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius:20px;
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
        margin-left:-50px; ;
      }
      /* Add a black background color to the top navigation */
.topnav {
	background-color: gray;
	overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav {
  background-color: gray;
  overflow: hidden;
  position:relative;
  margin-top:-65px;
  margin-left:80px;
  
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
.topnav-right{
float:right;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: red;
  color: white;
}
</style>
</head>
<body>
<img alt="img" src="assets/logo2.png" width="100px" height="90px">
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

<fieldset id="box"><legend style=color:red><h2>Customized Order</h2></legend>
<form action="customized" method="post">

<label id="1">Flavour</label>
<select name="flavour">

<option value="disabled" >Select</option>
<option >Vanilla</option>
<option >Butterscotch</option>
<option >Chocolate</option>
<option >Strawberry</option>
<option >Blueberry</option>
</select><br><br>

<label id="2">Type</label>
<select name="type">
<option value="disabled" >Select</option>
<option>Egg</option>
<option>Eggless</option>

</select><br><br>

<label id="3">Size</label>
<select name="size">
<option value="disabled">Select</option>
<option>Heart</option>
<option>Circle</option>
<option>Square</option>

</select><br><br>
<label id="1">Quantity<input type="number" name="quantity" required min="0"></label><br><br>
<label id="2">Order Date<input type="date" name="orderdate" id="datefield" required></label><br><br>
<button type="submit" class="button button1">Click</button>
</form>
</fieldset>
</body>

<script type="text/javascript">
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; 
var yyyy = today.getFullYear();
if(dd<10){
  dd='0'+dd
} 
if(mm<10){
  mm='0'+mm
} 
today = yyyy+'-'+mm+'-'+dd;
document.getElementById("datefield").setAttribute("min", today);


var today = new Date();
var dd = today.getDate()+15;
var mm = today.getMonth()+1; 
var yyyy = today.getFullYear();
if(dd<10){
  dd='0'+dd
} 
if(mm<10){
  mm='0'+mm
} 
today = yyyy+'-'+mm+'-'+dd;
document.getElementById("datefield").setAttribute("max", today);
</script>

</html>