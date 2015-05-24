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
	
		<link rel="stylesheet" href="cssjs/jquery-ui.css">
  <script src="cssjs/jquery-1.10.2.js"></script>
  <script src="cssjs/jquery-ui.js"></script>
  <link rel="stylesheet" href="cssjs/style.css">  
  
  <script src="jss/jquery-ui-1.10.0.custom.min.js"></script>
  <script>
  function numericsonly(ob) 
  {
      var invalidChars = /[^0-9]/gi;
      if(invalidChars.test(ob.value)) 
      {
          ob.value = ob.value.replace(invalidChars,"");
      }
  } 
  $(function() {
	 
    $('#contactNumber').keyup(function()
            {
                $(this).next('.tooltip_outer').hide();
                numericsonly(this); // definition of this function is above
            });
    
    $('#btnSaveDriver').click(function()
     { 
    	var driverName=$('#driverName').val();var driverAddress=$('#driverAddress').val();var contactNumber=$('#contactNumber').val();
 if((driverName.length<=0 || driverName=='null') && (driverAddress.length<=0 || driverAddress=='null')&& (contactNumber.length<=0 || contactNumber=='null')){
    		alert("Please enter required details !");
    		return false;
    }
 if((!driverName.length<=0 || driverName!='null') && (driverAddress.length<=0 || driverAddress=='null')&& (contactNumber.length<=0 || contactNumber=='null')){
		alert("Please enter required details !");
		return false;
   }
 if((driverName.length<=0 || driverName=='null') && (!driverAddress.length<=0 || driverAddress!='null')&& (contactNumber.length<=0 || contactNumber=='null')){
		alert("Please enter required details !");
		return false;
}
 if((driverName.length<=0 || driverName=='null') && (driverAddress.length<=0 || driverAddress=='null')&& (!contactNumber.length<=0 || contactNumber!='null')){
		alert("Please enter required details !");
		return false;
} 
 if((driverName.length<=0 || driverName=='null') && (!driverAddress.length<=0 || driverAddress!='null')&& (!contactNumber.length<=0 || contactNumber!='null')){
		alert("Please enter name !");
		$('#driverName').focus();
		return false;
}
 if((!driverName.length<=0 || driverName!='null') && (driverAddress.length<=0 || driverAddress=='null')&& (!contactNumber.length<=0 || contactNumber!='null')){
		alert("Please enter address !");
		$('#driverAddress').focus();
		return false;
}
 if((!driverName.length<=0 || driverName!='null') && (!driverAddress.length<=0 || driverAddress!='null')&& (contactNumber.length<=0 || contactNumber=='null')){
		alert("Please enter contact number !");
		$('#contactNumber').focus();
		return false;
}
    	
               
     });
    
    
  });
  </script>
		
		
</head>

<body>
		<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="index.html"><span>SPOD</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
				
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i>  ${userbean.fName}
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
 									<span>Account Settings</span>
								</li>
								
								<li><a href="login.html"><i class="halflings-icon off"></i> Logout</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="index.html"><i class="icon-bar-chart"></i><span class="hidden-tablet"> TPG</span></a></li>	
						<li>
							<a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Data Management</span><span class="label label-important"> 8 </span></a>
							<ul>
								<li><a href="truckeradd.html"><i class="icon-align-justify"></i><span class="hidden-tablet">  Trucker</span></a></li>
								<li><a href="truckadd.html"><i class="icon-align-justify"></i><span class="hidden-tablet">  Truck</span></a></li>
							    <li><a href="driveradd.html"><i class="icon-align-justify"></i><span class="hidden-tablet">  Driver</span></a></li>
							    <li><a href="transporteradd.html"><i class="icon-align-justify"></i><span class="hidden-tablet">  Transporter</span></a></li>
							    <li><a href="stateadd.html"><i class="icon-align-justify"></i><span class="hidden-tablet">  Sate</span></a></li>
							    <li><a href="locationadd.html"><i class="icon-align-justify"></i><span class="hidden-tablet">  Location</span></a></li>
							    <li><a href="routeadd.html"><i class="icon-align-justify"></i><span class="hidden-tablet">  Route</span></a></li>
							    <li><a href="alternateRouteadd.html"><i class="icon-align-justify"></i><span class="hidden-tablet">  Alternate Route</span></a></li>
							</ul>	
						</li>
						<li>
							<a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Transaction Management</span><span class="label label-important"> 2 </span></a>
							<ul>
								<li><a href="loadadd.html"><i class="icon-align-justify"></i><span class="hidden-tablet">Available  Load</span></a></li>
								<li><a href="transactloadadd.html"><i class="icon-align-justify"></i><span class="hidden-tablet">Transict  Load</span></a></li>
							</ul>		
						</li>
							</ul>
				</div>
			</div>
			<!-- end: Main Menu -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.html">Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Tables</a></li>
			</ul>

			<div class="row-fluid sortable">	
			 <h3><a href="driveradd.html">Add More Driver</a></h3>
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span> Driver</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
					<form:form method="POST" action="/TPGApps/driversave.html" id="frmDriver" name="frmDriver">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
						  </thead>   
						  <tbody>
							
			<tr>
			        <td class="center"><form:label path="driverId">ID:</form:label></td>
			        <td  class="center"><form:input path="driverId" value="${driver.driverId}" readonly="true"/></td>
			    </tr>
			    <tr>
			        <td class="center"><form:label path="driverName">Name:</form:label></td>
			        <td class="center"><form:input path="driverName" value="${driver.driverName}"/><a>*</a></td>
			    </tr>
			    <tr>
			        <td class="center"><form:label path="driverAddress">Address :</form:label></td>
			        <td class="center"><form:input path="driverAddress" value="${driver.driverAddress}"/><a>*</a></td>
			    </tr>
			    <tr>
			        <td class="center"><form:label path="locationId">Location Id:</form:label></td>
			         <td class="center"> <form:select id="locationId" path="locationId">
 <form:options items="${locations}"  itemValue="locationId" itemLabel="locationMerge"/></form:select><a>*</a></td>
			    </tr>
			    <tr>
			        <td class="center"><form:label path="contactNumber">Contact Number:</form:label></td>
                    <td class="center"><form:input path="contactNumber" value="${driver.contactNumber}" maxlength="10"/><a>*</a></td>
			    </tr>
			    <tr>
			      <td class="center" colspan="2"><input type="submit" value="Submit" id="btnSaveDriver"/></td>
		      </tr>
						  </tbody>
					  </table>    </form:form>      
					</div>
				</div><!--/span-->
			</div>
			<div class="row-fluid sortable">	
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>List Drivers</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
					<c:if test="${!empty drivers}">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Id</th>
								  <th>Name</th>
								  <th>Address</th>
								  <th>Location Id</th>
								  <th>Contact Number</th>
								  <td>Actions</td>
							  </tr>
						  </thead>   
						  <tbody>
							<c:forEach items="${drivers}" var="driver">
			<tr>
				<td class="center"><c:out value="${driver.driverId}"/></td>
				<td class="center"><c:out value="${driver.driverName}"/></td>
				<td class="center"><c:out value="${driver.driverAddress}"/></td>
				<td class="center"><c:out value="${driver.locationId}"/></td>
				<td class="center"><c:out value="${driver.contactNumber}"/></td>
				<td align="center"><a class="btn btn-info" href="editDriver.html?driverId=${driver.driverId}">
				<i class="halflings-icon white edit"></i>
				</a> | <a class="btn btn-danger" href="deleteDriver.html?driverId=${driver.driverId}">
				<i class="halflings-icon white trash"></i>
				</a></td>
			</tr>
		</c:forEach>
						  </tbody>
					  </table>    </c:if>        
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
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
	
	<!-- start: JavaScript-->

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

		<script src="js/custom.js"></script>
	<!-- end: JavaScript-->
	
</body>
</html>
