<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
     <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Services_Record_Form.css"/>

<!-- Section -->

<div class = "col s12" >
    <div class = "row">
        <div class = "col s7">
            <h2>Service Maintenance</h2>

            <!-- Create Service -->
            <div class = "col s12">
                <div class = "aside aside z-depth-3">
                <div class = "header">
                    <h4>Service Form</h4>
                </div>
                        <form class="row" style = "padding-left: 10px;" id="formCreate">
                            <div class="input-field col s6">
                                <input id="serviceName" type="text" class="validate" required = "" aria-required = "true" pattern = "[A-Za-z0-9\s]{1,29}">
                                <label for="serviceName" data-error = "Check format field." data-success = "">Service Name <span style = "color: red;">*</span></label>
                            </div>
                            <div class="input-field col s6">
                                <input id="servicePrice" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                                <label for="servicePrice" data-error = "Check format field." data-success = "">Service Price <span style = "color: red;">*</span></label>
                            </div>

							<!-- Floating Button -->
							<div class="fixed-action-btn horizontal" style="position: absolute; margin-right: 620px; margin-bottom: 80px;">
								<button type = "submit" onclick="createService()" name = "action" class="btn-floating btn-large red"><i class="large material-icons">add</i>
								</button>
								<ul>
									<li><button name = "action" class="modal-trigger btn-floating black" href = "#modalDeactivate"><i class="material-icons">delete</i></button></li>
									<li><button name = "action" class="modal-trigger btn-floating green darken-1" href = "#modalUpdate"><i class="material-icons">mode_edit</i></button></li>
								</ul>
							</div>
                        </form>
                    <div class="row">
                            <div class="row" style = "padding-left: 10px;">
                                <div class="input-field col s12">
									<input id="serviceDesc" type="text" class="validate" pattern = "[A-Za-z0-9\s]{1,29}">
                                    <label for="serviceDesc" data-error = "Check format field." data-success = "">Service Description</label>
                                </div>
                            </div>

                        <button data-target = "modalRequirement" class="waves-effect waves-light modal-trigger red left" style = "margin-left: 20px; width: 180px; height: 35px; color: white; margin-bottom: 50px; font-size: 14px;"></i>CHOOSE REQUIREMENTS</button>
                    </div>
                </div>

            </div>
            </div>

            <!-- Modal Requirements -->
            <div id="modalRequirement" class="modal">
                <div class = "modal-header">
                    <h4>List of Requirements</h4>
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
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>

                <div class="modal-footer">
                    <button onclick="$('#modalRequirement').closeModal()" name = "action" class="waves-effect waves-light btn red right" style = "margin-right: 0px; width: 130px;">CONFIRM</button>
                </div>
            </div>
        </div>


        <!-- Modal Update -->
        <div id="modalUpdate" class="modal">
            <div class = "modal-header">
                <h4 style = "padding-left: 40px;">Update Service</h4>
            </div>
            <form class="modal-content">

                    <div class="row">
                        <div class = "col s6" style = "padding-left: 20px;">
                            <label>Select Service Name to Deactivate:</label>
                            <select id="selectServiceUpdate"  required = "" aria-required="true" onchange="placeServiceUpdate()">
                                <option value="" disabled selected>Service Name:</option>
								<c:if test="${serviceList != null }">
									<c:forEach items="${serviceList }" var="service">
										<option value="${service.strServiceName }">${service.strServiceName}</option>
									</c:forEach>
								</c:if>
                            </select>
                        </div>
                    </div>

                    <div class="row" style = "padding-left: 10px;">
                        <div class="input-field col s6">
                            <input id="serviceNameUpdate" type="text" class="validate" required = "" aria-required = "true" pattern = "[A-Za-z0-9\s]{1,29}">
                            <label for="serviceNameUpdate" data-error = "Check format field." data-success = "">New Service Name<span style = "color: red;">*</span></label>
                        </div>
                        <div class="input-field col s6">
                            <input id="servicePriceUpdate" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                            <label for="servicePriceUpdate" data-error = "Check format field." data-success = "">New Service Price <span style = "color: red;">*</span></label>
                        </div>
                    </div>

                <div class="row">
                        <div class="row" style = "padding-left: 10px;">
                            <div class="input-field col s12">
								<input id="serviceDescUpdate" type="text" class="validate" pattern = "[A-Za-z0-9\s]{1,29}">
                                <label for="serviceDescUpdate" data-error = "Check format field." data-success = "">New Service Description</label>
                            </div>
                        </div>

                    <button data-target = "modalRequirement" class="waves-effect waves-light modal-trigger red left" style = "margin-left: 20px; width: 180px; height: 35px; color: white; margin-bottom: 50px; font-size: 14px;"></i>CHOOSE REQUIREMENTS</button>
                </div>
				<div class="modal-footer">
					<button type = "submit" onclick="updateService()" name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
					<button onclick="$('#modalUpdate').closeModal()" name = "action" class="waves-effect waves-light btn red" href = "Blocks_Maintenance.html">Cancel</button>
				</div>
            </form>

        </div>


        <!-- Modal Deactivate -->
        <div id="modalDeactivate" class="modal">
            <div class = "modal-header">
                <h4>Deactivate Service</h4>
            </div>
            <div class="modal-content">

                <form class = "col s12">
                    <div class="row">
                        <div class = "col s6" style = "padding-left: 20px;">
                            <label>Select Service Name to Deactivate:</label>
                            <select id="selectServiceDeactivate" required = "" aria-required="true">
                                <option value="" disabled selected>Service Name:</option>
								<c:if test="${serviceList != null }">
									<c:forEach items="${serviceList }" var="service">
										<option value="${service.strServiceName }">${service.strServiceName}</option>
									</c:forEach>
								</c:if>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button onclick="deactivateService()" name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                <button onclick="$('#modalDeactivate').closeModal()" name = "action" class="waves-effect waves-light btn red">Cancel</button>
            </div>
        </div>


            <!-- Data Grid -->
            <div class = "col s5">
                <div class = "col s4 z-depth-2 " style = "margin-left: 60px; margin-top: 20px; width: 450px; height: 70px;">


                    <nav style = "height: 50px; margin-top: 10px; background-color: #00897b">
                        <div class="nav-wrapper">
                            <div>
                                <div class="input-field"  style = "height: 50px;">
                                    <input id="search" type="search" required>
                                    <label for="search"><i class="material-icons">search</i></label>
                                    <i class="material-icons">close</i>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>

                <br>
                <br>
                <br>
                <br>
                <br>

                <div class = "aside z-depth-2" style = "margin-left: 60px; width: 450px; height: 385px; overflow: auto;">
                    <table id="tableService" class = "responsive" style = "margin-top: 10px; margin-left: 0px; width: 100%; height: 200px;">

                        <thead class = "fixed-header">
                        <tr>
                            <th data-field="id">Service Name</th>
                            <th data-field="name">Service Price</th>
                            <th data-field="name">Service Description</th>
                            <th data-field="name">Service Requirement</th>
                        </tr>
                        </thead>

                        <tbody>
	                        <c:if test="${serviceList == null }">
	                        	<tr><td>No services available.</td></tr>
	                        </c:if>
	                        <c:if test="${serviceList != null }">
	                        	<c:forEach items="${serviceList }" var="service">
		                        	<tr>
			                            <td>${service.strServiceName }</td>
			                            <td>P ${service.dblPrice }</td>
			                            <td>${service.strServiceDesc }</td>
			                            <td>
			                            	<c:if test="${service.requirementList == null }">
			                            		No requirement specified.
			                            	</c:if>
			                            	<c:if test="${service.requirementList != null }">
												<c:forEach items="${service.requirementList}" var="requirement">
													${requirement.strRequirementName},
												</c:forEach>
											</c:if>
			                            </td>
			                        </tr>
	                        	</c:forEach>
	                        </c:if>
                        </tbody>
                    </table>
                </div>
        </div>
    </div>
    
    <script>

	    $("#formCreate").submit(function(e){
		    return false;
		});
    
	    $(document).ready(function(){
	        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
	        $('.modal-trigger').leanModal();
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
						alert("Service "+data.service.strServiceName+" is successfully saved.");
						updateTable();
					}else if (data.status === "input"){
						alert("Fill up everything first.");
					}	
					else{
						alert("Problem occured.");
					}
				},
				error: function(data){
					alert("error...");
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
	    	
	    	var serviceNameUpdate = document.getElementById("serviceNameUpdate").value;
	    	var servicePriceUpdate = document.getElementById("servicePriceUpdate").value;
	    	var serviceDescUpdate = document.getElementById("serviceDescUpdate").value;
	    	var selectServiceUpdate = document.getElementById("selectServiceUpdate").value;
	    	
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
	    				alert("Successfully updated.");
	    				updateTable();
	    				$('#modalUpdate').closeModal();
	    			}else{
	    				alert("error occured...");
	    			}
	    		},
	    		error: function(data){
	    			alert("error..."+data);
	    		}
	    	});
	    	
	    }//updateService()
	    
	    function deactivateService(){
	    	
	    	var selectServiceDeactivate = document.getElementById("selectServiceDeactivate").value;
	    	
	    	$.ajax({
	    		type: "POST",
	    		url: "deactivate",
	    		data:{
	    			"strServiceName" : selectServiceDeactivate
	    		},
	    		dataType: "json",
	    		async: true,
	    		success: function(data){
	    			if (data.status === "success"){
	    				alert("successfully deleted.");
	    				updateTable();
	    				$('#modalDeactivate').closeModal();
	    			}else{
	    				alert("error occured.");
	    			}
	    		},
	    		error: function(data){
	    			alert("error...");
	    		}
	    	});
	    	
	    }
	    
	    function updateTable(){
			
			$.ajax({
				type: "POST",
				url: "getAllService",
				dataType: "json",
				async: true,
				success: function(data){
					var serviceList = data.serviceList;
	        		$("#tableService tbody").remove();
					if (serviceList != null){
						$.each(serviceList, function(i, service){
							
			        		tableRow = $("<tr>").append(
			        				$("<td>").text(service.strServiceName),
			        				$("<td>").text(service.dblPrice),
			        				$("<td>").text(service.strServiceDesc),
			        				$("<td>").text());
			        		$("#tableService").append(tableRow);
		        		});
					}else{
						tableRow = $("<tr>").append(
								$("<td>").text("No services available."));
						$("#tableService").append(tableRow);
					}
				},
				error: function(data){
					alert("error in updating table...");
				}
			});
			
		}//updateTable
    
    </script>
    
    