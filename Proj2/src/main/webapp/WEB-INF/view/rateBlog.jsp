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
    <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/css/bootstrap.min.css'/> "/>
    <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/css/bootstrap.css.map'/> "/>
    <link rel="stylesheet" href="<c:url value='/resources/font-awesome-4.6.3/css/font-awesome.min.css'/> "/>
     <link rel="stylesheet" href="<c:url value='/resources/dist/starrr.css'/>" />
  </head>
<body>
<%@include file="header.jsp" %>
<br><br>
		<div class="container">
		<br>
			
  
			
		
		<div class="alert alert-info">
	<div class="row">
    <a href="displayBlog" class="btn btn-info">Back to view all blogs</a>
   
    </div>
    </div>
    
	<form:form id="rateblogForm" commandName="blg" method="post" action="./saveBlogRate" enctype="multipart/form-data">
	<!--  <div class="form-group">
				 
					<div class="col-sm-5">
						<form:errors path="*"  cssStyle="color:red;"/>
					</div>
				</div>-->
		<br>
        <div class="row">
			  <div class="form-group">
     <div class="col-xs-6">
  <!-- <label for="blogid">ForumId:</label> -->
  <form:hidden path="blogid" cssClass="form-control" value="${rtbgInfo.blogid}" readonly="true" placeholder="Blog id....."/>
  </div>
   <!--  <div class="col-sm-3">
						<form:errors path="blogid"  cssStyle="color:red;"/>
					</div>-->
  
  </div>
  </div>        
			 <div class="row">
			  <div class="form-group">
     <div class="col-xs-6">
  <label for="busername">Username:</label>
  <form:input path="busername" cssClass="form-control" value="${rtbgInfo.busername}" readonly="true" placeholder="Username....."/>
  </div>
  
    <div class="col-sm-3">
		<form:errors path="busername"  cssStyle="color:red;"/>
	</div> 
  
  </div>
  </div>
			 
			 <div class="row">
			  <div class="form-group">
     <div class="col-xs-6">
  <label for="btitle">Blog post title:</label>
  <form:input path="btitle" cssClass="form-control" value="${rtbgInfo.btitle}" readonly="true" placeholder="Blog post title....."/>
  </div>
  	<div class="col-sm-3">
						<form:errors path="btitle"  cssStyle="color:red;"/>
					</div>
  
</div> 
	</div>	
				<!-- <div class="row">
				  <div class="col-sm-8">
			<div class="form-group">
			<div class="col-xs-5">
				<label for="bloglist">Add to blog list</label>
						<input type="text" id="bloglist" name="blist" placeholder="Tag your blog...." class="form-control"/>
						</div> -->
						<!-- <div class="col-sm-3">
						<form:errors path=""  cssStyle="color:red;"/>
					</div> -->
				<!--  </div>     
			   </div>
			   
			    <div class="col-sm-5">
				<div class="form-group">
					<div class="col-sm-2">
						<a href="" class="btn btn-success pull-center">Add to blog list</a>
					</div>
					</div>
				</div>
			   
		</div>-->
				
				
				
			     <div class="row">
			      <div class="form-group">
			       <div class="col-xs-8">
      <!--  <label for="bcontent">Blog post content:</label>-->
      <form:hidden cssClass="form-control" value="${rtbgInfo.bcontent}" readonly="true" placeholder="Post your blog content....." rows="10" path="bcontent" />
      </div>
       <div class="col-sm-3">
						<form:errors path="bcontent"  cssStyle="color:red;"/>
					</div>
      </div>
      </div>
				
   
     
     
      <div class="row">
      <div class="form-group">
			<div class="col-xs-5">
				<!--  <label for="btag">Tags:</label>-->
					<form:hidden path="btag" value="${rtbgInfo.btag}" readonly="true" placeholder="Tag your blog...." cssClass="form-control"/>
						</div>
						 <div class="col-sm-3">
						<form:errors path="btag"  cssStyle="color:red;"/>
					</div> 
				</div> 
				</div>
				
				<div class="row">
      <div class="form-group">
			<div class="col-xs-5">
				<!-- <label for="bcreate_date">Publish on:</label> -->
					<form:hidden path="bcreate_date" value="${rtbgInfo.bcreate_date}" readonly="true" placeholder="dd/mm/yyyy hh:mi" cssClass="form-control"/>
						</div>
						 <div class="col-sm-5">
						<form:errors path="bcreate_date"  cssStyle="color:red;"/>
					</div> 
				</div>     
      </div>    
      
      
       
      <div class="row">
      <div class="form-group">
			<div class="col-xs-5">
				 <!--   <label for="bwebsite">Website:</label>-->
					<form:hidden path="bwebsite" value="${rtbgInfo.bwebsite}" readonly="true" placeholder="Reference link......" cssClass="form-control"/>
						</div>
						 <!--  <div class="col-sm-5">
						<form:errors path="bwebsite"  cssStyle="color:red;"/>
					</div>-->
				</div>     
      </div>    
      
		
		<div class="row">
      <div class="form-group">
			<div class="col-xs-5">
				<!--  <label for="bcomment">Comment:</label>-->
					<form:hidden path="bcomment" value="${rtbgInfo.bcomment}" readonly="true"  placeholder="Comment....." cssClass="form-control"/>
						</div>
						  <!-- <div class="col-sm-5">
						<form:errors path="bcomment"  cssStyle="color:red;"/>
					</div> -->
				</div>     
      </div> 
      
    <!--   <p class='starrr' id='star2'></p>
     <br />
     <div class="row">
      <div class="form-group">
			<div class="col-xs-4">
				<input type="text" name="rating" value="" id="star2_input" placeholder="maximum rating limit is upto 10......"/>
				</div>
				</div>
				<a type="button" href="blogRate" class="btn btn-info">Confirm your rating</a>
				</div>
    
    <c:set var="rrt" value="${requestScope.rt}"/>
    <c:out value="${rrt}"></c:out>-->
    <%--String s=(String)request.getAttribute("rt");--%>
     
      <div class="row">
      <div class="form-group">
			<div class="col-xs-5">
				 <label for="brate">Rate blog:</label>
					<form:input path="brate"  placeholder="maximum rating limit upto 10....." cssClass="form-control"/>
						</div>
						     <div class="col-sm-5">
						<form:errors path="brate"  cssStyle="color:red;"/>
					</div>
				</div>     
      </div>    	  
			 
			 
			
			   
			 
			 
			 
			 
			 <div class="row">
			 <br>
			 <div class="form-group">
					<div class="col-sm-2">
						<input type="submit" name="add" value="post" class="btn btn-success pull-center"/>
					</div>
					
					<div class="col-sm-2">
					<a href="displayBlog" class="btn btn-success pull-center">Cancel</a>
					</div>
			</div> 
		</div>
			     
			
			
			</form:form>      
			
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
 
      
			      
				
			</div><!-- /row -->
			<br>
			<br>
		</div><!-- /container -->

		
		
<%@include file="footer.jsp" %>
</body>
</html>