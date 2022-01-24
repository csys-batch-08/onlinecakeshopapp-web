
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.List" import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1" import ="com.cakeshop.dao.impl.*" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

body{
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;  
font-size:13.5px;
background-image:url('assets/cake2.jpg');
background-repeat:no-repeat;
background-size:cover;

}
.text
	{
		padding:5.5px;
		border-radius: 4px;
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

 ul
  {
        list-style: none;
        background-color: #1c1c1c;
    }
  li{
      display:inline-block;
      padding-top: 13px;
      padding-bottom: 13px;
      text-align: center;
      font-size: 15px;
  }
  li a{
      text-decoration: none;
      font-weight:bold;
      color:white;
      display:block;
      padding-right: 7px;
      padding-left: 7px;
  }
  li button{
      margin-right: 400px;
  }
  
img
	{
		height:210px;
		width:240px;
		overflow:hidden;
		padding-top:60px;
		padding-bottom:33px;
	}
	.names{
		position : relative;
		top:180px;
		left: -250px;
		width: 200%;
		padding-bottom:30px;
	}
</style>

<meta charset="ISO-8859-1">
<title>home page</title>

</head>
<body>
<div class="topnav" > 
  <a href="categories.jsp">Categories</a> 
  <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating.jsp">Ratings</a>      
   <a href="CustomizedCake.jsp">Customized Cake</a>
   <a href="UserProfile.jsp">Profile</a>
   <a href="Home.jsp" style="float:right;">LogOut</a>         
</div>
<form>
<%
ProductDaoImpl product=new ProductDaoImpl();
ResultSet rs=product.showProduct();
%>
<center>
<table class="table">

<%DecimalFormat df = new DecimalFormat("0.00");%>
<% while(rs.next()){
	double rating=rs.getDouble(7)/rs.getDouble(8);
	double rating1=Double.parseDouble(df.format(rating));
%>

<div class="table">
<table>
<tbody>
<tr>       
<td>
<table id="foodtable">
<tbody>
<tr>
<td><img src="assets/<%=rs.getString(6)%>" alt="#alter" width="200" height="300" ></td>   
<td>
<div class="names">                                 
<%= rs.getString(2) %><br>
<%= rs.getString(3) %><br>
<%= rs.getDouble(4) %><br>
<%= rs.getString(5) %><br>
<%= rating1 %>
<button class="button button1"><a href="order.jsp?cakeId=<%=rs.getInt(1)%>&cakeName=<%=rs.getString(2)%>" style="text-decoration:none;">Buy</a></button>
</td>
</tr>
</tbody>
</table> 
</td>                      
</tr>
</tbody>
</table>
</div>
<%} %>
</form>
</center>
</body>
</html>