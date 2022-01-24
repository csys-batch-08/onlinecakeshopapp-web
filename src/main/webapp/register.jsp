<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login page</title>
<style>
body {
	margin: 0;
	padding: 0;
	background-image: url();
	background-size: cover;
}

.container {
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
}

.card {
	padding: 60px 40px 50px 40px;
	background:rgb(50,50,50);
	border-radius: 10px;
}

#name {
	width: 200px;
	border: none;
	background: transparent;
	border-bottom: 1px solid white;
	padding: 6px;
	margin-bottom: 20px;
	color: white;
}

#button {
	border-radius: 20px;
	padding: 10px 20px;
	background: dodgerblue;
	color: white;
	margin-top: 20px;
	border: none;
	outline: none;
	margin-left: 50px;
}

#button:hover {
	background-color: burlywood;
	color: black;
	cursor: pointer;
}

a {
	font-size: 16px;
}

img {
	border-radius: 50%;
	position: absolute;
	margin-left: 100px;
	margin-top: -40px;
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

</style>
</head>
<body>
	<form action="Register" method="post">
		<div class="container">
			<img src="assets/user1.png" height="70" width="70">
			<div class="card">
			
				<input type="text" name="userName" placeholder="Username"
					pattern="[A-Za-z]{3,}" required autofocus><br><br>
					
					<input type="email" name="EmailId" placeholder="Email_id"
					required><br><br>
					
					<input type="password" name="password"
					placeholder="Password" title="8 Charecter,@#$&,Lower and Upper Case"
					pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$"	required><br><br> 
					
					<input type="text" name="address" placeholder="address"
					pattern="[A-Za-z0-9]{4,}+[,][A-Za-z]{4,}+[,][0-9]{6}+{25,}" title="Street Number & Street Name,AdressLine,Pincode"
					required><br><br>
					
				<button class="button button1" type="submit" id="button">Submit</button>
				<br><button class="button button1" type="reset" id="button">Reset</button>
	</form>
	</div>
	</div>
</body>
</html>
</body>
</html>