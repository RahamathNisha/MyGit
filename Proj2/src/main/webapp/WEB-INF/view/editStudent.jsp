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
  	</head>
	<body>
		<%@include file="header.jsp" %>
		<div class="container">
			<div align="center">
				<h2>Student Registration</h2>
  				<form:form id="editStudentForm" commandName="stud" class="form-horizontal" method="post"  action="./updatestud">             
             		<div class="form-group">
						<label for="sid" class="col-sm-2 control-label">Id:</label>
						<div class="col-sm-5">
							<form:input path="sid" value="${studObject.sid}" readonly="true" cssClass="form-control"/>
						</div>
					</div> 		
					<div class="form-group">
						<label for="sname" class="col-sm-2 control-label">Name:</label>
						<div class="col-sm-5">
							<form:input path="sname" value="${studObject.sname}" placeholder="Name...." cssClass="form-control"/>
						</div>
					</div>
					<div class="form-group">
						<label for="username" class="col-sm-2 control-label">Username:</label>
						<div class="col-sm-5">
							<form:input path="username" value="${studObject.username}" placeholder="Username...." cssClass="form-control"/>
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-2 control-label"> Password:</label>
						<div class="col-sm-5">
							<form:password path="password" value="${studObject.password}" placeholder="Password...." cssClass="form-control"/>
						</div>
					</div>
					<div class="form-group">
						<label for="dob" class="col-sm-2 control-label"> DOB:</label>
						<div class="col-sm-5">
							<form:input path="dob" value="${studObject.dob}" placeholder="dd/MM/yyyy" cssClass="form-control"/>
						</div>
					</div>
					<div class="form-group">
						<label for="gender" class="col-sm-2 control-label"> Gender:</label>
						<div class="col-sm-5">
							<form:input path="gender" value="${studObject.gender}" placeholder="Gender...." cssClass="form-control"/>
						</div>
					</div>
					<div class="form-group">
						<label for="number" class="col-sm-2 control-label"> Number:</label>
						<div class="col-sm-5">
							<form:input path="number" value="${studObject.number}" placeholder="Number...." cssClass="form-control"/>
						</div>
					</div>
					<div class="form-group">
						<label for="email" class="col-sm-2 control-label"> Email:</label>
						<div class="col-sm-5">
							<form:input path="email" value="${studObject.email}" placeholder="Email id...." cssClass="form-control"/>
						</div>
					</div>			
					<div class="form-group">
						<label for="houseNumber" class="col-sm-2 control-label">House Number:</label>
						<div class="col-sm-5">
							<form:input path="houseNumber" value="${studObject.houseNumber}" placeholder="House Number...." cssClass="form-control"/>
						</div>
					</div>				
					<div class="form-group">
						<label for="addressLine1" class="col-sm-2 control-label">Address Line1:</label>
						<div class="col-sm-5">
							<form:input path="addressLine1" value="${studObject.addressLine1}" placeholder="Address line1...." cssClass="form-control"/>
						</div>
					</div>				
					<div class="form-group">
						<label for="addressLine2" class="col-sm-2 control-label">Address Line2:</label>
						<div class="col-sm-5">
							<form:input path="addressLine2" value="${studObject.addressLine2}" placeholder="Address line2...." cssClass="form-control"/>
						</div>
					</div>				
					<div class="form-group">
						<label for="city" class="col-sm-2 control-label">City:</label>
						<div class="col-sm-5">
							<form:input path="city" value="${studObject.city}" placeholder="City...." cssClass="form-control"/>
						</div>
					</div>				
					<div class="form-group">
						<label for="state" class="col-sm-2 control-label">State:</label>
						<div class="col-sm-5">
							<form:input path="state" value="${studObject.state}" placeholder="State...." cssClass="form-control"/>
						</div>
					</div>				
					<div class="form-group">
						<label for="country" class="col-sm-2 control-label">Country:</label>
						<div class="col-sm-5">
							<form:input path="country" value="${studObject.country}" placeholder="Country...." cssClass="form-control"/>
						</div>
					</div>				
					<div class="form-group">
						<label for="zipCode" class="col-sm-2 control-label">Zipcode:</label>
						<div class="col-sm-5">
							<form:input path="zipCode" value="${studObject.zipCode}" placeholder="Zipcode...." cssClass="form-control"/>
						</div>
					</div>				
		   			<div class="form-group">
						<div class="col-sm-10">
							<input type="submit" name="add" value="SIGN UP" class="btn btn-success pull-center"/>
						</div>					
					</div> 						
				</form:form> 
		 		<div class="col-sm-10">
					<a href="listStudent">Click to view Students List</a> 
				</div> 
				<div class="col-sm-10">
					<a href="viewProfile">Click to view your updated profile</a> 
				</div> 					
			</div>
		</div>
		<section class="section-divider textdivider divider10">	</section>	
		<%@include file="footer.jsp" %>
	</body>
</html>