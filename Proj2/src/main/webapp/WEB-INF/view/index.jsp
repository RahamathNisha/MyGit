<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  	<head>
    	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    	<link rel="shortcut icon" href="<c:url value='/resources/assets/ico/favicon.png'/>" />    

    	<title> Social Media</title>

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
  	</head>
  	<body>
  		<%@include file="header.jsp" %>
       	<!-- ==== HEADERWRAP ==== -->
     	<div id="headerwrap" id="home" name="home">
			<header class="clearfix">
	  		 	<h1><span class="icon icon-shield"></span></h1>
	  		 	<p>Connect your ideas through Collaborative learning.</p>
	  		 	<p>Exclusive for CollaborativE-site.co.</p>
	  		</header>
	  	</div><!-- /headerwrap -->
		<!-- ==== GREYWRAP ==== -->
		<div id="greywrap">
			<div class="row">
				<div class="col-lg-4 callout">
					<span class="icon icon-stack"></span>
					<h2>Graduate yourslef</h2>
					<p>Allow to grow your knowledge gradually which could be empowered as Wisdom. An impulsive thoughts to share from different brain's may create ocean in knowledge. </p>
				</div><!-- col-lg-4 -->
					
				<div class="col-lg-4 callout">
					<span class="icon icon-eye"></span>
					<h2>Vision on You</h2>
					<p>People may search for you to stay connected, to live around your valuable thoughts. Transform our society into bigger vision of innovative thought creator, by involving oneself to get ready to share their incredible ideas. </p>
				</div><!-- col-lg-4 -->	
				
				<div class="col-lg-4 callout">
					<span class="icon icon-heart"></span>
					<h2>Crafted with Love</h2>
					<p>We don't make sites to be ideal,it's just meant to explore your ideas with love & passion. That is our most valued secret. We only do thing that we love to share. </p>	
	      		</div><!-- col-lg-4 -->
	      	</div><!-- row -->
	      	<c:url value="/logout" var="logoutUrl" />
			<form id="logout" action="${logoutUrl}" method="post" >
  				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<a href="javascript:document.getElementById('logout').submit()">Logout</a>
			</c:if>
		</div><!-- greywrap -->										
		<section class="section-divider textdivider divider13">	</section>	
		<%@include file="footer.jsp" %>
    	<!-- Bootstrap core JavaScript================================================== -->
    	<!-- Placed at the end of the document so the pages load faster -->		    	
  	</body>
</html>
