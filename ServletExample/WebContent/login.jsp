<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title> My first JSP   </title>
	</head>	
	<body>		
		<form action="loginServlet" method="post">			
			Enter first name <input type="text" name="first"size="20px">
			Enter last name <input type="text" name="last"size="20px">
			<input type="submit" value="login">
		</form>	
	</body>	
</html>