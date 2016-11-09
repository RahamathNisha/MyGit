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
  		
  		<script>  
 			var v=${ctdata};
 			angular.module('myApp8',[]).controller('customersCtrl8', function($scope)
    		{	    	
    			console.log(v);
    			$scope.chtls = v;
    	  	});
 		</script>
	</head>
	<body>
		<%@include file="header.jsp" %>
		<br><br><br>
		<div class="container">
			<div class="row">
				<div class="container" ng-app="myApp8" ng-controller="customersCtrl8">	
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
					</div> 
     				<div class="alert alert-info">
						<div class="row">
    						<div class="col-sm-12 pull-right">
    							<a type="button" href="chat" class="btn btn-info">Back to chat</a>
    						</div>
    					</div>
   					</div>     
     				<div class="table table-responsive">
						<table class="table">
        					<thead class="thead-inverse">	          
        					</thead>  
        					<tbody>  
         						<tr ng-repeat="c in chtls | filter:na">
         							<td>{{c.message}}</td>
         							<td>{{c.msgDate}}</td>	         		
         						</tr>
							</tbody>
						</table>	
					</div>       
				</div>
			</div>
		</div>
		<section class="section-divider textdivider divider25">	</section>
		<%@include file="footer.jsp" %>
	</body>
</html>