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
<title>Food Buddies</title>
<!-- Standard Favicon -->
<link rel="icon" type="image/x-icon" href="images//favicon.png"/>

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
      <div class="topheader-right"> <a href="#" title="Login"><i class="fa fa-sign-out" aria-hidden="true"></i>Welcome <%= session.getAttribute("FirstName")%> </a> <a href="login.html" title="Register">Logout</a> </div>
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
                    <li><a title="BlogPost" href="#">Items you�ve missed</a></li>
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
        <div class="menu-search">
          <div id="sb-search" class="sb-search">
            <form>
              <input class="sb-search-input" placeholder="Enter your search term..." type="text" value="" name="search" id="search" />
              <button class="sb-search-submit"><i class="fa fa-search"></i></button>
              <span class="sb-icon-search"></span>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- Container /- --> 
  </div>
  <!-- Menu Block /- --> 
</header>
<!-- Header /- --> 

<!-- PhotoSlider Section -->
<div class="photoslider-section container-fluid no-padding">
  <div id="home-slider" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
      <div class="item active"> <img src="images/photoslider1.jpg" alt="photoslider1" width="1920" height="801"/>
        <div class="carousel-caption">
          <div class="container">
            <div class="col-md-6 col-sm-8 col-xs-8 ow-pull-right no-padding">
              <h4 data-animation="animated bounceInLeft">Welcome</h4>
              <h3 data-animation="animated fadeInDown">To<span>Food Buddies</span></h3>
              <p data-animation="animated bounceInRight">A new tech platform helping businesses  connect, collaborate, track, and save.</p>
              <a href="#" title="Learn More" data-animation="animated zoomInUp">To Know More Explore the site</a> </div>
          </div>
        </div>
      </div>
      <div class="item"> <img src="images/photoslider2.jpg" alt="photoslider2" width="1920" height="801"/>
        <div class="carousel-caption">
          <div class="container">
            <div class="col-md-6 col-sm-8 col-xs-8 ow-pull-left no-padding">
              <h4 data-animation="animated bounceInLeft">Welcome</h4>
              <h3 data-animation="animated fadeInDown">To<span>Pantry Buster</span></h3>
              <p data-animation="animated bounceInRight">Recipe Inspiration for leftovers</p>
              <a href="#" title="Learn More" data-animation="animated zoomInUp">What is Pantry Buster</a> </div>
          </div>
        </div>
      </div>
    </div>
    
    <a class="left carousel-control" href="#home-slider" role="button" data-slide="prev"> <i class="fa fa-angle-left"></i> </a> <a class="right carousel-control" href="#home-slider" role="button" data-slide="next"> <i class="fa fa-angle-right"></i> </a> </div>
</div>
<!-- PhotoSlider Section /- --> 
<!-- Welcome Section -->
<div class="container welcome-section">
  <div class="section-padding"></div>
  <div class="section-header">
    <h3>Food <span>Buddies</span></h3>
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
  </div>
  <div class="row">
    <div class="col-md-4 col-sm-6 col-xs-6">
      <div class="welcome-box"> <img src="images/welcome1.jpg" alt="welcome1" width="370" height="440"/>
        <div class="welcome-title">
          <h3>Food Yard</h3>
        </div>
        <div class="welcome-content"> <span></span>
          <p>Community for food surplus donation and sharing. Based on sharing economy principles, connecting retailers /warehouses/manufacturers/individuals wanting to exchange or sell surplus edible food.</p>
          <a href="FoodItemsDisplay" title="Apply now">Know more</a> </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 col-xs-6">
      <div class="welcome-box"> <img src="images/welcome2.jpg" alt="welcome2" width="370" height="440"/>
        <div class="welcome-title">
          <h3>Pantry Buster</h3>
        </div>
        <div class="welcome-content"> <span></span>
          <p>Recipe Inspiration for leftovers</p>
          <a href="#" title="Apply now">Know more</a> </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 col-xs-6">
      <div class="welcome-box"> <img src="images/welcome3.jpg" alt="welcome3" width="370" height="440"/>
        <div class="welcome-title">
          <h3>Dollar Stretcher </h3>
        </div>
        <div class="welcome-content"> <span></span>
          <p>Practical help and advice on using up ingredients, it�s storage that would otherwise be forgotten in your pantry and fridge and go to waste</p>
          <a href="#" title="Apply now">Know more</a> </div>
      </div>
    </div>
  </div>
  <div class="section-padding"></div>
</div>
<!-- Welcome Section /- --> 

<!-- Parallax Section -->
<div class="container-fluid no-padding parallax-section">
  <div class="parallax-carousel">
    <div class="parallax-block">
      <div class="parallax-box"> <img src="images/parallax-bg.jpg" alt="parallax" width="1920" height="600"/> </div>
      <div class="parallax-content">
        <h3>Who uses Food Buddies ?</h3>
        <h3><span>Food retailers/businesses</span></h3>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
        <a href="#" title="Find More About Us">Find More About Us</a>
        <ul>
          <li><img src="images/parallax-thumb1.jpg" alt="parallax-thumb1" width="100" height="80"/></li>
          <li><img src="images/parallax-thumb2.jpg" alt="parallax-thumb2" width="100" height="80"/></li>
          <li><img src="images/parallax-thumb3.jpg" alt="parallax-thumb3" width="100" height="80"/></li>
        </ul>
      </div>
    </div>
    <div class="parallax-block">
      <div class="parallax-box"> <img src="images/parallax-bg.jpg" alt="parallax" width="1920" height="600"/> </div>
      <div class="parallax-content">
        <h3>Who uses Food Buddies ?</h3>
        <h3><span>Food retailers/businesses</span></h3>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
        <a href="#" title="Find More About Us">Find More About Us</a>
        <ul>
          <li><img src="images/parallax-thumb1.jpg" alt="parallax-thumb1" width="100" height="80"/></li>
          <li><img src="images/parallax-thumb2.jpg" alt="parallax-thumb2" width="100" height="80"/></li>
          <li><img src="images/parallax-thumb3.jpg" alt="parallax-thumb3" width="100" height="80"/></li>
        </ul>
      </div>
    </div>
    <div class="parallax-block">
      <div class="parallax-box"> <img src="images/parallax-bg.jpg" alt="parallax" width="1920" height="600"/> </div>
      <div class="parallax-content">
        <h3>Who uses Food Buddies ?</h3>
        <h3><span>Food retailers/businesses</span></h3>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
        <a href="#" title="Find More About Us">Find More About Us</a>
        <ul>
          <li><img src="images/parallax-thumb1.jpg" alt="parallax-thumb1" width="100" height="80"/></li>
          <li><img src="images/parallax-thumb2.jpg" alt="parallax-thumb2" width="100" height="80"/></li>
          <li><img src="images/parallax-thumb3.jpg" alt="parallax-thumb3" width="100" height="80"/></li>
        </ul>
      </div>
    </div>
    <div class="parallax-block">
      <div class="parallax-box"> <img src="images/parallax-bg.jpg" alt="parallax" width="1920" height="600"/> </div>
      <div class="parallax-content">
        <h3>Who uses Food Buddies ?</h3>
        <h3><span>Food retailers/businesses</span></h3>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
        <a href="#" title="Find More About Us">Find More About Us</a>
        <ul>
          <li><img src="images/parallax-thumb1.jpg" alt="parallax-thumb1" width="100" height="80"/></li>
          <li><img src="images/parallax-thumb2.jpg" alt="parallax-thumb2" width="100" height="80"/></li>
          <li><img src="images/parallax-thumb3.jpg" alt="parallax-thumb3" width="100" height="80"/></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- Parallax Section /- --> 

<!-- Event Section --><!-- Event Section /- --> 

<!-- Search Courses --> <!-- Search Courses /- --> 

<!-- Video Testimonial Section -->
<div class="container-fluid no-padding video-testimonial-section">
  <div class="container">
    <div class="section-padding"></div>
    <div class="section-header">
      <h3>Learn <span>how it works </span></h3>
      <p>Watch the video below</p>
    </div>
    <div class="row"  >
      <div class="col-md-3" ></div>
      <div class="col-md-6 col-sm-12 col-centered" >
        <div class="video-block video-block-lg"> <a title="Paly Video" class="popup-youtube" href="http://www.youtube.com/watch?v=0O2aH4XLbto"><i class="fa fa-play" aria-hidden="true"></i></a> <img  src="images/video-poster-1.jpg" width="570" height="400" alt="Video Poster-1"/>
          <div class="video-content">
            <h3>Lorem Ipsum</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-sm-12">
        <div class="testimonial-block">
          <div id="testimonial-slider" class="carousel slide" data-ride="carousel"> </div>
        </div>
      </div>
    </div>
    <div class="col-md-3" ></div>
    <div class="section-padding"></div>
  </div>
</div>
<!-- Video Testimonial Section /- --> 

<!-- LatestBlog Section --> <!-- LatestBlog Section --> 
<!-- Footer Main -->
<footer class="footer-main container-fluid no-padding"> 
  <!-- Container -->
  <div class="container"> <!-- Footer Bottom -->
    <div class="footer-bottom col-md-12 col-sm-12 no-padding">
      <div class="copyright no-padding"> <span>�1990-2016 Peapod, LLC All Rights Reserved. 1-800-5-PEAPOD (1-800-573-2763) <br>
        All trademarks and copyrights held by respective owners.</span> </div>
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