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
		<br><br><br>
		<div class="container">
			<div class="alert alert-info">
				<a href="listForum" class="btn btn-info">Back to all discussion topics</a>
				<div class="pull-right">
					<a type="button" href="forum" class="btn btn-info">open new topic</a>
				</div>
  			</div>
 			<form:form id="editforumForm" commandName="frm" method="post" action="./saveRating" enctype="multipart/form-data">				
				<br>
        		<div class="row">
			  		<div class="form-group">
     					<div class="col-xs-6">
  							<form:hidden path="forumId" cssClass="form-control" value="${cmtfrmInfo.forumId}" readonly="true" placeholder="Forum id....."/>
  						</div>
  					</div>
  				</div>        
            
          		<div class="row">
			  		<div class="form-group">
     					<div class="col-xs-6">
 							<label for="fusername">Username:</label>
  							<form:input path="fusername" cssClass="form-control" value="${cmtfrmInfo.fusername}" readonly="true" placeholder="Username....."/>
  						</div>
   						<div class="col-sm-3">
							<form:errors path="fusername"  cssStyle="color:red;"/>
						</div>  
  					</div>
  				</div>
			 
			 	<div class="row">
			  		<div class="form-group">
     					<div class="col-xs-6">
  							<label for="ftitle">Title:</label>
  							<form:input path="ftitle" readonly="true" cssClass="form-control" value="${cmtfrmInfo.ftitle}" placeholder="Forum title....."/>
  						</div>
  						<div class="col-sm-3">
							<form:errors path="ftitle"  cssStyle="color:red;"/>
						</div>  
					</div> 
				</div>	

			    <div class="row">
			   		<div class="form-group">
			       		<div class="col-xs-8">
      						<form:hidden class="form-control" readonly="true" rows="10" placeholder="Enter Content" value="${cmtfrmInfo.fcontent}" path="fcontent" />    
      					</div>
     					<div class="col-sm-3">
							<form:errors path="fcontent"  cssStyle="color:red;"/>
						</div>
      				</div>
				</div>		
   
      			<div class="row">      
      				<div class="form-group">
						<div class="col-xs-5">
							<form:hidden path="category" readonly="true" placeholder="Topic Subject...." value="${cmtfrmInfo.category}" cssClass="form-control"/>
						</div>
						<div class="col-sm-3">
							<form:errors path="category"  cssStyle="color:red;"/>
						</div> 
					</div>     
      			</div> 
			
				<div class="row">      
      				<div class="form-group">
						<div class="col-xs-5">
							<form:hidden path="fcreate_date"  placeholder="dd/mm/yyyy hh:mi" value="${cmtfrmInfo.fcreate_date}" cssClass="form-control"/>
						</div>
						<div class="col-sm-5">
							<form:errors path="fcreate_date"  cssStyle="color:red;"/>
						</div> 
					</div>     
      			</div> 
			
				<div class="row">      
      				<div class="form-group">
						<div class="col-xs-5">
							<label for="frate">Rate the post:</label><span style="color: red;">${rtMsg}</span>
							<form:input path="frate"  placeholder="rate post" value="${cmtfrmInfo.frate}" cssClass="form-control"/>
						</div>
					</div>     
      			</div> 
			
				<div class="form-group">
			    	<div class="col-sm-5">
			    		<br>
			         	<input type="submit" name="save" value="post rating" class="btn btn-info"/>
						<a href="listForum" class="btn btn-info margin-left25">cancel</a>
					</div>							
				</div>
            </form:form>
  		</div>
        <section class="section-divider textdivider divider2">
			<div class="container">
				<h1>DISCUSSION IS AN INTERACTION</h1>
				<hr>
				<p>To develop a deeper and more meaningful connection with consumers, we believe design must invite them to take part in the conversation.</p>
			</div><!-- container -->
		</section><!-- section -->
	
		<section class="section-divider textdivider divider18">	</section>
		<%@include file="footer.jsp" %>
	</body>
</html>