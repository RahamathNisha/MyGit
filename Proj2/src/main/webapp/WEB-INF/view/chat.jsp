<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
  	
  	<head>
    	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  
	    <link rel="shortcut icon" href="<c:url value='/resources/assets/ico/favicon.png'/>" />
    
    	<title>Social Media</title>

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

		<script type="text/javascript" src="<c:url value='/resources/js/jquery-1.7.2.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources/js/knockout-2.0.0.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources/js/chat.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/js/jquery-1.8.3.js'/>"></script>
 		<script>
			$(document).ready(
			function()
			{
				$("#btnfadeout").click(
		   		function()
		    	{
				   	$("#d1").fadeOut(5000);
		    	}); 
				$("#btnfadein").click(
		    	function()
		    	{
				   	$("#d1").fadeIn(5000);
		    	}); 
  				$("#btnhide").click(
       			function()
       			{
		   			$("#d1").hide(50);
       			}); 
   				$("#btnshow").click(
       			function()
       			{
		   			$("#d1").show(500);
       			}); 
   				$("#btntoggle").click(
       			function()
       			{
		   			$("#d1").toggle(5000);
       			}); 
			});
		</script>
  	</head>
 
	<body>
		<%@include file="header.jsp" %>
		<br><br>
		<div class="container">
			<div class="alert alert-info">
				<ul class="nav nav-tabs">
    				<li class="active"><a type="button" href="index" class="btn btn-info">Home</a></li>
   					<li class="dropdown">   
      					<a type="button" class="dropdown-toggle" data-toggle="dropdown" href="#" id="btntoggle">Settings<span class="caret"></span></a>        
      					<ul class="dropdown-menu">     
       						<li><div id="d1"><a href="listChat">open up your chat</a> </div></li>
        					<li><a type="button" href="QRCheck" class="btn btn-default" id="">Encrypt</a></li>       
      					</ul>      
    				</li>
    			</ul>
			</div>
			<h1>Chat</h1>
	
			<form id="joinChatForm" action="<c:url value='/mvc/chat'/>" data-bind="visible: activePollingXhr() == null">
				<p>
					<label for="user">User: </label>
					<input id="user" name="user" placeholder="enter your name...."  type="text" data-bind="value: userName"/>
					<input name="messageIndex" type="hidden" data-bind="value: messageIndex"/>
					<button id="start" type="submit" data-bind="click: joinChat" class="btn btn-success">Join Chat</button>
				</p>
			</form>

			<form id="leaveChatForm" action="<c:url value='/mvc/chat'/>" data-bind="visible: activePollingXhr() != null">
				<p>
					You're chatting as <strong data-bind="text: userName"></strong>
					<button id="leave" type="submit" data-bind="click: leaveChat" class="btn btn-danger">Leave Chat</button>
				</p>
			</form>

			<div data-bind="visible: activePollingXhr() != null">
				<textarea rows="15" cols="60" readonly="readonly" data-bind="text: chatContent"></textarea>
			</div>
	
			<form id="postMessageForm" action="<c:url value='/mvc/chat'/>" data-bind="visible: activePollingXhr() != null">
				<p>
					<input id="message" name="message" type="text" data-bind="value: message" />
					<button id="post" type="submit" data-bind="click: postMessage" class="btn btn-info">Post</button>
				</p>
			</form>
		
			<div class="row">
				<div class="col-lg-offset-2 col-sm-4 pull-right">
					<img class="img-responsive" src="<c:url value='/resources/assets/img/iphone.png'/> " alt="">
				</div><!-- col -->
			</div><!-- row -->
		</div>
		<%@include file="footer.jsp" %>
	</body>

</html>
