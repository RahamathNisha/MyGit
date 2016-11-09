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
    	<script>
 			var v=${fdata};
 			angular.module('myApp5',[]).controller('customersCtrl5', function($scope)
    		{	    
    			console.log(v);
    			$scope.studls = v;
    	  	});
		</script>
    	<script> 
			angular.module('sortApp',[]).controller('mainController',function($scope,$http){	
				console.log("im in getStudentList");
				$http({method:'GET',url:'listStudent'}).success(function(data,status,headers,config)				
				{
					$scope.studls=data;				
				});
			});
		</script>
  	</head>
	<body>
		<%@include file="header.jsp" %>
		<div class="container">
			<br>
			<div class="row">
				<br>
				<div style="color: black; font-size: 30px"><h1 class="centered">STUDENT DETAILS</h1></div>
				<hr>
				<br>
			</div><!-- /row -->
  			<div class="pull-center">
  				<div class="row">  
   					<div class="container" ng-app="myApp5" ng-controller="customersCtrl5">
						<form>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon glyphicon glyphicon-search">
										<i class="fa fa-search"></i>
									</div>
									<input type="text" class="form-control" placeholder="Search the name..." ng-model="na"/>
								</div>		
							</div>
						</form>
						<div class="table table-responsive">
							<table class="table">
        						<thead class="thead-inverse">
          							<tr> 
          								<th>Id</th>  
          								<th>Full Name</th> 
          								<th>Username</th> 
          								<th>Password</th>
          								<th>DOB</th>
          								<th>Gender</th>  
          								<th>Number</th>    
          								<th>Email</th>  
          								<th>Address</th> 
          								<th>Update Record</th>  
          								<th>Delete Record</th> 
          							</tr>  	
        						</thead>  
        						<tbody>  
         	 						<tr ng-repeat="c in studls | filter:na">
         								<td>{{c.fusername}}</td>
         								<td>{{c.fcreate_date}}</td>
         								<td>{{c.ftitle}}</td>
         								<td>{{c.fcontent}}</td>
         								<td>{{c.category}}</td>         		         		 
         	    						<td><a type="button" href="editForums?id={{c.forumId}}" class="btn btn-info">EDIT</a></td>
         								<td><a type="button" href="deleteForum?id={{c.forumId}}" class="btn btn-danger">DELETE</a></td>         		         		
         							</tr>
								</tbody>
							</table>	
						</div>  	  
  					</div>
  				</div>  
  				<a href="register">Click here to add new Student</a>  
  			</div>
  		</div>
  		<section class="section-divider textdivider divider12">	</section>    
  		<div class="modal-dialog">    
      		<!-- Modal content-->
      		<div class="modal-content">
        		<div class="modal-header">
          			<!--  <button type="button" class="close" data-dismiss="modal">&times;</button>-->
          			<h4 class="modal-title">Create Topic to discuss</h4>
        		</div>
        		<div class="modal-body">			
					<div align="center">
        				<form:form id="editforumForm" commandName="forum" method="post" action="./updateForum" enctype="multipart/form-data">
						     <div class="row">
			      				<div class="form-group">
			       					<div class="col-xs-8">
      									<label for="fcontent">Enter your post:</label>
      									<form:textarea cssClass="form-control" placeholder="Enter Content" rows="10" path="fcontent" />      
      								</div>
     								<div class="col-sm-3">
										<form:errors path="fcontent"  cssStyle="color:red;"/>
									</div>
      							</div>
      						</div>				   
      						<div class="row">      
      							<div class="form-group">
									<div class="col-xs-5">
										<label for="category">Category:</label>
										<form:input type="text" path="category" id="category" name="category" placeholder="Topic Subject...." class="form-control"/>
									</div>
						 			<div class="col-sm-3">
										<form:errors path="category"  cssStyle="color:red;"/>
									</div> 
								</div>     	      			
								<div class="form-group">
			    					<div class="col-sm-5">
			         					<input type="submit" name="post" value="Post" class="btn btn-info pull-center"/>
						 				<a href="forum" class="btn btn-info margin-left25">Cancel</a>
									</div>
								</div> 
							</div>				     
            			</form:form>              
            		</div>
				</div>
			</div>		
		</div>
		<%@include file="footer.jsp" %>
	</body>
</html>