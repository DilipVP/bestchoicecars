<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
	
	<style>
		
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
		}

		h1,a{
			vertical-align:40%;
			text-align: center;
			font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
		}
	
		a:link, a:visited {
   			 background-color:rgb(0, 38, 77);
   			 border: none;
   			 color: #FFFFFF;
   			 padding: 15px 32px;
   			 text-align: center;
   			 -webkit-transition-duration: 0.4s;
   			 transition-duration: 0.4s;
  			 text-decoration: none;
  			 font-size: 16px;
  			 cursor: pointer;
   			display: inline-block;
		}

		a:hover, a:active {
 		  background-color: #130012;
		}
		
	</style>
</head>
<body>
<div id = "overalldiv">

	<div id ="contentdiv">
	<h1>BestChoice Cars</h1>
	<br><br><br><br>
	<table>
	<tr><td><a href="byBrand">Search By Brand</a></td>
	<td><a href="byPrice">Search By Price</a><tr><td>
	</table>
	</div>

</div>


</body>
</html>