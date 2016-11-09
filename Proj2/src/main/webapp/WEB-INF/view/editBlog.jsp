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
		<!-- ==== BLOG ==== -->
		<div class="container">
			<br>			
			<div class="row">
				<div class="alert alert-info">
					<ul class="nav navbar-nav">
    					<li class="active"><a href="displayBlog" class="btn btn-info">Back to view all blogs</a></li>
    				</ul>	
    			</div>
    		</div>    
			<form:form id="editblogForm" commandName="blg" method="post" action="./updateBlog" enctype="multipart/form-data">			 
				<br>
        		<div class="row">
			  		<div class="form-group">
     					<div class="col-xs-6">  		
  							<form:input path="blogid" cssClass="form-control" value="${bgInfo.blogid}" readonly="true" placeholder="Username....."/>
  						</div>   	
  					</div>
  				</div>        			 			 			 
		      	<div class="row">
			  		<div class="form-group">
     					<div class="col-xs-6">
  							<label for="busername">Username:</label>
  							<form:input path="busername" value="${bgInfo.busername}"   cssClass="form-control"  placeholder="Username....."/>
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
  							<form:input path="btitle" value="${bgInfo.btitle}"  cssClass="form-control"  placeholder="Blog post title....."/>
  						</div>
  	 					<div class="col-sm-3">
							<form:errors path="btitle"  cssStyle="color:red;"/>
						</div>  
					</div> 
				</div>	
				<div class="row">
			      	<div class="form-group">
			       		<div class="col-xs-8">
      						<label for="bcontent">Blog post content:</label>
      						<form:textarea cssClass="form-control" placeholder="Post your blog content....." rows="10" path="bcontent" />
      					</div>
      					<div class="col-sm-3">
							<form:errors path="bcontent"  cssStyle="color:red;"/>
						</div>
      				</div>
      			</div>
      			<div class="row">
      				<div class="form-group">
						<div class="col-xs-5">
							<label for="btag">Tags:</label><span style="color: red;">${tagMsg}</span>
							<form:input path="btag" value="${bgInfo.btag}"  placeholder="Tag your blog...." cssClass="form-control"/>
						</div>
						<div class="col-sm-3">
							<form:errors path="btag"  cssStyle="color:red;"/>
						</div>
					</div> 								
					<div class="row">
      					<div class="form-group">
							<div class="col-xs-5">
								<label for="bcreate_date">Publish on:</label>
								<form:input path="bcreate_date" value="${bgInfo.bcreate_date}"  placeholder="dd/mm/yyyy hh:mi" cssClass="form-control"/>
							</div>
						 	<div class="col-sm-5">
								<form:errors path="bcreate_date"  cssStyle="color:red;"/>
							</div> 
						</div>     
      				</div>                             
      				<div class="col-sm-2 pull-right">
      					<div class="form-group">
							<label for="bloginfo">Blog info</label>
						</div>      
      					<div class="span5">
         					<div class="spanAddress">
								<address>
									<strong>Blog title:</strong> <span></span><br>
									<strong>Description:</strong> <span></span><br>
								</address>
							</div>
						</div>
      				</div>
    			</div>        			   
				<div class="row">
      				<div class="form-group">
						<div class="col-xs-5">					
							<form:hidden path="bwebsite" value="null" placeholder="Reference link......" cssClass="form-control"/>
						</div>						
					</div>     
      			</div>          		
				<div class="row">
      				<div class="form-group">
						<div class="col-xs-5">					
							<form:hidden path="bcomment" value="null" placeholder="Comment....." cssClass="form-control"/>
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
							<input type="submit" name="add" value="Publish" class="btn btn-success pull-center"/>
						</div>					
						<div class="col-sm-2">
							<a href="blog" class="btn btn-success pull-center">Cancel</a>
						</div>
					</div> 
				</div>			     						
			</form:form>      			      			      				
		</div><!-- /container -->
		<%@include file="footer.jsp" %>
	</body>
</html>