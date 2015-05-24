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
	  var amount1=$('#amount1').val();
	  var amount2=$('#amount2').val();
	  var amount3=$('#amount3').val();var amount4=$('#amount4').val();	  
	  var transactionAmount=$('#transactionAmount').val();
	  
	  $('#transactionAmount').keyup(function()
	            {
		  $(this).next('.tooltip_outer').hide();
		  numericsonly(this);
	            });
		  
	  $('#amount1').keyup(function()
	            {
		  $(this).next('.tooltip_outer').hide();
		  numericsonly(this);
		  if((!amount1.length<=0 || amount1!='null') && (amount2.length<=0 || amount2=='null') && (amount3.length<=0 || amount3=='null')&& (amount4.length<=0 || amount4=='null')){
			  var sum=0;
          	sum=Number(amount1)+Number(transactionAmount);
			  $('#transactionAmount').val(sum);
		  		  
		  }

	            });
	  $('#amount2').keyup(function()
	            {
	                $(this).next('.tooltip_outer').hide();
	                numericsonly(this);
	                if((!transactionAmount.length<=0 || transactionAmount!='null') && (!amount1.length<=0 || amount1!='null') && (!amount2.length<=0 || amount2!='null') && (amount3.length<=0 || amount3=='null')&& (amount4.length<=0 || amount4=='null')){
	                	var sum=0;
	                	sum=Number(amount1)+Number(amount2);
	      			  $('#transactionAmount').val(sum);
	                }
	            });
	  $('#amount3').keyup(function()
	            {
	                $(this).next('.tooltip_outer').hide();
	                numericsonly(this);
	                if((!transactionAmount.length<=0 || transactionAmount!='null') && (!amount1.length<=0 || amount1!='null') && (!amount2.length<=0 || amount2!='null') && (!amount3.length<=0 || amount3!='null')&& (amount4.length<=0 || amount4=='null')){
	                	var sum=0;
	                	sum=Number(amount1)+Number(amount2)+Number(amount3);
	                	      			  $('#transactionAmount').val(sum);	  		  
	                }
	            });
	  $('#amount4').keyup(function()
	            {
	                $(this).next('.tooltip_outer').hide();
	                numericsonly(this);
	                if((!transactionAmount.length<=0 || transactionAmount!='null') && (!amount1.length<=0 || amount1!='null') && (!amount2.length<=0 || amount2!='null') && (!amount3.length<=0 || amount3!='null')&& (!amount4.length<=0 || amount4!='null')){
	                	var sum=0;
	                	sum=Number(amount1)+Number(amount2)+Number(amount3)+Number(amount4);
	                	      			  $('#transactionAmount').val(sum);	  
	                	      			  
	                }

	            });
	  
	
	  
	  if(amount1.length<=0 || amount1=='null'){
		  $('#amount2').attr("disabled",true);
		   $('#amount3').attr("disabled",true);
		   $('#amount4').attr("disabled",true);
	  }
	  $('#amount1').change(function(){  
		  
		  if(!amount1.length<=0 || amount1!='null'){
			  $('#amount1').attr("disabled",false);
			   $('#amount2').attr("disabled",false);
			   $('#amount3').attr("disabled",false);
			   $('#amount4').attr("disabled",false);
		  }
	  });
	  
	  if((!amount1.length<=0 || amount1!='null') && (amount2.length<=0 || amount2=='null')){
		   $('#amount3').attr("disabled",true);
		   $('#amount4').attr("disabled",true);
	  }
	  $('#amount2').change(function(){ 
		  if((!amount1.length<=0 || amount1!='null') && (!amount2.length<=0 || amount2!='null')){
			   $('#amount1').attr("disabled",false);
			   $('#amount2').attr("disabled",false);
			   $('#amount3').attr("disabled",false);
			   $('#amount4').attr("disabled",false);
		  }
	  });
	  
	  if((!amount1.length<=0 || amount1!='null') && (!amount2.length<=0 || amount2!='null') && (amount3.length<=0 || amount3=='null')){
		   $('#amount4').attr("disabled",true);
	  }

	  $('#amount3').change(function(){ 
		  if((!amount1.length<=0 || amount1!='null') && (!amount2.length<=0 || amount2!='null') && (!amount2.length<=0 || amount2!='null')){
			   $('#amount1').attr("disabled",false);
			   $('#amount2').attr("disabled",false);
			   $('#amount3').attr("disabled",false);
			   $('#amount4').attr("disabled",false);
		  }
	  });
	
    $('#finalSubmit').click(function()
    	     { 
  	  var amt1=$('#amount1').val();
	  var amt2=$('#amount2').val();
	  var amt3=$('#amount3').val();
          var amt4=$('#amount4').val();	  
	  var transactionAmount=$('#transactionAmount').val();

if((amt1.length<=0 || amt1=='null') && (amt2.length<=0 || amt2=='null') && (amt3.length<=0 || amt3=='null') && (amt3.length<=0 || amt3=='null') && 
 (amt4.length<=0 || amt4=='null') && (transactionAmount.length<=0 || transactionAmount=='null')){
alert("Please transaction details !");
return false;
}
else
if((amt1.length<=0 || amt1=='null') && (amt2.length<=0 || amt2=='null') && (amt3.length<=0 || amt3=='null') && (amt3.length<=0 || amt3=='null') && (amt4.length<=0 || amt4=='null') && (!transactionAmount.length<=0 || transactionAmount!='null')){
alert("Please enter transaction amount !");
return false;
}
else
if((!amt1.length<=0 || amt1!='null') || (!amt2.length<=0 || amt2!='null') || (!amt3.length<=0 || amt3!='null') || (!amt3.length<=0 || amt3!='null') || (!amt4.length<=0 || amt4!='null') && (!transactionAmount.length<=0 || transactionAmount!='null')){
return true;
}

    	               
    	     });
  });
  </script>	
	
	
	
	<script type="text/javascript">
	
	/*var selectedRouteId=document.getElementById("routeIdValue").value;
 	var selectedTruckId=document.getElementById("truckIdValue").value;
 	var selectedTruckNumber=document.getElementById("truckNumberValue").value;
 	var selectedOriginLocationId=document.getElementById("originLocationIdValue").value;
 	var selectedDestinationLocationId=document.getElementById("destinationLocationIdValue").value;
 	*/
function matchSelect(routeIdValue, truckIdValue,truckNumberValue,originLocationIdValue,destinationLocationIdValue){
	document.getElementById("routeIdValue").value=routeIdValue;
 	document.getElementById("truckIdValue").value=truckIdValue;
 	document.getElementById("truckNumberValue").value=truckNumberValue;
 	document.getElementById("originLocationIdValue").value=originLocationIdValue;
 	document.getElementById("destinationLocationIdValue").value=destinationLocationIdValue;
 	
}
 	
 	/*function putAmount1() {
 		document.getElementById("transactionAmount").value=parseInt(document.getElementById("amount1").value())+
 		+parseInt(document.getElementById("amount2").value())+parseInt(document.getElementById("amount3").value())+
 		parseInt(document.getElementById("amount4").value()); 
	}
 	function putAmount2() {
 		document.getElementById("transactionAmount").value=parseInt(document.getElementById("amount1").value())+
 		+parseInt(document.getElementById("amount2").value())+parseInt(document.getElementById("amount3").value())+
 		parseInt(document.getElementById("amount4").value()); 
	}
 	function putAmount3() {
 		document.getElementById("transactionAmount").value=parseInt(document.getElementById("amount1").value())+
 		+parseInt(document.getElementById("amount2").value())+parseInt(document.getElementById("amount3").value())+
 		parseInt(document.getElementById("amount4").value()); 
	}
 	function putAmount4() {
 		document.getElementById("transactionAmount").value=parseInt(document.getElementById("amount1").value())+
 		+parseInt(document.getElementById("amount2").value())+parseInt(document.getElementById("amount3").value())+
 		parseInt(document.getElementById("amount4").value()); 
	}*/
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
			<form:form method="GET" action="transaction.html">
		<div class="row-fluid sortable">	
			 
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Request Loads</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
					
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
						  </thead>   
						  <tbody>
<tr>  
			        <td class="center"><label>Driver:</label></td>
                    <td class="center">
<form:select id="driverId" path="driverId">
 <form:options items="${drivers}"  itemValue="driverId" itemLabel="driverName"/>
         </form:select></td>
			    </tr>
			    <tr>  
			        <td class="center"><label>Trucker:</label></td>
                    <td class="center">
<form:select id="truckerId" path="truckerId">
 <form:options items="${truckers}"  itemValue="truckerId" itemLabel="truckerName"/>
         </form:select></td>
			    </tr>
			    
 <tr>
			        <td class="center"><label>Load ID:</label></td>
			        <td  class="center"><form:input path="loadId" value="${load.loadId}" readonly="true"/> </td>
			    </tr>
			    <tr>
			        <td class="center"><label>Transporter Id:</label></td>
			        <td class="center"><form:input path="transporterId" value="${load.transporterId}" readonly="true"/></td>
			    </tr>
			    <tr>
			        <td class="center"><label>Weight :</label></td>
			        <td class="center"><form:input path="weight" value="${load.weight}" readonly="true"/></td>
			    </tr>
			    <tr>
			        <td class="center"><label>Origin Location Id:</label></td>
			        
			         <td class="center"><form:input path="originLocationId" value="${load.originLocationId}" readonly="true"/></td>
			    </tr>
			    
			    <tr>
			        <td class="center"><label>Destination Location Id:</label></td>
                    <td class="center"><form:input path="destinationLocationId" value="${load.destinationLocationId}" readonly="true"/> </td>
			    </tr>
			     <tr>  
			        <td class="center"><label>Load Available DateTime:</label></td>
                    <td class="center"><form:input path="loadDate" value="${load.loadDate}" readonly="true"/></td>
			    </tr>
 </tbody>
					  </table>    
					</div>
				</div><!--/span-->
			
			</div>
			
			<div class="row-fluid sortable">	
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Match List</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
					<c:if test="${!empty matchs}">
						<table class="table table-striped table-bordered bootstrap-datatable datatable" id="matchList">
						  <thead>
							  <tr>
								  <th>Route Id</th>
								  <th>Truck Id</th>
								  <th>Truck No</th>
								  <th>Origin Location Id</th>
								  <th>Destination Location Id</th>
								 <!--  <th>Booking</th>    --> <th></th> 
							  </tr>
						  </thead>   
						  <tbody>
							<c:forEach items="${matchs}" var="match">
			<tr>
				<td class="center"><c:out value="${match.routeId}"/></td>
				<td class="center"><c:out value="${match.truckId}"/></td>
				<td class="center"><c:out value="${match.truckNumber}"/></td>
				<td class="center"><c:out value="${match.originLocationId}"/></td>
				<td class="center"><c:out value="${match.destinationLocationId}"/></td>
			
				<td align="center">
				 <input type="radio" id="${match.truckId}" name="${match.truckId}" value="${match.truckId}" onclick="matchSelect('${match.routeId}','${match.truckId}', '${match.truckNumber}','${match.originLocationId}','${match.destinationLocationId}')"/>
				 
				</td>
			</tr>
			
		</c:forEach>
		<tr>
			<td  class="center"><form:input path="routeIdValue" value="" readonly="true"/></td>
			<td  class="center"><form:input path="truckIdValue" value="" readonly="true"/></td>
			<td  class="center"><form:input path="truckNumberValue" value="" readonly="true"/></td>
			<td  class="center"><form:input path="originLocationIdValue" value="" readonly="true"/></td>
			<td  class="center"><form:input path="destinationLocationIdValue" value="" readonly="true"/></td>
			<td  class="center"></td>
			</tr>
		
						  </tbody>
					  </table>  
					    </c:if>    
					   
					           
					</div>
				</div><!--/span-->
			
			</div>
		
			
			<div class="row-fluid sortable">	
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Transactions Summary</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
						</div>
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
				<td class="center">
				<form:select path="typeofAmt1"><form:option label="Cash" value="Cash"></form:option>
				<form:option label="Cheque" value="Cheque"></form:option>
				</form:select>
				</td>
				<td class="center"><form:input path="amount1"/></td>
				
			</tr>
			<tr>
			    <td class="center">2</td>
			    <td class="center"><form:select path="typeofAmt2"><form:option label="Cash" value="Cash"></form:option>
				<form:option label="Cheque" value="Cheque"></form:option>
				</form:select></td>
				<td class="center"><form:input path="amount2"/></td>
				
			</tr>
			<tr>
				<td class="center">3</td>
				<td class="center"><form:select path="typeofAmt3"><form:option label="Cash" value="Cash"></form:option>
				<form:option label="Cheque" value="Cheque"></form:option>
				</form:select></td>
				<td class="center"><form:input path="amount3"/></td>
				
			</tr>
			<tr>
				<td class="center" colspan="">4</td>
				<td class="center"><form:select path="typeofAmt4"><form:option label="Cash" value="Cash"></form:option>
				<form:option label="Cheque" value="Cheque"></form:option>
				</form:select></td>
				<td class="center"><form:input path="amount4"/></td>
				
			</tr>
			<tr><td class="center"><input type="submit" value="Save" id="finalSubmit"/></td><td>
			<td><form:input path="transactionAmount" readonly=""/> <b>Total Amounts.</b></td>
			
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

		<script src="js/myCustom.js"></script> 
	<!-- end: JavaScript-->
	

</body>
</html>
