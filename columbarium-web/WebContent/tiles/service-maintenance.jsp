<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
     <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Services_Record_Form.css"/>

	<link rel="stylesheet" href="../css/style.css">
	<script type="text/javascript" src = "../js/index.js"></script>

<!-- Section -->

<div class = "col s12" >
    <div class = "row">
            <h2 style = "font-size: 30px; padding-left: 70px; margin-top: 0px; margin-bottom: 0px;">Service Maintenance</h2>

		<!-- Modal Create -->
		<div id="modalCreateService" class="modal" style = "width: 650px;">
			<div class = "modal-header" style = "height: 55px;">
				<h4 style = "padding-left: 20px; font-size: 30px;">Create Service</h4>
			</div>
			<form class="modal-content">

				<button name = "action" class="modal-trigger waves-effect waves-light btn red left" style = "margin-left: 20px;" href = "#modalRequirement">Requirement</button>
				<br><br>
				<div class="row" style = "padding-left: 10px;" id="formCreate">
					<div class="input-field col s6">
						<input id="serviceName" type="text" class="validate" required = "" aria-required = "true" pattern = "[A-Za-z0-9\s]{1,29}">
						<label for="serviceName" data-error = "Invalid Format." data-success = "">Service Name <span style = "color: red;">*</span></label>
					</div>
					<div class="input-field col s6">
						<input id="servicePrice" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
						<label for="servicePrice" data-error = "Invalid Format." data-success = "">Service Price <span style = "color: red;">*</span></label>
					</div>
				</div>

				<div class="row">
					<div class="row" style = "padding-left: 10px;">
						<div class="input-field col s12">
							<input id="serviceDesc" type="text" class="validate">
							<label for="serviceDesc" data-error = "Invalid Format." data-success = "">Service Description</label>
							<i class = "left" style = "margin-top: 20px; padding-left: 0px; color: red;">*Required Fields</i>
						</div>
					</div>
				</div>

				<div class="modal-footer">
					<button type = "submit" onclick="createService()" name="action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px;">Confirm</button>
					<button name = "action" class="waves-effect waves-light modal-close btn red" style = "margin-left: 20px;">Cancel</button>
				</div>
			</form>

		</div>

            <!-- Modal Requirements -->
            <div id="modalRequirement" class="modal" style = "width: 600px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "font-size: 30px; padding-left: 20px;">List of Requirements</h4>
                </div>
                <div class="modal-content">
                        <div class = "col s12">
                            <br>
                            <div class="row">
                                <div class = "col s6" >
                                        
									<c:if test="${requirementList == null}">
										<h6>No requirement available.</h6>
									</c:if>
									<c:if test="${requirementList != null}">
										<c:forEach items="${requirementList }" var="requirement">
											<p>
	                                            <input type="checkbox" id="${requirement.strRequirementName}" name="requirement[]" value="${requirement.strRequirementName }" />
	                                            <label for="${requirement.strRequirementName }">${requirement.strRequirementName }</label>
	                                        </p>
										</c:forEach>
									</c:if>

                                        
                                </div>

                                <div class = "col s6">
                                    
                                </div>
                            </div>
                        </div>
                        <br><br><br><br><br><br><br><br><br><br><br><br>

                <div class="modal-footer">
                    <button onclick="$('#modalRequirement').closeModal()" name = "action" class="waves-effect waves-light btn red right" style = "margin-right: 0px; width: 130px;">CONFIRM</button>
					<button name = "action" class="waves-effect waves-light modal-close btn red" style = "margin-right: 10px;">Cancel</button>
                </div>
            </div>
        </div>


        <!-- Modal Update -->
        <div id="modalUpdateService" class="modal" style = "width: 600px;">
            <div class = "modal-header" style = "height: 55px;">
                <h4 style = "padding-left: 20px; font-size: 30px;">Update Service</h4>
            </div>
            <form class="modal-content" id="formUpdate">

                    <div class="row" style = "padding-left: 10px;">
                        <div class="input-field col s6">
                        	<input id="serviceToBeUpdate" type="hidden">
                            <input id="serviceNameUpdate" value=" " type="text" class="validate" required = "" aria-required = "true" pattern = "[A-Za-z0-9\s]{1,29}">
                            <label for="serviceNameUpdate" data-error = "Check format field." data-success = "">New Service Name<span style = "color: red;">*</span></label>
                        </div>
                        <div class="input-field col s6">
                            <input id="servicePriceUpdate" value=" " type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                            <label for="servicePriceUpdate" data-error = "Check format field." data-success = "">New Service Price <span style = "color: red;">*</span></label>
                        </div>
                    </div>

                <div class="row">
                        <div class="row" style = "padding-left: 10px;">
                            <div class="input-field col s12">
								<input id="serviceDescUpdate" value=" " type="text" class="validate" pattern = "[A-Za-z0-9\s]{1,29}">
                                <label for="serviceDescUpdate" data-error = "Check format field." data-success = "">New Service Description</label>
                            </div>
                        </div>

                    <button data-target = "modalRequirement" class="waves-effect waves-light modal-trigger red left" style = "margin-left: 20px; width: 180px; height: 35px; color: white; margin-bottom: 50px; font-size: 14px;"></i>CHOOSE REQUIREMENTS</button>
                </div>
				<div class="modal-footer">
					<button type = "submit" onclick="updateService()" name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
					<button name = "action" class="waves-effect waves-light modal-close btn red">Cancel</button>
				</div>
            </form>

        </div>


        <!-- Modal Deactivate -->
        <div id="modalDeactivateService" class="modal" style = "width: 400px;">
            <div class = "modal-header" style = "height: 55px;">
                <h4 style = "font-size: 30px; padding-left: 20px;">Deactivate Service</h4>
            </div>
            <div class="modal-content">
				<input id="serviceToBeDeactivated" type="hidden">
				<p style = "padding-left: 90px; font-size: 15px;">Are you sure you want to deactivate this service?</p>
            </div>
            <div class="modal-footer">
                <button onclick="deactivateService()" name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                <button name = "action" class="waves-effect waves-light modal-close btn red">Cancel</button>
            </div>
        </div>


		<!-- Data Grid -->
		<div class = "col s9" style = "margin-left: 40px; margin-top: 0px;">
			<div class="row">
				<div id="admin" class="col s12" style="margin-top: 20px">
					<div class="z-depth-2 card material-table">
						<div class="table-header" style="background-color: #00897b;">
							<h4 style = "font-size: 30px; color: white; padding-left: 0px;">Service Data Grid</h4>
							<div class="actions">
								<button name = "action" class="waves-effect waves-light modal-trigger btn-floating yellow" style = "margin-right: 10px;" href = "#modalCreateService"><i class="material-icons">add</i></button>
								<a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
							</div>
						</div>
						<table id="datatable">
							<thead>
							<tr>
								<th>Service Name</th>
								<th>Service Price</th>
								<th>Service Description</th>
								<th>Service Requirement</th>
								<th>Action</th>
							</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<script type="text/javascript" src = "../js/index.js"></script>
			
		</div>
    </div>
	</div>
    
    <script>

	    $(document).ready(function(){
	        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
	        $('.modal-trigger').leanModal({dismissible: false});
	    });

	    $("#formCreate").submit(function(e){
		    return false;
		});
	    
	    $("#formUpdate").submit(function(e){
		    return false;
		});

	    function createService(){

	    	var serviceName = document.getElementById("serviceName").value;
	    	var servicePrice = document.getElementById("servicePrice").value;
	    	var serviceDesc = document.getElementById("serviceDesc").value;
	    	var requirements = $("input[name='requirement[]']:checked").map(function() {
	    		return this.value;
	    	}).get();
			
			$.ajax({
				type: "POST",
				url: "create",
				traditional: true,
				data: {
					"service.strServiceName" : serviceName,
					"service.dblPrice" : servicePrice,
					"service.strServiceDesc" : serviceDesc,
					"service.requirementListByString" : requirements
				},
				async: true,
				dataType: "json",
				success: function(data){
					if (data.status === "success"){
						Materialize.toast('Service is successfully saved.', 3000, 'rounded');
						updateTable();
						$('#modalCreateService').closeModal();
					}else if (data.status === "input"){
						Materialize.toast('Please check all your inputs.', 3000, 'rounded');
					}else if (data.status === "failed-existing"){
						Materialize.toast('Service already exists.', 3000, 'rounded');
					}else if (data.status === "failed-database"){
						Materialize.toast('Please check your connection.', 3000, 'rounded');
					}
				},
				error: function(data){
					Materialize.toast('Error occured.', 3000, 'rounded');
				}
			});
	    	
	    }//createService()
	    
	    function placeServiceUpdate(){
	    	
	    	var selectServiceUpdate = document.getElementById("selectServiceUpdate").value;
	    	
	    	$.ajax({
	    		type: "POST",
	    		url: "getService",
	    		data:{
	    			"strServiceName" : selectServiceUpdate
	    		},
	    		dataType: "json",
	    		async: true,
	    		success: function(data){
	    			if (data.service == null){
	    				alert("error happened...");
	    			}else{
	    				
	    				$("#serviceNameUpdate").val(data.service.strServiceName);
	    				$("#servicePriceUpdate").val(data.service.dblPrice);
	    				$("#serviceDescUpdate").val(data.service.strServiceDesc);
	    				
	    			}
	    		},
	    		error: function(data){
	    			alert("error...");
	    		}
	    	});
	    	
	    }//selectServiceUpdate()
	    
	    function updateService(){
	    	Materialize.toast('Updating..', 3000, 'rounded');
	    	var serviceNameUpdate = document.getElementById("serviceNameUpdate").value;
	    	var servicePriceUpdate = document.getElementById("servicePriceUpdate").value;
	    	var serviceDescUpdate = document.getElementById("serviceDescUpdate").value;
	    	var selectServiceUpdate = document.getElementById("serviceToBeUpdate").value;
	    	
	    	if (serviceNameUpdate == null || serviceNameUpdate == "" || serviceNameUpdate == " " ||
	    			servicePriceUpdate == null || servicePriceUpdate == 0){
	    		
	    	}else{
	    	
		    	$.ajax({
		    		type: "POST",
		    		url: "update",
		    		data: {
		    			"strServiceName" : selectServiceUpdate,
		    			"service.strServiceName" : serviceNameUpdate,
		    			"service.dblPrice" : servicePriceUpdate,
		    			"service.strDescUpdate" : serviceDescUpdate
		    		},
		    		dataType: "json",
		    		async: true,
		    		success: function(data){
		    			if (data.status === "success"){
		    				Materialize.toast('Service is successfully updated.', 3000, 'rounded');
		    				updateTable();
		    				$('#modalUpdateService').closeModal();
		    			}else if(data.status === "input"){
		    				Materialize.toast('Check all your inputs.', 3000, 'rounded');
		    			}else if (data.status === "failed-database"){
		    				Materialize.toast('Please check your connection.', 3000, 'rounded');
		    			}
		    		},
		    		error: function(data){
		    			Materialize.toast('Error occured.', 3000, 'rounded');
		    		}
		    	});
	    	}
	    	
	    }//updateService()
	    
	    function deactivateService(){
	    	
	    	var selectServiceDeactivate = document.getElementById("serviceToBeDeactivated").value;
	    	
	    	$.ajax({
	    		type: "POST",
	    		url: "deactivate",
	    		data:{
	    			"serviceId" : selectServiceDeactivate
	    		},
	    		dataType: "json",
	    		async: true,
	    		success: function(data){
	    			if (data.status === "success"){
	    				Materialize.toast('Service is successfully deleted.', 3000, 'rounded');
	    				updateTable();
	    				$('#modalDeactivateService').closeModal();
	    			}else if (data.status === "failed-database"){
	    				Materialize.toast('Please check your connection.', 3000, 'rounded');
	    			}
	    		},
	    		error: function(data){
	    			Materialize.toast('Please check your connection.', 3000, 'rounded');
	    		}
	    	});
	    	
	    }
	    
	    window.onload = updateTable;
	    
	    function updateTable(){
			
			$.ajax({
				type: "POST",
				url: "getAllService",
				dataType: "json",
				async: true,
				success: function(data){
					var serviceList = data.serviceList;
					var table = $('#datatable').DataTable();
	        		table.clear();
	        		Materialize.toast('Updating table...', 3000, 'rounded');
	        		if (serviceList != null){
		        		$.each(serviceList, function(i, service){
	
		        			var addButtons = "<button name = action class= 'modal-trigger btn-floating green' onclick = openUpdate(this.value) value = "+service.serviceId+" ><i class= material-icons >mode_edit</i></button>"+
		        			"<button name = action class= 'modal-trigger btn-floating red' onclick = openDeactivate(this.value) value = "+service.serviceId+"><i class= material-icons >delete</i></button></td>";
		        			
		        			
		        			table.row.add( [
		    	        		            service.strServiceName,
		    	        		            "P "+service.dblPrice,
		    	        		            service.strServiceDesc,
		    	        		            ,
		    	        		            addButtons
		    	        		            ]);
		        		});
	        		}
	        		
	        		
	        		table.draw();
				},
				error: function(data){
					alert("error in updating table...");
				}
			});
			
		}//updateTable
		
		function openUpdate(serviceId){
			
			$.ajax({
	    		type: "POST",
	    		url: "getService",
	    		data:{
	    			"serviceId" : serviceId
	    		},
	    		dataType: "json",
	    		async: true,
	    		success: function(data){
	    			if (data.service == null){
	    				Materialize.toast('Service does not exist.', 3000, 'rounded');
	    			}else{

	    				$("#serviceToBeUpdate").val(data.service.strServiceName);
	    				$("#serviceNameUpdate").val(data.service.strServiceName);
	    				$("#servicePriceUpdate").val(data.service.dblPrice);
	    				$("#serviceDescUpdate").val(data.service.strServiceDesc);
	    				$('#modalUpdateService').openModal();
	    			}
	    		},
	    		error: function(data){
	    			Materialize.toast('Error occured.', 3000, 'rounded');
	    		}
	    	});
		}
		
		function openDeactivate(serviceId){
			$("#serviceToBeDeactivated").val(serviceId);
			$('#modalDeactivateService').openModal();
		}
    
    </script>
    
    