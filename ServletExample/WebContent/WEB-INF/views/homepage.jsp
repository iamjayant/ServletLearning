<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title>
		<%@ page session="true"%>
		
	</title>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	</head>	
	<body>
		<p>Hi <%String name = (String)session.getAttribute("fname")+" "+(String)session.getAttribute("lname"); 
		out.print(name);%><br>
		<%out.println("ur session id is: "+session.getId()); %>
		<p>u have logged in successfully</p>
		<a href="logoutServlet">logout</a></br>
		<jsp:include page="arithmetic.jsp"></jsp:include>
		<!-- <form action="divideTwoNumbers()" method="post">			
			Enter first number <input type="text" name="firstNum"size="20px">
			Enter second number <input type="text" name="secondNum"size="20px">
			<input type="submit" value="divide">
		</form>	 -->
	</body>	
</html>