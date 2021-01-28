<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Change Password Page</title>
  <link rel="shortcut icon" type="image/png" href="images.png"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Material Design Bootstrap -->
<link rel="stylesheet" href="css/mdb.min.css">
<!-- Your custom styles (optional) -->
  <link rel="stylesheet" href="css/style.css">
  <style>
	.container {
  	padding: 80px 120px;
	}
	.navbar {
  margin-bottom: 0;
  background-color: #2d2d30;
  border: 0;
  font-size: 11px !important;
  letter-spacing: 4px;
  opacity: 0.9;
}

/* Add a gray color to all navbar links */
.navbar li a, .navbar .navbar-brand {
  color: #d5d5d5 !important;
}

/* On hover, the links will turn white */
.navbar-nav li a:hover {
  color: #fff !important;
  
}

.navbar-nav li {

	float: left;
}

/* The active link */
.navbar-nav li.active a {
  color: #fff !important;
  background-color:#29292c !important;
}

/* Remove border color from the collapsible button */
.navbar-default .navbar-toggle {
  border-color: transparent;
}

/* Dropdown */
.open .dropdown-toggle {
  color: #fff ;
  background-color: #555 !important;
}

/* Dropdown links */
.dropdown-menu li a {
  color: #000 !important;
}

/* On hover, the dropdown links will turn red */
.dropdown-menu li a:hover {
  background-color: red !important;
}
	</style>
</head>
<body>
			<nav class="navbar navbar-default navbar-fixed-top">

		  <div class="container-fluid">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      
		    </div>
		    <div class="collapse navbar-collapse" id="myNavbar">
		      <ul class="nav nav-pills navbar-right">
		        <li><a href="index.html">Welcome</a></li>
		        <li><a href="signup.jsp">Sign Up</a></li>
		        <li><a href="login.jsp">Sign In</a></li>
		        <li><a href="aboutus.jsp">About Us</a></li>
		      </ul>
		    </div>
		  </div>
		</nav>

	<!-- Default form register -->
<form style="margin-left:25%;" class="w-50 text-center border border-light p-5" action="Fp" method = "post" >

    <p class="h4 mb-4">Forget Password</p>
    	<br>
    	<!-- User Name -->
        <input type="text" id="defaultRegisterFormFirstName" class="form-control mb-4" placeholder="User Name" name = "uname" required>
    
    	<!-- E-mail -->
		<input type="email" id="defaultRegisterFormEmail" class="form-control mb-4" placeholder="E-mail" name = "email" required>

		<!-- Password -->
   		<input type="password" id="defaultRegisterFormPassword" class="form-control" placeholder="Password" aria-describedby="defaultRegisterFormPasswordHelpBlock" name = "pass" required>
   		<small id="defaultRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4">
       	At least 8 characters
   		</small>
		<input type="password" id="defaultRegisterFormPassword" class="form-control" placeholder="Re-type Password" aria-describedby="defaultRegisterFormPasswordHelpBlock" name = "cpass" required>
   		<small id="defaultRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4">
       	At least 8 characters
   		</small>
   		   		
		<p style="color:red;">
		<%
		try{			
			String a = session.getAttribute("pass_small").toString();
			out.print(a);
			session.invalidate();
		}catch(Exception e){
		} 
		%>
		</p>
		<p style="color:red;">
		<%
		try{			
			String a = session.getAttribute("pass_mis").toString();
			out.print(a);
			session.invalidate();
		}catch(Exception e){
		} 
		%>
		</p>
		<p style="color:red;">
		<%
		try{			
			String a = session.getAttribute("pass_old").toString();
			out.print(a);
			session.invalidate();
		}catch(Exception e){
		} 
		%>
		</p>
		<p style="color:red;">
		<%
		try{			
			String a = session.getAttribute("user_email").toString();
			out.print(a);
			session.invalidate();
		}catch(Exception e){
		} 
		%>
		</p>
   		<br>
   		<!-- Sign up button -->
    	<button style="margin-left:0%;" class="btn btn-dark" type="submit">Submit</button>     
    	<br><br>
    	<!-- Sign Up -->
	    <p>Go to Sign Up page?
	        <a href="signup.jsp">Sign Up</a>
	    </p>
	    <br>
	    <!-- Sign In -->
	    <p>Go to Sign In page?
	        <a href="login.jsp">Sign In</a>
	    </p>
</form>

<!-- Default form register -->
<!-- jQuery -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="js/mdb.min.js"></script>
<!-- Your custom scripts (optional) -->
<script type="text/javascript"></script>
</body>
</html>