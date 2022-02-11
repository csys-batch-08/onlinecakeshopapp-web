<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet" href="assets/css/editProfile.css">
</head>
<body>

<div class="container">
  <form action="edit">
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
      <label for="lname">User Address</label>
    </div>
    <div class="col-75">
      <input type="text" id="lname" name="address" placeholder="Your Address.." pattern="[A-Za-z0-9]{4,}+[,][A-Za-z]{4,}+[,][0-9]{6}+{25,}" 
      title="Street Number & Street Name,AdressLine,Pincode">
    </div>
  </div>
 
 <br>
  <div class="row">
    <input type="submit" value="Submit">
    </div>
    <div class="row">
   <a href="UserProfile">Back</a>
  </div>
  </form>
</div>


</body>
</html>