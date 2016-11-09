<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>	
	
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
    <link rel="stylesheet" href="<c:url value='/resources/font-awesome-4.6.3/css/font-awesome.min.css'/> "/>
    
</head>
<body>
<%@include file="home.jsp" %>
<div class="container">
<br>
			<!--<div class="row">
				<br>
				<h1 class="centered">LOGIN PAGE</h1>
				<hr>
				<br>
			</div> --><!-- /row --> 
			<br><br>
			<div class="row">
			<div class="col-lg-5">
						<img class="img-responsive" src="<c:url value='/resources/assets/img/collab2.jpg'/> " align="">
					</div>
      <div class="modal-dialog pull-right" style="left:20%;">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <!--  <button type="button" class="close" data-dismiss="modal">&times;</button>-->
          <h4 class="modal-title">Login</h4>
        </div>
        <div class="modal-body">
			
			<div align="center">
        <form name="loginForm" commandName="stud" class="form-horizontal" method="post" action="<c:url value="/login" />"> 
		<!--  <div class="form-group">
				 
					<div class="col-sm-5">
						<form:errors path="*"  cssStyle="color:red;"/>
					</div>
				</div>-->
		
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                
                 <div class="span9 center">
                   <c:if test="${not empty msg}">
                <div class="msg">${msg} <br><br></div>
            </c:if>
            
           <div class="form-group">
				<label for="username" class="col-sm-2 control-label">Username:</label>
					<div class="col-sm-8">
					<div class="input-group">
					<div class="input-group-addon"><i class="fa fa-user fa-fw"></i></div>
						<input type="text" id="username" name="username" class="form-control" placeholder="Enter Your User ID"/>
					</div>
					</div>
			</div>
			
			<div class="form-group">
				<label for="password" class="col-sm-2 control-label"> Password:</label>
					<div class="col-sm-8">
					<div class="input-group">
					<div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
						<input type="password" id="password" name="password" class="form-control" placeholder="Enter Your Password"/>
					</div>
					</div>
			</div>
			
			 <div class="modal-footer">
			<div class="form-group">
			    <div class="col-sm-12">
			         <input type="submit" name="signin" value="Sign In" class="btn btn-info pull-center"/>
						 <a href="<spring:url value="/" />" class="btn btn-info margin-left25">Cancel</a>
					</div>
		</div> 
		</div>
		</div>
		     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
            
            </div>
		</div>
	</div>
	

	
	</div>
	</div>
	<!-- ==== GREYWRAP ==== -->
		<!--<div id="greywrap">-->
			<div class="container">
				<div class="row white centered">
					<div class="col-lg-6 centered">
						<img class="img-responsive" src="<c:url value='/resources/assets/img/macbook.png'/> " align="">
					</div>
					<div class="col-lg-3 centered">
					<img class="img img-circle" src="<c:url value='/resources/assets/img/team/team03.jpg'/> " height="120px" width="120px" alt="">
					<br>
					<h4><b>Michele Lampa</b></h4>
					<a href="#" class="icon icon-twitter"></a>
					<a href="#" class="icon icon-facebook"></a>
					<a href="#" class="icon icon-flickr"></a>
					<p>Be a creative director is a hard task, but Michele loves what she does. Her combination of knowledge and expertise is an important pillar in our agency.</p>
				</div><!-- col-lg-3 -->
				
				<div class="col-lg-3 centered">
					<img class="img img-circle" src="<c:url value='/resources/assets/img/team/team04.jpg'/> " height="120px" width="120px" alt="">
					<br>
					<h4><b>Jaye Smith</b></h4>
					<a href="#" class="icon icon-twitter"></a>
					<a href="#" class="icon icon-facebook"></a>
					<a href="#" class="icon icon-flickr"></a>
					<p>Jaye began making websites when animated logos and scrolling text were cool, but has since found a love for simplicity, creating websites that are a pleasure to browse. Monkey Island Fan.</p>
				</div>
				
					
					<!--  <div class="col-lg-4">
						<h2>We Are Hiring!</h2>
						<p>Do you want to be one of use? Sure you want, because we are an awesome team!. Here we work hard every day to craft pixel perfect sites.</p>
						<p><a href="contact" class="btn btn-success">Contact Us</a></p>
					</div>-->					
				</div><!-- row -->
			</div>
			<br>
			<br>
		<!-- </div>--><!-- greywrap -->
		
		<!-- ==== SECTION DIVIDER3 -->
		<section class="section-divider textdivider divider3" style="width:168%;margin-left: -382px;">
			<div class="container">
				<h1>DESIGNED TO SOLVE PROBLEMS</h1>
				<hr>
				<p>From the purely practical to the richly philosophical, design is the solution to a host of challenges.</p>
			</div><!-- container -->
		</section><!-- section -->
		<section class="section-divider textdivider divider9">	</section>
<%@include file="homefooter.jsp" %>
</body>
</html>