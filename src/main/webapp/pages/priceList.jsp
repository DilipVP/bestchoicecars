<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cars By Price</title>

<style type="text/css">
	
		body{
			background-image:url("https://wallpaperaccess.com/full/27981.jpg");
		background-size:cover;
			
		}
		
		td{
		
			padding:10px;
			width:150px;
		}

		h1,button,legend,label,select,option,td,th{
			text-align: center;
			font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
		}
	
		button{
   			 background-color:rgb(0, 38, 77);
   			 border: none;
   			 color: #FFFFFF;
   			 padding: 40px ,20px;
   			 text-align: center;
   			 -webkit-transition-duration: 0.4s;
   			 transition-duration: 0.4s;
  			 text-decoration: none;
  			 font-size: 16px;
  			 cursor: pointer;
   			display: inline-block;
			   font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
		
		}

		button:hover, button:active {
 		  background-color: #130012;
		}

		fieldset{
			border-radius: 80px;
			border-width: 2px;
		}
			</style>
</head>
<body>
	<h1>BestChoice Cars</h1>
	<form action="confirmCar" name="" id="BrandForm">
	<fieldset>
	<legend id=legend1><b>Choose a Car to Buy</b></legend>
	<table class="t1">
  <tr>
  <th></th>
    <th>Brand</th>
    <th>Model</th>
    <th>Year</th>
    <th>No. Of Kms</th>
     <th>Price</th>
     <th>Fuel</th>
  </tr>
  
  <c:forEach items="${brandlist}" var="carlist">
  <tr>
  <td><input type="radio" id="${carlist.model}" name="cars" value="${carlist.model}"></td>    
  	<td>${carlist.brand}</td>
    <td>${carlist.model}</td>
    <td>${carlist.year}</td>
    <td>${carlist.noOfKms}</td>
    <td>${carlist.price}</td>
    <td>${carlist.fuel}</td>
    </tr>
    </c:forEach>  
	<tr>
	<td colspan="7" align=center><button type="submit">Book your Car</button>
	<button formaction="byPrice" type="submit">Back</button>
	<button type="submit" formaction="homePage">Home</button></td></tr>
	</table>
	</fieldset>
	</form>
	
</body>
</html>