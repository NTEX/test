<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="/WEB-INF/tld/spring-form.tld" prefix="form"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Transport Payment Gatway</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
	<script src="js/jquery-1.9.1.min.js"></script>
	<script src='js/jquery.dataTables.min.js'></script>
	</head>

<body>
	<!-- start: Header -->
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			
						<!-- start: Content -->
			<div id="content" class="span10">
			
			<form:form method="GET" action="transaction.html">
		<div class="row-fluid sortable">	
			 
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Agency Details</h2>
						
					</div>
					<div class="box-content">
					
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
						  </thead>   
						  <tbody>
<tr>  
			        <td class="center"><label>Driver</label></td>
                    <td class="center">
 <c:out value="${printDetail.driverId}"></c:out>  </td>
  <td class="center"><label>Trucker</label></td>
                    <td class="center">
<c:out value="${printDetail.truckerId}"></c:out></td>
			    </tr>
			   
 </tbody>
					  </table>    
					</div>
				</div><!--/span-->
			
			</div>
			
			
			<div class="row-fluid sortable">	
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Booking Details</h2>
						
					</div>
					<div class="box-content">
					
						<table class="table table-striped table-bordered bootstrap-datatable datatable" id="matchList">
						  <thead>
							  <tr>
							  <th>Transporter Id</th>
							   <th>Load ID</th>
								  <th>Origin </th>
								  <th>Destination </th>
								  <th>Weight</th>
								 <!--  <th>Booking</th>    --> <th></th> 
							  </tr>
						  </thead>   
						  <tbody>
							
			<tr>
			<td class="center"><c:out value="${printDetail.transporterId}"/></td>
				<td class="center"><c:out value="${printDetail.loadId}"/></td>
				<td class="center"><c:out value="${printDetail.originLocationId}"/></td>
				<td class="center"><c:out value="${printDetail.destinationLocationId}"/></td>
				<td class="center"><c:out value="${printDetail.weight}"/></td>
			
				<td align="center">
				
				 
				</td>
			</tr>
						  </tbody>
					  </table>  
					   
					   
					           
					</div>
				</div><!--/span-->
			
			</div>
			
			<div class="row-fluid sortable">	
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Truck Details</h2>
						
					</div>
					<div class="box-content">
					
						<table class="table table-striped table-bordered bootstrap-datatable datatable" id="matchList">
						  <thead>
							  <tr>
							  <th>Truck Id</th>
							   <th>Truck No</th>
								  <th>Route Id</th>
								  <th>Origin Location Id</th>
								  <th>Destination Location Id</th>
								 <!--  <th>Booking</th>    --> <th></th> 
							  </tr>
						  </thead>   
						  <tbody>
							
			<tr>
			<td class="center"><c:out value="${printDetail.truckIdValue}"/></td>
				<td class="center"><c:out value="${printDetail.truckNumberValue}"/></td>
				<td class="center"><c:out value="${printDetail.routeIdValue}"/></td>
				<td class="center"><c:out value="${printDetail.originLocationIdValue}"/></td>
				<td class="center"><c:out value="${printDetail.destinationLocationIdValue}"/></td>
			
				<td align="center">
				
				 
				</td>
			</tr>
						  </tbody>
					  </table>  
					   
					   
					           
					</div>
				</div><!--/span-->
			
			</div>
		
			
			<div class="row-fluid sortable">	
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Payment Details</h2>
						
					</div>
					<div class="box-content">
		<table class="table table-striped table-bordered bootstrap-datatable datatable" id="tblTransactionSummary">
						  <thead>
							  <tr>
								   <th>Sr. No.</th>
								  <th>Type of the amount  </th>
								  <th>Amount</th>
							  </tr>
						  </thead>   
						  <tbody>
						
			<tr>
				<td class="center">1</td>
				<td class="center"><c:out value="${printDetail.typeofAmt1}"></c:out></td>
				<td class="center"><c:out value="${printDetail.amount1}"></c:out></td>
			</tr>
			<tr>
			    <td class="center">2</td>
				<td class="center"><c:out value="${printDetail.typeofAmt2}"></c:out></td>
				<td class="center"><c:out value="${printDetail.amount2}"></c:out></td>
			</tr>
			<tr>
				<td class="center">3</td>
				
				<td class="center"><c:out value="${printDetail.typeofAmt3}"></c:out></td>
				<td class="center"><c:out value="${printDetail.amount3}"></c:out></td>
			</tr>
			<tr>
				<td class="center" colspan="">4</td>
				<td class="center"><c:out value="${printDetail.typeofAmt4}"></c:out></td>
				<td class="center"><c:out value="${printDetail.amount4}"></c:out></td>
			</tr>
		
		
			    <tr><td class="center">
			    <a href="loadadd.html">Back To Available Load</a>
			    </td><td>
			<input type=button value="Print" id="printSubmit" onclick="Window:print()"/></td>
			<td><c:out value="${printDetail.transactionAmount}"></c:out> <b>Total Amounts.</b></td>
			
			      
			    
		      </tr>
						  </tbody>
					  </table>
	   
					</div>
				</div><!--/span-->
			
			</div>
				
				</form:form>	
			
			<!--/row-->

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	
	<div class="clearfix"></div>
	
	<footer>

		<p>
			<span style="text-align:left;float:left">&copy; 2015 <a href="index.html" alt="Bootstrap_Metro_Dashboard">SPOD Pvt. Ltd.</a></span>
			
		</p>

	</footer>
		
	<!-- start: JavaScript-

		<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="js/jquery.ui.touch-punch.js"></script>
	
		<script src="js/modernizr.js"></script>
	
		<script src="js/bootstrap.min.js"></script>
	
		<script src="js/jquery.cookie.js"></script>
	
		<script src='js/fullcalendar.min.js'></script>
	
		<script src='js/jquery.dataTables.min.js'></script>

		<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.js"></script>
	<script src="js/jquery.flot.pie.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	
		<script src="js/jquery.chosen.min.js"></script>
	
		<script src="js/jquery.uniform.min.js"></script>
		
		<script src="js/jquery.cleditor.min.js"></script>
	
		<script src="js/jquery.noty.js"></script>
	
		<script src="js/jquery.elfinder.min.js"></script>
	
		<script src="js/jquery.raty.min.js"></script>
	
		<script src="js/jquery.iphone.toggle.js"></script>
	
		<script src="js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="js/jquery.gritter.min.js"></script>
	
		<script src="js/jquery.imagesloaded.js"></script>
	
		<script src="js/jquery.masonry.min.js"></script>
	
		<script src="js/jquery.knob.modified.js"></script>
	
		<script src="js/jquery.sparkline.min.js"></script>
	
		<script src="js/counter.js"></script>
	
		<script src="js/retina.js"></script>

		<script src="js/myCustom.js"></script> 
	 end: JavaScript-->
	

</body>
</html>
