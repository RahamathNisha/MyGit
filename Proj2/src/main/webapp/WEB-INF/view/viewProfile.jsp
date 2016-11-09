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
	<!--<link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>"/>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/js/jquery-2.2.3.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>  -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<!--  <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>-->
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
 <!-- <script src="resources/app.js" type="text/javascript"></script> -->
 
	 <script>
 var v=${stdata};
 angular.module('myApp12',[]).controller('customersCtrl12', function($scope)
    	{
    	
    	console.log(v);
    	$scope.stls = v;
    	  });

 </script>
    
    
  </head>
<body>
<%@include file="header.jsp" %>
<div class="container">
<br>
			<div class="row">
				<br>
				<h1 class="centered">PROFILE</h1>
				<hr>
				<br>
			</div><!-- /row -->
			<div class="row">
<div class="container" ng-app="myApp12" ng-controller="customersCtrl12">
	<div ng-repeat="c in stls">		
 
   
    <div class="col-sm-7 pull-right">
    <div class="span5">
         <div class="spanAddress">
			<address>
				<strong>Name:</strong> <span>{{c.sname}}</span><br>
				<strong>Username:</strong> <span>{{c.username}}</span><br>
				<strong>Password:</strong> <span>{{c.password}}</span><br>
				<strong>Gender:</strong> <span>{{c.gender}}</span><br>
				<strong>Number:</strong> <span>{{c.number}}</span><br>
				<strong>Email id:</strong><span>{{c.email}}</span><br>
				<strong>Address:</strong><span>{{c.houseNumber}}</span><span>{{c.addressLine1}}</span><span>{{c.addressLine2}}</span><span>{{c.city}}</span><span>{{c.state}}</span><span>{{c.country}}</span><span>{{c.zipCode}}</span><br>
				
			</address>
			<div class="col-sm-offset-2 col-sm-10">
				<a type="button" href="editStudent?id={{c.sid}}" class="btn btn-info">Edit</a>
				</div>
		</div>	
		</div> 
		</div>
				

    
    
			
			
			
			
		</div>	
			</div>
			</div>
			</div>
<%@include file="footer.jsp" %>
</body>
</html>