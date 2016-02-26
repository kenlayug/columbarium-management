<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Requirements_Maintenance.js"></script>
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Requirements_Maintenance.css"/>


	
	
	<!-- Section -->
	
	<div class = "responsive col s12">
	    <div class = "row">
	        <div class = "col s7">
	            <h2>Requirement Maintenance</h2>
	            <!-- Create Requirement -->
	            <div class = "col s12">
	                <form class = "wrapper responsive aside aside z-depth-2" id="formCreate">
	                    <div class = "header">
	                        <h4 style = "stroke: black; stroke-width: 10px;">Requirement Form</h4>
	                    </div>
	                    
                        <div class="row" style = "padding-left: 10px;">
                            <div class="input-field col s6">
                                <input id="requirementName" type="text" class="validate" required = "" aria-required = "true">
                                <label for="requirementName">Requirement Name<span style = "color: red;">*</span></label>
                            </div>
                        </div>
                        <div class="row" style = "padding-left: 10px;">
                            <div class="input-field col s12">
                                <input id="requirementDesc" type="text" class="validate" required = "" aria-required = "true">
                                <label for="requirementDesc">Requirement Description</label>
                            </div>
                        </div>

						<!-- Floating Button -->

						<div class="fixed-action-btn horizontal" style="position: absolute; margin-right: 620px; margin-bottom: 160px;">
							<div class = "responsive">
								<button type = "submit" name = "action" class="btn-floating btn-large red" onclick="createRequirement()"><i class="large material-icons">add</i>
								</button>
								<ul>
									<li><button name = "action" class="btn-floating modal-trigger black" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></li>
									<li><button name = "action" class="btn-floating modal-trigger green darken-1" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button></li>
								</ul>
							</div>
						</div>
	                </form>
	
	            </div>
	        </div>
	
	        <!-- Modal Update -->
	        <div id="modalUpdateRequirement" class="modal">
	            <div class = "modal-header">
	                <h4>Update Requirement</h4>
	            </div>
	            <div class="modal-content">

	                <div class = "col s12">
	                    <div class="row">
	                        <!-- Select Requirement Name -->
	                        <div class = "col s6" style = "padding-left: 20px;">
	                            <label>Select Requirement Name to be changed</label>
	                            <select id="selectUpdateRequirement" required = "" aria-required = "true">
	                                <option value="" disabled selected>Requirement Name:</option>
									<c:if test="${requirementList != null}">
										<c:forEach items="${requirementList}" var="requirement">
											<option value="${requirement.strRequirementName}">${requirement.strRequirementName }</option>
										</c:forEach>
									</c:if>
	                            </select>
	                        </div>
	                    </div>
	                </div>
	
	                <form style = "padding-left: 10px;" id="formUpdate">
	                <div class = "col s6">
	                    <div class="input-field col s12">
	                        <input id="requirementNameUpdate" type="text" class="validate" required = "" aria-required = "true">
	                        <label for="requirementNameUpdate">New Requirement Name</label>
	                    </div>
	                </div>
	
	                <div class = "col s12">
	                    <div class="input-field col s12">
	                        <input id="requirementDescUpdate" type="text" class="validate">
	                        <label for="requirementDescUpdate">New Requirement Description</label>
	                    </div>
	                </div>

						<div class="modal-footer">
							<button type = "submit" onclick="updateRequirement()" name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
							<button name = "action" class="waves-effect waves-light btn red" href = "Blocks_Maintenance.html">Cancel</button>
						</div>
	                </form>
	
	            </div>
	        </div>
	
	
	        <!-- Modal Deactivate -->
	        <div id="modalDeactivateRequirement" class="modal">
	            <div class = "modal-header">
	                <h4>Deactivate Requirement</h4>
	            </div>
	            <div class="modal-content">
	                <form class = "col s12">
	                    <div class="row">
	                        <!-- Select Requirement Name -->
	                        <div class = "col s6" style = "padding-left: 20px;">
	                            <label>Select Requirement Name to be deactivated</label>
	                            <select id="selectDeactivateRequirement" required = "" aria-required = "true">
	                                <option value="" disabled selected>Requirement Name:</option>
									<c:if test="${requirementList != null}">
										<c:forEach items="${requirementList}" var="requirement">
											<option value="${requirement.strRequirementName}">${requirement.strRequirementName}</option>
										</c:forEach>
									</c:if>
	                            </select>
	                        </div>
	                    </div>
	                </form>
	
	
	            </div>
	            <div class="modal-footer">
	                <button onclick="deactivateRequirement()" name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
	                <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
	            </div>
	        </div>
	
	        <!-- Data Grid -->
	        <div class = "col s5">
	            <div class = "col s4 z-depth-2 " style = "margin-left: 60px; margin-top: 20px; width: 450px; height: 70px;">
	                <div class = "responsive">
	
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
	            </div>
	
	            <br>
	            <br>
	            <br>
	            <br>
	            <br>
	
	            <div class = "aside z-depth-2" style = "margin-left: 60px; width: 450px; height: 340px; overflow: auto;">
	                <table id="tableRequirement" class = "responsive" style = "margin-top: 10px; margin-left: 0px; width: 100%; height: 200px;">
	
	
	                    <thead class = "fixed-header">
	                    <tr>
	                        <th data-field="id">Requirement Name</th>
	                        <th data-field="name">Requirement Description</th>
	                    </tr>
	                    </thead>
	
	                    <tbody>
	                    	<c:if test="${requirementList == null }">
								<tr>
									<td>No available requirements.</td>
								<tr>
							</c:if>
							<c:if test="${requirementList != null }">
								<c:forEach items="${requirementList }" var="requirement">
									<tr>
										<td>${requirement.strRequirementName}</td>
										<td>${requirement.strRequirementDesc}</td>
									</tr>
								</c:forEach>
							</c:if>
	                    </tbody>
	                </table>
	            </div>
	        </div>
	    </div>
	</div>
	
	<script>
	
		$("#formCreate").submit(function(e){
		    return false;
		});
		
		$("#formUpdate").submit(function(e){
		    return false;
		});
	
		function createRequirement(){
			
			var requirementName = document.getElementById("requirementName").value;
			var requirementDesc = document.getElementById("requirementDesc").value;
			
			
			$.ajax({
				type: "POST",
				url: "create",
				async: true,
				data: {
					"requirement.strRequirementName" : requirementName,
					"requirement.strRequirementDesc" : requirementDesc
				},
				dataType: "json",
				success: function (data){
					if (data.status === "success"){
						alert("Success in saving "+data.requirement.strRequirementName+".");
						updateTable();
						$("#requirementName").val("");
						$("#requirementDesc").val("");
					}else if (data.status === "failed-input"){
						alert("Check your inputs.");
					}else if (data.status === "failed-existing"){
						alert("Requirement is already existing.");
					}
				},
				error: function(data){
					alert("Error...");
				}
			});
			
		}//createRequirement
		
		function updateRequirement(){
			
			alert("Here...");
			var selectRequirementUpdate = document.getElementById("selectUpdateRequirement").value;
			var requirementNameUpdate = document.getElementById("requirementNameUpdate").value;
			var requirementDescUpdate = document.getElementById("requirementDescUpdate").value;
			
			$.ajax({
				type: "POST",
				url: "update",
				data: {
					"strRequirementName" : selectRequirementUpdate,
					"requirement.strRequirementName" : requirementNameUpdate,
					"requirement.strRequirementDesc" : requirementDescUpdate
				},
				dataType: "json",
				success: function(data){
					alert("updating...");
					if (data.status === "success"){
						alert("Requirement "+data.strRequirementName+" is successfully updated.");
						updateTable();
		        		$("#modalUpdateRequirement").closeModal();
		        		$("#requirementNameUpdate").val("");
		        		$("#requirementDescUpdate").val("");
					}else if (data.status === "failed-does-not-exist"){
						alert("Requirement does not exist.");
					}else if (data.status === "failed-input"){
						alert("Fill up anything first.");
					}else if (data.status === "failed-database"){
						alert("error in database...");
					}
				},
				error: function(data){
					alert("error");
				}
			});
			
		}
		
		function deactivateRequirement(){
			
			var deactivateRequirementName = document.getElementById("selectDeactivateRequirement").value;
			
			$.ajax({
				type: "POST",
				url: "deactivate",
				data: {
					"strRequirementName" : deactivateRequirementName
				},
				dataType: "json",
				async: true,
				success: function(data){
					alert("Requirement "+data.strRequirementName+" is successfully deactivated.");
					updateTable();
	        		$("#modalDeactivateRequirement").closeModal();
				},
				error: function(data){
					alert("Error...");
				}
			});
			
		}
		
		function updateTable(){
			
			$.ajax({
				type: "POST",
				url: "getAllRequirement",
				dataType: "json",
				async: true,
				success: function(data){
					var requirementList = data.requirementList;
	        		$("#tableRequirement tbody").remove();
					if (requirementList != null){
						$.each(requirementList, function(i, requirement){
							
			        		tableRow = $("<tr>").append(
			        				$("<td>").text(requirement.strRequirementName),
			        				$("<td>").text(requirement.strRequirementDesc));
			        		$("#tableRequirement").append(tableRow);
		        		});
					}else{
						tableRow = $("<tr>").append(
								$("<td>").text("No requirements available."));
						$("#tableRequirement").append(tableRow);
					}
				},
				error: function(data){
					alert("error in updating table...");
				}
			});
			
		}//updateTable
	
	</script>