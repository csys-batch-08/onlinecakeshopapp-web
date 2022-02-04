<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     import ="com.cakeshop.dao.impl.*" pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>showUser page</title>

<link rel="style" href="//cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>

<style type="text/css">

*{
margin:0px;
padding:0px;
}

table, th, td {
  background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1));
  border: 1px solid black;
  border-collapse: collapse;
  padding: 10px;
  margin-left:450px;
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

h2{
text-align:center;
}

</style>
</head>
<body>

<div class="header container-fluid">
      	<h2> Users List</h2>     		
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


<table  class="table table-hover" id="myTable" >
<caption></caption>
<thead>
<tr>
<th id="1"><h5 style=color:red><strong>User Id</strong></h5></th>
<th id="2"><h5 style=color:red><strong>User Name</strong></h5></th>
<th id="3"><h5 style=color:red><strong>Email Id</strong></h5></th>
<th id="4"><h5 style=color:red><strong>Password</strong></h5></th>
<th id="6"><h5 style=color:red><strong>Address</strong></h5></th>
<th id="8"><h5 style=color:red><strong>Role</strong></h5></th>
<th id="7"><h5 style=color:red><strong>User Wallet</strong></h5></th>


</tr>
</thead>
<c:forEach var="show" items="${showUser}" >
<tbody>
<tr>
<td><h5>${show.userId}</h5></td>
<td><h5>${show.userName}</h5></td>
<td><h5>${show.emailId}</h5></td>
<td><h5>${show.password}</h5></td>
<td><h5>${show.address}</h5></td>
<td><h5>${show.role}</h5></td>
<td><h5>${show.wallet}</h5></td>

</tr>
</tbody>
</c:forEach>
</table><br>

</body>
<script type="text/javascript">
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
