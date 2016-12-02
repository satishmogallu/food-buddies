<%@page import="java.util.List" %>
<%@page import="com.hpe.ahold.beans.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
String name = (String) session.getAttribute("satish");
%>

<!DOCTYPE HTML>
<html>
<head>
<title>Display Food Item</title>
<link rel="stylesheet" type="text/css" href="css/FoodDisplay.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style type="text/css">
.peapod {
	color: black;
	font-size: 30px;
	font-family: 'Berlin Sans FB';
	text-align: left;
}

.bottom {
	color: black;
	font-size: 12px;
	font-family: 'Arial';
	text-align: centre;
}

input[type=text] {
	width: 200px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-image: url('images\search-icon.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 40px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out; .
	p {color: black;
	font-size: 30px;
	font-family: 'Berlin Sans FB';
	text-align: left;
}

}
input[type=text]:focus {
	width: 16%;
}

body {
	font-family: "Lato", sans-serif;
}

ul.tab {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
}

/* Float the list items side by side */
ul.tab li {
	float: left;
}

/* Style the links inside the list items */
ul.tab li a {
	display: inline-block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	transition: 0.5s;
	font-size: 17px;
	font-family: 'Berlin Sans FB';
}

/* Change background color of links on hover */
ul.tab li a:hover {
	background-color: #DCDCDC;
}

/* Create an active/current tablink class */
ul.tab li a:focus, .active {
	background-color: #FAF0E6;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #F8F8FF;
	border-top: none;
}

p {
	font-size: 0; /* Fixes inline block spacing */
}

span {
	width: 50%;
	display: inline-block;
}

span.align-right {
	text-align: right;
}

span a {
	font-size: 16px;
}

#footer {
	position: fixed;
	left: 0px;
	bottom: 0px;
	height: 30px;
	width: 100%;
	text-align: center;
	margin-bottom: 2%;
}

.dropdown{
float:right;

}

</style>
</head>
<body background="images\bl.jpg">
	<div class="header">
		<img src="images\logo.jpg" alt="Peapod" width=18% height=18%
			style="vertical-align: bottom">
		<a href="login.html" style="float:right	; margin-right:3%; margin-top:1.2%" ><b>LOGOUT</b></a> 
		
		<a href="CartItemsDisplay" style="float:right; margin-right:4%"> <img alt="cart"
				src="images/Cart.png" width="40px" height="40px"><b>MY CART</b>
		</a>

		<img
			style="display: block; position: absolute; width: 20%; height: 15%; top: 7%; left: 40%; margin-top: -33px; margin-left: -33px;"
			src="images\Food_buddy.PNG" /> <br>
		<h2>
			<font face="Berlin Sans FB" color="#2F4F4F"><center>Heaven...feaven...foaven...fooven...fooden...food-buddy!</center></font>
		</h2>

	</div>
<form name="form1" action="FoodItemsDisplayByStoreName" >
<input type="hidden" name="action" value="checking">
 <div class="dropdown">
 <select name ="storename"  onchange="javascript:document.form1.submit();">
        <option value="0">SortByStoreName</option>
        <option value="1">Super Stop & Shop #0037</option>
        <option value="2">Super Stop & Shop #0038</option>
        <option value="3">Super Stop & Shop #0039</option>
        <option value="5">Super Stop & Shop #0040</option>
        <option value="4">Super Stop & Shop #0043</option>
        <option value="6">Super Stop & Shop #0044</option>
        <option value="7">Super Stop & Shop #0045</option>
        <option value="8">Super Stop & Shop #0049</option>
        <option value="9">Super Stop & Shop #0053</option>
        <option value="10">Super Stop & Shop #0054</option>
        <option value="All">AllStores</option>
  </select>
    </div> 
    </form>
	
<br>
<form name="FoodItemsform" method="post" action="MyCartServlet">
	<div align="center">
		<table class="responstable"  width="80%" border="1"">

			<tr>
				<th>Select</th>
				<th>Food Image</th>
				<th>Food Name</th>
				<th>Food Description</th>
				<th>Quantity</th>
				<th>Type</th>
				<th>Price</th>
				<th>Best before</th>
				<th>Distance</th>
				<th>Store Name</th>
			</tr>

<%
List<FoodItems> foodItems = (List<FoodItems>) session.getAttribute("foodItemsList");
for (FoodItems food : foodItems) {%>
	<tr>
	<td><input type="checkbox" name="idValue" value="<%= food.getFoodId()%>"/>    </td>
	<td><img src="images/<%= food.getFoodQuantiry() %>.jpg"/></td>
	<td><%= food.getFoodName() %></td>
	<td><%= food.getFoodDesc() %></td>
	<td><%= food.getFoodQuantiry() %></td>
	<td><%= food.getFoodType() %></td>
	<td><%= food.getPrice() %></td>
	<td><%= food.getBestBeforeDate() %></td>
	<td><%= food.getDistance() %></td>
	<td><%= food.getStoreName() %></td>
	</tr>

<%}%>

</table>
<table>
	<tr>
		<td>
			<INPUT id="submit" name="submit" type="submit" value="ClaimFoodItems"/>
		</td>
	</tr>
</table>
</div>
</form>
</body>
</html>