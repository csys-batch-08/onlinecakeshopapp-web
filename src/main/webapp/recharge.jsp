<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Wallet Recharge</title>
</head>
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: blue;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: pink;
}

.container {
  border-radius: 5px;
  background-color:#FFDDDD;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>

<body>
<div class="container">
<form action="RechargeWallet">

<h4 style="color:red">User Email ID : <c:out value='${sessionScope.email}'/></h4><br/>
<h4 style="color:red">Your Wallet Balance : <c:out value='${sessionScope.userWallet}'/></h4>


 <div class="row">
    <div class="col-25">
      <label for="fname">Enter Amount : </label>
    </div>
    <div class="col-75">
      <input type="text" id="fname" name="newamount" placeholder="Amount" > 
    </div>
  </div>
 
 <div class="row">
 <input type="submit" value="Recharge">
 </div>

</form>

</div>
</body>
</html>