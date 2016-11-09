<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Social Media</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
	</head>
	<body data-spy="scroll" data-target=".navbar" data-offset="50">
		<div class="container">
			<div class="row">
			    <nav class="navbar navbar-inverse navbar-fixed-top">
      				<div class="container-fluid">
        				<div class="navbar-header">
          					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
            					<span class="icon icon-shield" style="font-size:30px; color:#3498db;"></span>
          					</button> 
          					<a class="navbar-brand hidden-xs hidden-sm" href="index"><span class="icon icon-shield" style="font-size:18px; color:#3498db;"></span></a>
        				</div>
        				<div class="navbar-collapse collapse" id="navbar-collapse">
          					<ul class="nav navbar-nav">
            					<li><a href="index" class="smoothScroll">Home</a></li>           
								<li> <a href="blog" class="smoothScroll"> Blog</a></li>
								<li> <a href="forum" class="smoothScroll">Discussion Forum</a></li>			
								<li> <a href="chat" class="smoothScroll"> Chat</a></li>
							</ul>			
							<ul class="nav navbar-nav navbar-right">		
      							<li><a href="register" class="smoothScroll"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      							<li><a href="login" class="smoothScroll"><span class="glyphicon glyphicon-log-in"></span> Sign In</a></li>
      							<li class="dropdown">
      								<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-align-justify"></span></a>
      								<ul class="dropdown-menu">
        								<li><a href="userProfile" class="smoothScroll">view profile</a></li>                              
      								</ul>
      							</li>
      							<li class="dropdown">
      								<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-th-list"></span></a>
      								<ul class="dropdown-menu">
        								<li><a href="viewProfile" class="smoothScroll">Friend's list</a></li>	                              
      								</ul>
      							</li>	    
    						</ul>
    					</div>
    				</div>
   	    		</nav><!--/.nav-collapse -->
      		</div>
    	</div>
	</body>
</html>