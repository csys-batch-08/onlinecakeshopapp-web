<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
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
}</style>


</head>
<body>

<div class="container">
  <form action="edit" method="post">
  <div class="row">
    <div class="col-25">
      <label for="fname">User Name</label>
    </div>
    <div class="col-75">
      <input type="text" id="fname" name="name" placeholder="Your name.." pattern="[A-Za-z]{3,}" title="Charecter Only Atleast 3 "> 
    </div>
  </div>
 
 <div class="row">
    <div class="col-25">
      <label for="lname">User Email</label>
    </div>
    <div class="col-75">
      <input type="text" id="lname" name="email" placeholder="Your Email Id..">
    </div>
  </div>
 
  <div class="row">
    <div class="col-25">
      <label for="lname">User Address</label>
    </div>
    <div class="col-75">
      <input type="text" id="lname" name="address" placeholder="Your Address.." pattern="[A-Za-z0-9]{4,}+[,][A-Za-z]{4,}+[,][0-9]{6}+{25,}" 
      title="Street Number & Street Name,AdressLine,Pincode">
    </div>
  </div>
  
   <div class="row">
    <div class="col-25">
      <label for="lname">User Wallet</label>
    </div>
    <div class="col-75">
      <input type="text" id="lname" name="wallet" placeholder="Your Wallet.." pattern="[0-9]+" >
    </div>
  </div>

 <br>
  <div class="row">
    <input type="submit" value="Submit">
    &emsp;
    <input type="submit" value="Back">
  </div>
  </form>
</div>


</body>
</html>