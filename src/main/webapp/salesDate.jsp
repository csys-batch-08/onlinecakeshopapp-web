<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Sales Date</title>
<link rel="stylesheet" href="assets/css/salesDate.css">
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