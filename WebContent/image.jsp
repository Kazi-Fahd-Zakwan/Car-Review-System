<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Images</title>
</head>
<body>

		<% 
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // For HTTP 1.1
		response.setHeader("Pragma", "no-cache"); // For HTTP 1.0
		response.setHeader("Expires", "0"); // For HTTP Proxies
		if(session.getAttribute("username") == null ){
			response.sendRedirect("login.jsp");	
		}
		%>
		
		<img src="car.jpg" alt="Car" width="1200" height="800">
		

</body>
</html>