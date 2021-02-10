<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car Booked</title>
<style>
h1,h3,h4{
			text-align: center;
			font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
		}
		
		body{
			background-image:url("https://wallpaperaccess.com/full/27981.jpg");
		background-size:cover;
			
		}
		</style>

</head>
<body>

<h1>BestChoice Cars</h1>
<br><br><br><br>
<h3>Congratulations!!! You have Successfully Booked <i>${brand} ${model}</i> car</h3>
<h4>Thank you!!! Have a Good Day!!!</h4>
</body>
</html>