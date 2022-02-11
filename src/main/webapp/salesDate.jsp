<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Sales Date</title>
<style>
* {
	margin: 0px;
	padding: 0px;
}

.header {
	padding-top: 24px;
	background: #111;
	color: white;
	padding-bottom: 24px;
}

.header a h3:hover {
	background-color: red;
	height: 50px;
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
	color: white;
	display: block;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.main {
	margin-left: 200px; /* Same as the width of the sidenav */
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

body {
	background-image: url('assets/images/background2.jpeg');
	background-repeat: no-repeat;
	background-size: cover;
}

label {
	display: inline-block;
	width: 155px;
	text-align: right;
	margin-left: -50px;;
}

.button {
	background-color: pink;
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
	background-color: pink;
	color: white;
}

#box {
	text-align: center;
	width: 100px;
	margin-top: 150px;
	margin-left: 500px;
}

h2 {
	text-align: center;
}
</style>
</head>
<body>

	<div class="header container-fluid">
		<h2 style="color: darkBlack">Get Sales Details Using Date</h2>
	</div>


	<div class="sidenav">
		<a href="ShowUser">View All Users List</a>
		 <a href="addProduct.jsp">Add	a New Product</a> 
		 <a href="viewProduct">Update Product</a> 
		 <a	href="ShowCart">View Order Details</a> 
		 <a href="salesDate.jsp">View	Sales Details</a> 
		 <a href="inactiveUser.jsp">Delete User</a> 
		 <a	href="home.jsp">LogOut</a>
	</div>


	<form action="salesWiseFilter" method="post">
		<fieldset id="box">
			<legend></legend>
			<label for="FromDate">From Date : <br>
			<input type="date" name="FromDate" class="today" id="maxDate"
				required></label> <label for="ToDate">To Date : <br>
			<input type="date" name="ToDate" class="today" id="startDate"
				required></label>

			<button type="submit" class="button button1">Search</button>
		</fieldset>
	</form>


</body>

<script src="assets/js/salesDate.js">
	
</script>
</html>