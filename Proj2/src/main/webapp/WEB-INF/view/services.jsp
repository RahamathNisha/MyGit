<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <link rel="shortcut icon" href="<c:url value='/resources/assets/ico/favicon.png'/>" />
    

    <title> Collaborative e-Site</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/resources/assets/css/bootstrap.css'/>" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="<c:url value='/resources/assets/css/main.css'/>" rel="stylesheet" />
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/icomoon.css'/>" />
    <link href="<c:url value='/resources/assets/css/animate-custom.css'/>" rel="stylesheet" />


    
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>
    
    <script src="<c:url value='/resources/assets/js/jquery.min.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/js/modernizr.custom.js'/>" ></script>
    
    <script type="text/javascript" src="<c:url value='/resources/assets/js/bootstrap.min.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/js/retina.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery.easing.1.3.js'/>" ></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/js/smoothscroll.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery-func.js'/>" ></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
<%@include file="header.jsp" %>
<!-- ==== SERVICES ==== -->
		<div class="container" id="services" name="services">
			<br>
			<br>
			<div class="row">
				<h2 class="centered">ONE BRAND, ONE VOICE.</h2>
				<hr>
				<br>
				<div class="col-lg-offset-2 col-lg-8">
					<p>Employees and consumers. Two halves of a brand’s entirety, the whole of a brand’s audience. Sometimes these two halves have very different viewpoints, creating a weak spot in the brand story. Weakness tarnishes credibility. Brands that aren’t credible aren’t viable.
					</p>
					<p>We squash weakness by designing the whole brand story. It’s crafted around the truism held by employees and consumers to create an experience that connects from the inside out.</p>
					<p>By being true to the brand we represent, we elevate the audiences’ relationship to it. Like becomes love becomes a passion. Passion becomes advocacy. And we see the brand blossom from within, creating a whole story the audience embraces. That’s when the brand can truly flex its muscles.</p>
				</div><!-- col-lg -->
			</div><!-- row -->
			
			<div class="row">
				<h2 class="centered">MOBILE FIRST THINKING, ALWAYS.</h2>
				<hr>
				<br>
				<div class="col-lg-offset-2 col-lg-8">
					<img class="img-responsive" src="<c:url value='/resources/assets/img/iphone.png'/> " alt="">
				</div><!-- col -->
			</div><!-- row -->
		</div><!-- container -->
  		

		<!-- ==== SECTION DIVIDER2 -->
		<section class="section-divider textdivider divider2">
			<div class="container">
				<h1>DISCUSSION IS AN INTERACTION</h1>
				<hr>
				<p>To develop a deeper and more meaningful connection with consumers, we believe design must invite them to take part in the conversation.</p>
			</div><!-- container -->
		</section><!-- section -->
		<section class="section-divider textdivider divider8">	</section>
<%@include file="footer.jsp" %>
</body>
</html>