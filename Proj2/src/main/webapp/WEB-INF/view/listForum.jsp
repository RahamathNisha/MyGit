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
 
	
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/css/bootstrap.min.css'/> "/>
    <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/css/bootstrap.css.map'/> "/>
    <link rel="stylesheet" href="<c:url value='/resources/font-awesome-4.6.3/css/font-awesome.min.css'/> "/>
     <link rel="stylesheet" href="<c:url value='/resources/dist/starrr.css'/>" />
    <script>
 var v=${fdata};
 angular.module('myApp',[]).controller('customersCtrl', function($scope)
    	{
    	
    	console.log(v);
    	$scope.frmls = v;
    	  });

 </script>
 
</head>
<body>
<%@include file="header.jsp" %>
<br><br><br>
<div class="container">
<div class="row">
<div class="container" ng-app="myApp" ng-controller="customersCtrl">
 
	
	
	
			<!--  <div class="form-group">
			<div class="col-xs-5">
				<label for="bloglist">Search:</label>
						<input type="text" id="forumlist" name="flist" placeholder="Search your topic....." class="form-control">
						</div>
						
				</div>-->     
	  


         		

<div class="alert alert-info">
<div class="row">
<div class="pull-right">
<a type="button" href="forum" class="btn btn-info">open new topic</a>
    
  </div>
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

<div ng-repeat="c in frmls | filter:na">
         		<p><font color="red" size="5" face="georgia">{{c.fusername}}</font>  <font size="3">{{c.fcreate_date}}</font></p>
         	
         		<p><font color="blue" size="3" face="andalus">Title:</font><a href="discussForum?s={{c.ftitle}}">{{c.ftitle}}</a></p>
         		<p><font color="blue" size="3" face="andalus">Content:</font>{{c.fcontent}}</p>
         		<p><font color="blue" size="3" face="andalus">Subject:</font>{{c.category}}</p></font>
         		
         	<div class='starrr' id='star2'></div>
    <br />
    <!--  <p>Rate the post:<input type='text' name='rating' id='star2_input' /></p>-->
    <div class="alert alert-info">
         		<!--  <ul class="nav navbar-nav navbar-right">
    <li><a data-toggle="tab" href="editForums?id={{c.forumId}}">Edit</a></li>
    <li><a data-toggle="tab" href="deleteForum?id={{c.forumId}}">Delete</a></li>
   </ul>-->
   <div class="row">
   <div class="pull-right">
   <a type="button" href="editForum?id={{c.forumId}}" class="btn btn-info">EDIT</a>
         		<a type="button" href="deleteForum?id={{c.forumId}}" class="btn btn-info">DELETE</a>
         		<a type="button" href="cmtForum?id={{c.forumId}}" class="btn btn-info">RATE POST</a>
</div>
      </div>   	    
 </div>
  
 </div> 
  
  
 </div>
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
<section class="section-divider textdivider divider17">	</section>
<%@include file="footer.jsp" %>
</body>
</html>