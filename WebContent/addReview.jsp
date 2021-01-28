<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
		<html>
		<head>
		<title>Add Review Page</title>
				  <meta charset="utf-8">
				  <meta name="viewport" content="width=device-width, initial-scale=1">
				  <link rel="shortcut icon" type="image/png" href="images.png"/>
				  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
				  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
				  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
	<% 
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // For HTTP 1.1
			response.setHeader("Pragma", "no-cache"); // For HTTP 1.0
			response.setHeader("Expires", "0"); // For HTTP Proxies
			if(session.getAttribute("username")==null){
				response.sendRedirect("login.jsp");	
			}			
			String username = session.getAttribute("username").toString();		
			%>
			
			<nav class="navbar navbar-default navbar-fixed-top">
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			      <a class="navbar-brand" href="welcome.jsp">Welcome ${username}</a>
			    </div>
			    <div class="collapse navbar-collapse" id="myNavbar">
			      <ul class="nav navbar-nav navbar-right">
			        <li><a href="welcome.jsp">HOME</a></li>
			        <li><a href="profile.jsp">Profile</a></li>
			        <li><a href="addReview.jsp">Add Review</a></li>
			        <li>
			        <form action = "Logout">
			        <button style = "margin-top: 7px; margin-right: 12px;" type = "submit" value="Logout" class="btn">Logout</button>
					</form></li>
			      </ul>
			    </div>
			  </div>
			</nav>
			<br><br><br>
		<center>
			<form method="post" action="Profile">
			<h1>Review a Car</h1>
			<input type="hidden" name="username" value="<%=username%>"/>
			<input type="text" placeholder="Car Name" name="name" required><br><br>
			<textarea placeholder="Car Description" rows="10" cols="50" name="desc" required></textarea><br><br>			
			<input type="file" placeholder="Car image" name="myimg" required><br><br>
			<input type="submit" name="submit" value="Submit">
			</form>
			<br><br>
		</center>
</body>
</html>