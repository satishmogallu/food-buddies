<%@page import="java.util.List" %>
<%@page import="com.hpe.ahold.beans.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Food Yard</title>
<!-- Standard Favicon -->
<link rel="icon" type="image/x-icon" href="images//favicon.png" />

<!-- For iPhone 4 Retina display: -->
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images//apple-touch-icon-114x114-precomposed.png">
<!-- For iPad: -->
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images//apple-touch-icon-72x72-precomposed.png">
<!-- For iPhone: -->
<link rel="apple-touch-icon-precomposed" href="images//apple-touch-icon-57x57-precomposed.png">

<!-- Library - Bootstrap v3.3.5 -->
<link rel="stylesheet" type="text/css" href="libraries/lib.css">
<link rel="stylesheet" type="text/css" href="libraries/Stroke-Gap-Icon/stroke-gap-icon.css">

<!-- Fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto:400,900,300,300italic,500,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Niconne' rel='stylesheet' type='text/css'>

<!-- Custom - Common CSS -->
<link rel="stylesheet" type="text/css" href="css/plugins.css">
<link rel="stylesheet" type="text/css" href="css/navigation-menu.css">

<!-- Custom - Theme CSS -->
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="css/shortcode.css">

<!--[if lt IE 9]>
		<script src="js/html5/respond.min.js"></script>
    <![endif]-->
    
 <!--icon Menu for the product list-->
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&v1' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Wire+One&v1' rel='stylesheet' type='text/css' />
	<style>
    *{
		margin:0;
		padding:0;
		list-style:none;
	}
	.demo-ad-top{
		margin:20px auto;
		width:728px;
	}
	h1{
		text-align:center;
	}
	.menu{
		width:1010px;
		position:relative;
		margin:80px auto 0 auto;
	}
	.menu li{
		float:left;
		width:200px;
		height:200px;
		margin:1px;
	}
	.menu li a{
		display:block;
		overflow:hidden;
		background:#fff;
		text-align:center;
		height:100%;
		width:100%;
		position:relative;
		-moz-box-shadow:1px 1px 2px #ddd;/* firefox */
		-webkit-box-shadow:1px 1px 2px #ddd;/* Safari and Chrome */
		box-shadow:1px 1px 2px #ddd;
	}
	.menu li.home a:hover{
		background:#37c5e9;
	}
	.menu li.about a:hover{
		background:#57e676;
	}
	.menu li.service a:hover{
		background:#37c5e9;
	}
	.menu li.portfolio a:hover{
		background:#57e676;
	}
	.menu li.contact a:hover{
		background:#37c5e9;
	}
	.menu li a h2{
		color:#000;
		font-family: 'Roboto', sans-serif, arial, serif; 
		font-size:18px;
		font-weight:normal;
		text-transform:uppercase;
		position:absolute;
		padding:10px;
		width:180px;
		top:130px;
		left:0px;
		text-shadow: 0px 1px 1px black;
	}
	.menu li a span{
		width:100px;
		height:100px;
		position:absolute;
		background-position:top left;
		background-repeat:no-repeat;
		background-color:transparent;
		left:50px;
		top:20px;
	}
	.home a span{
		background-image:url(addfood.png);
	}
	.about a span{
		background-image:url(find_food_yard.png);
	}
	.service a span{
		background-image:url(invite.png);
	}
	.portfolio a span{
		background-image:url(account.png);
	}
	.contact a span{
		background-image:url(message.png);
	}
	li:hover h2{
		-moz-animation:animation1 .30s linear;/* firefox */
		-webkit-animation:animation1 .30s linear;/* Safari and Chrome */
	}
	li:hover span{
		-moz-animation:animation2 .60s linear;/* firefox */
		-webkit-animation:animation2 .60s linear;/* Safari and Chrome */
	}
	@keyframes animation1 {
		0%  {margin-top:-180px;}
		100%{  margin-top:0px; }		
	}
	@keyframes animation2 {
		0%  {margin-top:-180px;}
		50%  {margin-top:10px;}
		75%  {margin-top:-15px;}
		100%{  margin-top:0px; }	
	}
	/* firefox */
	@-moz-keyframes animation1 {
		0%  {margin-top:-180px;}
		100%{  margin-top:0px; }		
	}
	@-moz-keyframes animation2 {
		0%  {margin-top:-180px;}
		50%  {margin-top:10px;}
		75%  {margin-top:-15px;}
		100%{  margin-top:0px; }	
	}
	/* Safari and Chrome */
	@-webkit-keyframes animation1 {
		0%  {margin-top:-180px;}
		100%{  margin-top:0px; }		
	}
	@-webkit-keyframes animation2 {
		0%  {margin-top:-180px;}
		50%  {margin-top:10px;}
		75%  {margin-top:-15px;}
		100%{  margin-top:0px; }	
	}
    </style>
<!--Ends here-->
</head>

<body data-offset="200" data-spy="scroll" data-target=".ow-navigation">
<!-- LOADER -->
<div id="site-loader" class="load-complete">
  <div class="loader">
    <div class="loader-inner ball-clip-rotate">
      <div></div>
    </div>
  </div>
</div>
<!-- Loader /- --> 
<!-- Header -->
<header class="header-main container-fluid no-padding"> 
  <!-- Top Header -->
  <div class="top-header container-fluid no-padding">
    <div class="container">
      <div class="topheader-left"> <a href="tel:+5198759822" title="5198759822"><i class="fa fa-mobile" aria-hidden="true"></i>1-800-573-2763 </a> <a href="mailto:Support@info.com" title="Support@info.com"><i class="fa fa-envelope-o" aria-hidden="true"></i>Emailus: Support@peapod.com</a> </div>
      <div class="topheader-right"> <a href="#" title="Login"><i class="fa fa-sign-out" aria-hidden="true"></i>Welcome <%= session.getAttribute("FirstName")%></a> <a href="login.html" title="Register">Logout</a> </div>
    </div>
  </div>
  <!-- Top Header /- --> 
  
  <!-- Menu Block -->
  <div class="menu-block container-fluid no-padding"> 
    <!-- Container -->
    <div class="container">
      <div class="row"> 
        <!-- Navigation -->
        <nav class="navbar ow-navigation">
          <div class="col-md-3">
            <div class="navbar-header">
              <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
              <a title="Logo" href="foodbuddyshome.jsp" class="navbar-brand"><img src="images/logo.png" alt="logo">food buddies<span>Tagline</span></a> <a href="foodbuddyshome.jsp" class="mobile-logo" title="Logo">
              <h3>Food Yard</h3>
              </a> </div>
          </div>
          <div class="col-md-9">
            <div class="navbar-collapse collapse" id="navbar">
              <ul class="nav navbar-nav menubar">
                <li class="dropdown active"> <a aria-expanded="false" aria-haspopup="true" href="foodbuddyshome.jsp" role="button" class="dropdown-toggle" title="Home">Home</a>
                <li class="dropdown"> <a aria-expanded="false" aria-haspopup="true" role="button" class="dropdown-toggle" title="Courses" href="#">How it Works +</a> <i class="ddl-switch fa fa-angle-down"></i>
                  <ul class="dropdown-menu">
                    <li><a title="Home 2" href="#">About Food Buddies</a></li>
                    <li><a title="Course Detail" href="#">Our story</a></li>
                    <li><a title="BlogPost" href="#">Team</a></li>
                    <li><a title="BlogPost" href="#">Feedback</a></li>
                    <li><a title="BlogPost" href="#">Press</a></li>
                  </ul>
                <li class="dropdown"> <a aria-expanded="false" aria-haspopup="true" role="button" class="dropdown-toggle" title="Courses" href="#">Get started +</a> <i class="ddl-switch fa fa-angle-down"></i>
                <ul class="dropdown-menu">
                  <li><a title="Course Detail" href="#">Find a Drop Box</a></li>
                  <li><a title="BlogPost" href="#">Items you’ve missed</a></li>
                  <li><a title="BlogPost" href="#">Guidelines</a></li>
                  <li><a title="BlogPost" href="#">FAQs</a></li>
                </ul>
                <li><a title="About" href="about-page.html">Support us</a></li>
                <li class="dropdown"> <a aria-expanded="false" aria-haspopup="true" role="button" class="dropdown-toggle" title="Blog" href="blog-page.html">Blogs</a>
                <li class="dropdown"> <a aria-expanded="false" aria-haspopup="true" role="button" class="dropdown-toggle" title="Pages" href="#">News</a>
                <li><a title="Contact" href="contactus-page.html">Contact</a></li>
              </ul>
            </div>
          </div>
        </nav>
        <!-- Navigation /- -->
       
      </div>
    </div>
    <!-- Container /- --> 
  </div>
  <!-- Menu Block /- --> 
</header>
<!-- Header /- --> 
<!-- PageBanner -->
<div class="container-fluid no-padding pagebanner">
  <div class="container">
    <div class="pagebanner-content">
      <h3>Food Yard</h3>
      <ol class="breadcrumb">
        <li><a href="foodbuddyshome.jsp">Food buddies</a></li>
        <li>Food Yard</li>
      </ol>
    </div>
  </div>
</div>
<!-- PageBanner /- --> 
<!---Product nav-->

<!-- Event Section -->
<div class="container event-section">
 <!--Product menu-->
  <div> 
<ul class="menu">
		<li class="home">
			<a href="#">
				<h2>Add food items</h2>
				<span></span>
			</a>
		</li>
		<li class="about">
			<a href="#">
				<h2>Find nearest food yard</h2>
				<span></span>
			</a>
		</li>
		<li class="service">
			<a href="#">
				<h2>Invite</h2>
				<span></span>
			</a>
		</li>
		<li class="portfolio">
			<a href="#">
				<h2>My account</h2>
				<span></span>
			</a>
		</li>
		<li class="contact">
			<a href="#">
				<h2>Messages</h2>
				<span></span>
			</a>
		</li>
	</ul>
</div>
<form name="FoodItemsform" method="post" action="MyCartServlet">
  <div class="clearfix"></div>
  <div class="section-padding"></div>
  <div class="event-block">
    <div class="event-box">
      <div class="row">
        <div class="table-responsive">
          <table class="table">
            <thead>
              <tr>
                <th>#</th>
                <th>image</th>
                <th>Name</th>
                <th>Description</th>
                <th>Qty.</th>
                <th>Type</th>
                <th>Price</th>
                <th style="text-align:center">Time </th>
                <th>Distance</th>
              </tr>
            </thead>

            <tbody>
                        <%
List<FoodItems> foodItems = (List<FoodItems>) session.getAttribute("foodItemsList");
for (FoodItems food : foodItems) {%>
              <tr>
                <td><input type="checkbox" name="idValue" value="<%= food.getFoodId()%>"/>    </td>
                <td><div> <img src="images/event2.jpg" alt="event2" width="260" height="160"/> </div></td>
                <td><p><%= food.getFoodName() %></p></td>
                <td><div>
                    <p><%= food.getFoodDesc() %></p>
                  </div></td>
                <td><p><%= food.getFoodQuantiry() %> boxes</p></td>
                <td><p>Cold</p></td>
                <td><p>Free</p></td>
                <td><div class="event-meta"><span><em aria-hidden="true" class="fa fa-clock-o"></em>8:00 Am - 5:00 Pm</span></div></td>
                <td><p><%= food.getDistance() %></p></td>
              </tr>
              <%}%>
            </tbody>
          </table>
        </div>
      </div>
    </div>
 </div>
  </div>
  <nav class="ow-pagination">
    <ul class="pagination">
      <li class="active"><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">Next</a></li>
    </ul>
  </nav>
  <div class="clearfix"></div>
  <div class="section-padding"></div>
  <div align="center"><span class="section-header-block"><INPUT id="submit" name="submit" type="submit" value="Claim"/></div>
  <div class="section-padding"></div>
</form>

<!-- Event Section /- --> 
<!-- Footer Main -->
<footer class="footer-main footer2 container-fluid no-padding"> 
  <!-- Container -->
  <div class="container"> <!-- Footer Bottom -->
    <div class="footer-bottom col-md-12 col-sm-12 no-padding">
        <div class="copyright no-padding"> 
      <span>©1990-2016 Peapod, LLC All Rights Reserved. 1-800-5-PEAPOD (1-800-573-2763)
<br>All trademarks and copyrights held by respective owners.</span>  
		</div>
      <nav class="navbar ow-navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar2" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        <div id="navbar2" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="foodbuddyshome.jsp" title="Home">Home</a></li>
            <li><a href="#" title="COURSE">Get started</a></li>
            <li><a href="#" title="Events">Support us+</a></li>
            <li><a href="#" title="Blog">Blog</a></li>
            <li><a href="#" title="About">Contact</a></li>
          </ul>
        </div>
      </nav>
    </div>
    <!-- Footer Bottom /- --> 
  </div>
  <!-- Container /- --> 

</footer>
<!-- Footer /- --> 

<!-- JQuery v1.11.3 --> 
<script src="js/jquery.min.js"></script> 
<!--script src="js/jquery.knob.js"></script--> 

<!-- Library - Js --> 
<script src="libraries/lib.js"></script><!-- Bootstrap JS File v3.3.5 --> 
<!-- Library - Google Map API --> 
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script> 

<!-- Library - Theme JS --> 
<script src="js/functions.js"></script>



</body>
</html>