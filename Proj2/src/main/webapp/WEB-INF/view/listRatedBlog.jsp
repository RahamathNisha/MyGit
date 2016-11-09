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
  <!--  <style type='text/css'>
    img.ribbon {
      position: fixed;
      z-index: 1;
      top: 0;
      right: 0;
      border: 0;
      cursor: pointer; }

    .container {
      margin-top: 60px;
      text-align: center;
      max-width: 450px; }

    input {
      width: 30px;
      margin: 10px 0;
    }
  </style>-->
  <script>
 var v=${rbdata};
 angular.module('myApp8',[]).controller('customersCtrl8', function($scope)
    	{
    	
    	console.log(v);
    	$scope.rbgls = v;
    	  });

 </script>
  </head>
  
<body>
 <!-- <a href="https://github.com/dobtco/starrr">
    <img class="ribbon" src="https://s3.amazonaws.com/github/ribbons/forkme_right_gray_6d6d6d.png" alt="Fork me on GitHub">
  </a> -->
<%@include file="header.jsp" %>
<br><br><br>
<div class="container">
<div class="row">
<div class="container" ng-app="myApp8" ng-controller="customersCtrl8">

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

<div ng-repeat="c in rbgls | filter:na">
 
     <div class="alert alert-info">
				<div class="row">
	 <div class="col-sm-2"><font color="teal" size="6" face="georgia">
     <p>{{c.busername}}</p> </font>
     <!--  <p> Other articles by:<font color="teal" size="4" face="georgia">{{c.busername}}</font></p>-->			
    </div>
   
    <div class="row">
    <div class="pull-right">
     
   <!--   <a type="button" href="cmtBlog?id={{c.blogid}}" class="btn btn-info">Comment blog</a> -->
   
    </div>
    </div>
   
   
   </div>
     </div>
     
   <div class="row">
		<font size="6" face="georgia" color="red">
    <p>{{c.btitle}}</p>
    </font>
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
    
    <!-- <div class="row">
		<p><font size="3" face="georgia">Website reference link:</font>
	    <font color="blue">{{c.bwebsite}}</font></p>
	 </div>    
	   
	   <div class="row">
		<p><font size="3" face="georgia">Comment:</font>
	    <font color="blue">{{c.bcomment}}</font></p>
	 </div>   -->
    
     <!--  <p class='starrr' id='star2'>
     <a type="button" href="rateBlog?id={{c.blogid}}" class="btn btn-success">Rate blog post</a>
     </p>
    <br />-->
    <!--  <input type='text' name='rating' value='3' id='star2_input' />-->
    
 <!--   <div class="alert alert-info">
  <div class="row">
    <a type="button" href="editBlog?id={{c.blogid}}" class="btn btn-info btn-md">Edit</a>
    <a type="button" href="deleteBlog?id={{c.blogid}}" class="btn btn-info btn-md">Delete</a>
   <a href="mail" class="btn btn-info btn-md">Email</a>
  
    <div class="pull-right">
    <a href="listCmtBlog?id={{c.blogid}}" class="btn btn-info btn-md">view comment</a>
  </div>
  </div>
     </div>-->
     
      
    
   <!--   <form:form id="userProfileForm" class="form-horizontal" method="post" action="./profileSave" enctype="multipart/form-data"> 
    <c:if test="${!empty blogDet}"> 
    <c:forEach items="${blogDet}" var="bg"> --> 
    
		
    
     
     <!--   <div class="col-sm-2">
    <%-- String s=(String)request.getAttribute("img");
    System.out.println("image detail="+s);--%>
   <c:set var="m" value="${requestScope.img}"/>
  
   <img src="${pageContext.request.contextPath}<c:out value="${m}"/>"  class="img-rounded" alt="instrument2" height="160px" width="160px">
  
     </div> -->
    
     
    
    
     
      
  
   
      
   <!--   </c:forEach>
     </c:if>
     </form:form>--> 
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
 

  <!--  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>-->

  
  
  
  
 
</div>
</div>
    </div>
    </div>
<section class="section-divider textdivider divider23">	</section>
<%@include file="footer.jsp" %>
</body>
</html>