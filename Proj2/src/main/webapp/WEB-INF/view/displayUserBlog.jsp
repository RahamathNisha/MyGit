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
 			var v=${ubdata};
 			angular.module('myApp5',[]).controller('customersCtrl5', function($scope)
    		{    	
    			console.log(v);
    			$scope.ubgls = v;
    	  	});
 		</script>
  	</head>
  
	<body>
 		<%@include file="header.jsp" %>
		<br><br><br>
		<div class="container">
			<div class="row">
				<div class="container" ng-app="myApp5" ng-controller="customersCtrl5">
  					<div class="row">
  						<a type="button" href="displayBlog" class="btn btn-info">All posts</a>
  						<a type="button" href="blog" class="btn btn-info">Add new blog post</a>
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
					</div>
					<div ng-repeat="c in ubgls | filter:na"> 
     					<div class="alert alert-info">
							<div class="row">
	 							<div class="col-sm-2">
	 								<p><font color="teal" size="6" face="georgia">{{c.busername}} </font></p>     			
    							</div>   
    							<div class="row">
    								<div class="pull-right">    
    									<a type="button" href="cmtBlog?id={{c.blogid}}" class="btn btn-info">Comment blog</a>    
    								</div>
    							</div>      
   							</div>
     					</div>     
   						<div class="row">
							<p><font size="6" face="georgia" color="red">
    							{{c.btitle}}
    						</font></p>
    					</div>    
    					<div class="row">
							<p><font size="3" face="georgia">Author:</font>
	    					<font color="blue">{{c.busername}}</font>{{c.bcreate_date}}</p>
	 					</div>    
	   					<br>     
    					<div class="row">
    						<p>{{c.bcontent}}</p>    
   						</div>
    					<br>             
    					<div class="row">
    						<p><font size="3" face="georgia">Tags:</font>
   							<a href="displayTagBlog?s={{c.btag}}">{{c.btag}}</a></p>
    					</div>    
    					<div class="row">
    						<p><font size="3" face="georgia">Rate:</font>
 							<font color="blue">{{c.brate}}</font></p>
   						</div>   
 				   	</div>      
   					<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
  					<script src="<c:url value='/resources/dist/starrr.js'/>" ></script>
  					<script> 
  						var $s2input = $('#star2_input');
  						$('#star2').starrr({
    						max: 10,
    						rating: $s2input.val(),
    						change: function(e, value){
      							$s2input.val(value).trigger('input');
    						}
  						});
					</script>
					<script type="text/javascript">
  						(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  						(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  						m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  						})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  						ga('create', 'UA-39205841-5', 'dobtco.github.io');
  						ga('send', 'pageview');
					</script>
				 </div>
			</div>
    	</div>
		<section class="section-divider textdivider divider22">	</section>
		<%@include file="footer.jsp" %>
	</body>
</html>