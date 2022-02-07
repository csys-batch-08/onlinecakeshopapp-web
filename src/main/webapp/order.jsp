<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import=" com.cakeshop.dao.impl.*" import="java.sql.*"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>order here</title>
<style>
body{
background-image:url('assets/cake2.jpg');
background-repeat:no-repeat;
background-size:cover;

}
#box {
 background-image:linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.2));
	width: 350px;
	margin-left: 0px;
	margin-right:800px;
	margin-top: 150px;
}
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
        margin-left:-50px; ;
      }

</style>
</head>
<body>
<div class="topnav"> 

   <a href="viewOrder.jsp">Orders</a> 
   <a href="ShowProduct">Products</a> 
   <a href="Categories">Categories</a> 
   <a href="searchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating">Ratings</a>      
   <a href="customizedCake.jsp">Customized Cake</a>
   <a href="home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile" style="float:right;">Profile</a>
            
</div>
			
		<fieldset id="box"><legend style=color:red><h2>Order Here</h2></legend>	
			
			<form action="Order?cakeName=${requestScope['cakeName']}&cakeId=${requestScope['cakeId']}&cakePrice=${requestScope['price']}"><br/>
			<label for="quantity" id="1">Cake Name : <input type="text" name="cakeName" value="<c:out value='${requestScope["cakeName"]}'/>" readonly></label><br/><br/>
			<label for="quantity" id="2">Cake Price/Kg : <input type="text" name="price" value="<c:out value='${requestScope["price"]}'/>" readonly></label><br/>
			<label id="3"><input type="hidden" name="cakeId" value="<c:out value='${requestScope["cakeId"]}'/>"></label><br/>
										
			<label for="quantity" id="4">Quantity:<input type="number" name="quantity" pattern="[0-9]{2}" min="0" required></label><br><br>							
			<label for="orderdate" id="5">OrderDate :<input type="date" id="datefield"  name="orderDate" pattern="dd/mm/yyyy"></label><br><br>				
			<button class="button button1" type="submit" id="button">Buy</button>		
					
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