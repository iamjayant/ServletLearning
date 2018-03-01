<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><%@ page session="true"%></title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<script type="text/javascript">
function add(){
	var first = document.getElementById("firstNum").value;
	var second = document.getElementById("secondNum").value;
	document.getElementById("output").value = parseInt(first)+parseInt(second);
}
</script>
<body>
	<p>welcome to arithmetic.jsp</p>
	<form>
		Enter first number <input type="text" id="firstNum" name="firstNum" size="20px"></br>
		Enter second number <input type="text" id="secondNum" name="secondNum" size="20px"></br>
		<input type="button" id="btnClick" value="Click Me!!" /></br>
		Output <input type="text" id="output" size="20px">
	</form>
</body>
<script>
	document.getElementById("btnClick").addEventListener("click",add);
</script>
</html>