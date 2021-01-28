			<!DOCTYPE html>
			<html lang="en">
			<head>
			  <!-- Theme Made By www.w3schools.com - No Copyright -->
			  <title>Car Review System</title>
			  <meta charset="utf-8">
			  <meta name="viewport" content="width=device-width, initial-scale=1">
			  <link rel="shortcut icon" type="image/png" href="images.png"/>
			  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
			  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
			  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
			  <style>
			  .carousel-inner img {
			  width: 100%; /* Set width to 100% */
			  margin: auto;			  
			}
			
			.carousel-caption h3 {
			  color: #fff !important;
			}
			
			@media (max-width: 600px) {
			  .carousel-caption {
			    display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
			  }
			}
			  .container {
			    padding: 80px 120px;
			  }
			  .person {
			    border: 10px solid transparent;
			    margin-bottom: 25px;
			    width: 80%;
			    height: 80%;
			    opacity: 0.7;
			  }
			  .person:hover {
			    border-color: #f1f1f1;
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
		.carousel .item {height: 573px; }		
		/* Add a dark background color to the footer */
footer {
  background-color: #2d2d30;
  color: #f5f5f5;
  padding: 16px;
}

footer a {
  color: #f5f5f5;
}

footer a:hover {
  color: #777;
  text-decoration: none;
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
		      <a class="navbar-brand">Car Review System</a>
		    </div>
		    <div class="collapse navbar-collapse" id="myNavbar">
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="index.jsp">Welcome</a></li>
		        <li><a href="signup.jsp">Sign Up</a></li>
		        <li><a href="login.jsp">Sign In</a></li>
		        <li><a href="aboutus.jsp">About Us</a></li>
		      </ul>
		    </div>
		  </div>
		</nav>
		
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>    
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">    
    <div class="item active">
      <img src="car8.jpg" alt="Chicago">
    </div>

    <div class="item">
      <img src="car9.jpg" alt="New York">
    </div>
    
    <div class="item">
      <img src="car12.jpg" alt="New York">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<footer class="text-center">  
  <p>Copyright © 2019 EagleEye Technologies, Inc. All Rights Reserved.</p>
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip();
})
</script>			
				
</body>
</html>
