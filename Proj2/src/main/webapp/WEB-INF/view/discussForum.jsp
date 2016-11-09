<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
 
     	<link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/css/bootstrap.min.css'/> "/>
    	<link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/css/bootstrap.css.map'/> "/>
    	<link rel="stylesheet" href="<c:url value='/resources/font-awesome-4.6.3/css/font-awesome.min.css'/> "/>
     	<link rel="stylesheet" href="<c:url value='/resources/dist/starrr.css'/>" />
    	
    	<script>
 			var v=${tdata};
 
 			angular.module('myApp2',[]).controller('customersCtrl2', function($scope)
    		{    	
    			console.log(v);
    			$scope.tfrmls = v;
    	  	});
 		</script>
	</head>
	<body>
		<%@include file="header.jsp" %>
		<br><br><br>
		<div class="container">
			<div class="row">
				<div class="container" ng-app="myApp2" ng-controller="customersCtrl2">	 			
			         <div class="row">
						<div class="alert alert-info">
							<ul class="nav navbar-nav">
    							<li class="active"><a data-toggle="tab" href="listForum">Back to all discussion topics</a></li>
    						</ul>    
  						</div>
 					</div>
 
  					<div class="row">
  						<form> 
				  			<div class="col-sm-8 pull-right">
 								<div class="form-group">
									<div class="input-group">
										<div class="input-group-addon">
				 							<i class="fa fa-search"></i>
										</div>
										<input type="text" class="form-control" placeholder="Search....." ng-model="na"/>
									</div>		
								</div>
  							</div>
						</form>
						<div ng-repeat="c in tfrmls | filter:na">
         					<p><font color="red" size="5" face="georgia">{{c.fusername}}</font>  <font size="3">{{c.fcreate_date}}</font></p>         	
         					<p><font color="blue" size="3" face="andalus">Title:</font>{{c.ftitle}}</p>
         					<p><font color="blue" size="3" face="andalus">Content:</font>{{c.fcontent}}</p>
         					<p><font color="blue" size="3" face="andalus">Subject:</font>{{c.category}}</p>
         					<p><font color="blue" size="3" face="andalus">Rated as:</font>{{c.frate}}</p>
         					<div class='starrr' id='star2'></div>
    						<br />
         					<div class="row">
   								<div class="col-sm-10 pull-right">
         							<a type="button" href="postCmt?id={{c.forumId}}" class="btn btn-info">Post your comments</a>
         							<a type="button" href="cmtForum?id={{c.forumId}}" class="btn btn-info">RATE POST</a>         		
								</div>
      						</div>   	    
 						</div>
 					</div> 
 				</div>
 			</div>
 		</div>
		
		<section class="section-divider textdivider divider19">	</section> 
		<%@include file="footer.jsp" %>
	</body>
</html>