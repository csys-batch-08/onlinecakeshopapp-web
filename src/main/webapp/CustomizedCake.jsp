<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customized cake</title>
<style>
#box{
width:350px;
margin-left:600px;
margin-top:250px;
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
</style>
</head>
<body>
<div class="topnav" > 
  <a href="ViewOrder.jsp">Orders</a>  
   <a href="showProduct.jsp">Products</a>
  <a href="categories.jsp">Categories</a> 
  <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating.jsp">Ratings</a>     
   <a href="CustomizedCake.jsp">Customized Cake</a>
    <a href="Home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile.jsp" style="float:right;">Profile</a>
         
</div>
<fieldset id="box">
<form action="customized" method="post">

<label>Flavour</label>
<select name="flavour">

<option value="disabled" >Select</option>
<option >Vanilla</option>
<option >Butterscotch</option>
<option >Chocolate</option>
<option >Strawberry</option>
<option >Blueberry</option>
</select><br><br>

<label>Type</label>
<select name="type">
<option  value="disabled" >Select</option>
<option>Egg</option>
<option>Eggless</option>

</select><br><br>

<label>Size</label>
<select name="size">
 <option value="disabled">Select</option>
<option>Heart</option>
<option>Circle</option>
<option>Square</option>

</select><br><br>
Quantity<input type="number" name="quantity" required min="0"><br><br>
Order Date<input type="date" name="orderdate" id="datefield" required><br><br>
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
</script>

</html>