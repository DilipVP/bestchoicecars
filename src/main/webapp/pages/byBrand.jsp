<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Brand</title>

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
			vertical-align:40%;
			margin:auto;
			padding: 10px;
			text-align: center;
			
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
<div id = "overalldiv">

	<div id ="contentdiv">
	
	<h1>BestChoice Cars</h1>
	<form action="brandList" name="" id="BrandForm">
	<fieldset>
	<legend id=legend1><b>Choose Brand to find Available models</b></legend>
	<table id="alter">
	<tr>
	<th><label for="city">Brand :</label></th>
	<td><select id="carBrands" name = "brand" required>
	<option value="-1" selected="selected">--Select Brand--</option>
    <c:forEach items="${cars}" var="car">
        <c:if test="${car != selected}">
            <option id="${car}" value="${car}">${car}</option>
        </c:if>
    </c:forEach>
	</select></td></tr>
	<tr><td colspan="2" align=center><button id="fbut" type="submit" style="padding-right: 10px;">Find Models</button>
<button  id = "sbut" type="submit" formaction="homePage">Back</button></td></tr>
	</table>
	</fieldset>
	</form>
	</div>
	</div>
</body>
</html>