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
    	
  	</head>
	
	<body>
		<%@include file="header.jsp" %>
		<br><br>
		<div class="container">
			<br>
			<div class="alert alert-info" id="cmt">
  				<div class="row">
 					<font size="4">Comment</font>
  					<div class="pull-right">
 						<a href="displayBlog" class="btn btn-info">Back to view all blogs</a>
 					</div>
  				</div>
  			</div>
  			<script>
				$(document).ready(function(){
    				$('#cmt').tooltip({title: "Comment", contentAsHTML: true,placement: "top"});   
				});
			</script>
			
			<form:form id="cmtblogForm" commandName="blg" method="post" action="./saveCmt" enctype="multipart/form-data">				
				<br>
        		<div class="row">
			  		<div class="form-group">
     					<div class="col-xs-6">
  							<form:hidden path="blogid" cssClass="form-control" value="" readonly="true" placeholder="Blog id....."/>
  						</div>
  					</div>
  				</div>        
			 	<div class="row">
			  		<div class="form-group">
     					<div class="col-xs-6">
  							<label for="busername">Username:</label>
  							<form:input path="busername" cssClass="form-control"  placeholder="Username....."/>
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
  							<form:input path="btitle" cssClass="form-control" value="${cmtbgInfo.btitle}" readonly="true" placeholder="Blog post title....."/>
  						</div>  	 			 
					</div> 
				</div>	
				
			    <div class="row">
			    	<div class="form-group">
			       		<div class="col-xs-8">
      						<form:hidden cssClass="form-control" value="${cmtbgInfo.bcontent}" readonly="true" placeholder="Post your blog content....." rows="10" path="bcontent" />
      					</div>
     				</div>
      			</div>
     
      			<div class="row">
      				<div class="form-group">
						<div class="col-xs-5">
							<form:hidden path="btag" value="${cmtbgInfo.btag}" readonly="true" placeholder="Tag your blog...." cssClass="form-control"/>
						</div>
						<div class="col-sm-3">
							<form:errors path="btag"  cssStyle="color:red;"/>
						</div>
					</div> 
				</div>
				
				<div class="row">
      				<div class="form-group">
						<div class="col-xs-5">
							<label for="bcreate_date">Publish on:</label>
							<form:input path="bcreate_date"  placeholder="dd/mm/yyyy hh:mi" cssClass="form-control"/>
						</div>
						<div class="col-sm-5">
							<form:errors path="bcreate_date"  cssStyle="color:red;"/>
						</div> 
					</div>     
      			</div>    
       
      			<div class="row">
      				<div class="form-group">
						<div class="col-xs-5">
				  			<label for="bwebsite">Website:</label>
							<form:input path="bwebsite"  placeholder="Reference link......" cssClass="form-control"/>
						</div>
						<div class="col-sm-5">
							<form:errors path="bwebsite"  cssStyle="color:red;"/>
						</div>
					</div>     
      			</div>    
      
				<div class="row">
      				<div class="form-group">
						<div class="col-xs-7">
							<label for="bcomment">Comment:</label>
							<form:textarea path="bcomment" rows="7" placeholder="Comment....." cssClass="form-control"/>
						</div>
						<div class="col-sm-5">
							<form:errors path="bcomment"  cssStyle="color:red;"/>
						</div>
					</div>     
      			</div> 
      
		      	<div class="row">
      				<div class="form-group">
						<div class="col-xs-5">
							<form:hidden path="brate" value="0" readonly="true" cssClass="form-control"/>
						</div>
					</div>     
      			</div>    	  
			 
				 <div class="row">
			 		<br>
			 		<div class="form-group">
						<div class="col-sm-2">
							<input type="submit" name="add" value="save comment" class="btn btn-success pull-center"/>
						</div>
						<div class="col-sm-2">
							<a href="displayBlog" class="btn btn-success pull-center">Cancel</a>
						</div>
					</div> 
				</div>
			
			</form:form>      
			<br>
			<br>
		</div><!-- /container -->
		<section class="section-divider textdivider divider4">
			<div class="container">
				<h1>BLOG'S CREATES EMOTIONAL CONNECTION</h1>
				<hr>
				<p>There's more to design than meets the eye. It's when it meets the heart that design creates a meaningful, lasting connection with the audience.</p>
			</div><!-- container -->
		</section><!-- section -->

		<section class="section-divider textdivider divider25">	</section>
		
		<%@include file="footer.jsp" %>
	</body>

</html>