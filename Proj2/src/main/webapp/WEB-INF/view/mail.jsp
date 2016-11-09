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
  </head>
  
  
  
  

  
  
  
  
  
<body>
 
<%@include file="header.jsp" %>
<!-- ==== BLOG ==== -->
		<div class="container">
		<br>
			<div class="row">
				<br>
				<h1 class="centered">SEND e-MAIL</h1>
				<hr>
				<br>
			</div><!-- /row -->
			
			<div align="center">
			<form method="post" action="./sendEmail">
            <table border="0" width="80%">
                <tr>
                    <td>To:</td>
                    <td><input type="text"  name="recipient" size="165" /></td>
                </tr>
                
                <br>
                <tr>
                    <td>From:</td>
                    <td><input type="text" name="sender" size="165" /></td>
                </tr>
                <tr>
                <td></td>
                </tr>
                <tr>
                    <td>Subject:</td>
                    <td><input type="text" name="subject" size="140" /></td>
                </tr>
                <tr></tr>
                <tr>
                    <td>Message:</td>
                    <td><textarea cols="100" rows="10" name="message"></textarea></td>
                </tr>               
                <!--  <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Send E-mail" class="btn btn-success" />
                    </td>
                    <td colspan="2" align="center">
                       <a href="blog" class="btn btn-success pull-center">Cancel</a>
                    </td>
                    
                </tr>-->
            </table>
            <br>	
			 <div class="form-group">
					 <div class="col-sm-8 ">
						<input type="submit" name="send" value="send" class="btn btn-success"/>
					
					
					
					<a href="blog" class="btn btn-success pull-center">Cancel</a>
					</div>
			</div> 
			
        </form>
		</div>	
			
			
			
			
			
			
    
<!--  	<form id="mailForm" class="form-horizontal" method="post" action="./sendEmail">
			
		

		
		<div class="form-group">
		<label class="control-label col-sm-2" for="to">To:</label>
     <div class="col-sm-10">
      <input type="text"  class="form-control" id="to" name="recipient" placeholder="Recipient mail-id....">
  </div>
  </div>
 
			
			
	
			  <div class="form-group">
    <label class="control-label col-sm-2" for="from">From:</label>
         <div class="col-sm-10">
  <input type="text" class="form-control" id="from" name="sender" placeholder="Sender mail-id....">
  </div>
  </div>
	
			
			 
			
			  <div class="form-group">
    
  <label class="control-label col-sm-2" for="subj">Subject:</label>
  <div class="col-sm-10">
 <input type="text" class="form-control" id="subj" name="subject" placeholder="Subject...."/>
 </div>
  </div> 
	
				
				
			     
			      <div class="form-group">
			       
      <label  class="control-label col-sm-2" for="msg">Message:</label>
      <div class="col-sm-10">
      <textarea id="msg" class="form-control" cols="50" rows="10" path="bcontent"></textarea>
      </div>
     
      </div>
     
				
   
           <div class="row">
			
			 <div class="form-group">
					 <div class="col-sm-10 pull-right">
						<input type="submit" name="send" value="send" class="btn btn-success"/>
					
					
					
					<a href="blog" class="btn btn-success pull-center">Cancel</a>
					</div>
			</div> 
		</div>
			     
			
			
			</form> -->     
			      
			      
			
			
		</div><!-- /container -->

		<!--  <a href="blog">view blog</a>-->
		<section class="section-divider textdivider divider24">	</section>
<%@include file="footer.jsp" %>
</body>
</html>