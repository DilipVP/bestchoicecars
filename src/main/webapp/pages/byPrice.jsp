<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Price</title>

<style type="text/css">
	
		body{
			background-image:url("https://wallpaperaccess.com/full/27981.jpg");
		background-size:cover;
			
		}
		
		#overalldiv{
		
			width: 600px;
			height: 225px;
			margin: auto;
			padding: 10px;
			align-content: center;
		}

		#contentdiv,table{
			
			margin:auto;
			padding: 10px;
			text-align: center;
			
		}
		
		td{
		
			padding:10px;
			
		}

		h1,button,legend,label,input,td,th{
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

	<div id = "overalldiv">

	<div id ="contentdiv">
		<h1>BestChoice Cars</h1>
		<form action="priceList" name="" id="PriceForm">
	<fieldset>
	<legend id=legend1><b>Choose Price range to find Available Cars</b></legend>
	<table id="alter">
	<tr><td>
	<input type = radio value="less_500000" id="less_500000" name="price"></td>
	<td><label for= "less_500000">Less than 5 Lakhs</label>
	</td></tr>
	<tr><td>
	<input type = radio value="more_500000" id="more_500000" name="price"></td>
	<td><label for= "more_500000">More than 5 Lakhs</label>
	</td></tr>
	<tr><td colspan="2" align=center><button type="submit">Find Your Car</button>
	<button type="submit" formaction="homePage">Back</button></td></tr>
	</table>
	</fieldset>
	</form>
		</div>
		</div>
</body>
</html>