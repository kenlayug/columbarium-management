<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Building_Record_Form.js"></script>
	<link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Building_Record_Form.css"/>

    <!-- Section -->
	    <div class = "row">
	        <div class = "col s7">
	            <h2>Building Maintenance</h2>
	
	            <!-- Create Building -->
	            <form class = "col s12">
	                <div class = "aside aside z-depth-3">
	                    <div class = "header">
	                        <h4>Building Form</h4>
	                    </div>
	                    <br>
	
	                    <!-- Radio Button -->
	                    <div class = "align"  style = "padding-left: 20px;">
	                            <p>
	                                <input name="unitType" type="radio" id="columbaryVault" value = "Columbary Vault" checked = "checked"/>
	                                <label for="columbaryVault">Columbary Vault</label>
	                            </p>
	                            <p>
	                                <input name="unitType" value="Full Body Crypts" type="radio" id="fullBody" />
	                                <label for="fullBody">Full Body Crypts</label>
	                            </p>
	                    </div>
	                    <br>
	
	                        <div class="row">
	                            <div class="input-field required col s6">
	                              <input id="buildingName" type="text" class="validate" required = "" aria-required = "true">
	                              <label for="buildingName" data-error = "Check format field." data-success = "">Name of Building <span style = "color: red;">*</span></label>
	                            </div>
	                            <div class="required input-field col s6">
	                                <input id="buildingAddress" type="text" class="validate" required = "" aria-required = "true">
	                                <label for="buildingAddress" data-error = "Check format field." data-success = "">Building Address <span style = "color: red;">*</span></label>
	                            </div>
	                        </div>
	                </div>

					<!-- Floating Button -->
					<div class="fixed-action-btn horizontal" style="position: absolute; margin-right: 600px; margin-bottom: 90px;">
						<button type = "submit" onclick="createBuilding()" name = "action" class="btn-floating btn-large red"><i class="large material-icons">add</i>
						</button>
						<ul>
							<li><button name = "action" class="modal-trigger btn-floating black" href = "#modal2"><i class="material-icons">delete</i></button></li>
							<li><button name = "action" class="modal-trigger btn-floating green darken-1" href = "#modal1"><i class="material-icons">mode_edit</i></button></li>
						</ul>
					</div>
	            </form>
	        </div>
	
	        <!-- Modal Update -->
	        <div id="modal1" class="modal">
	            <div class = "modal-header">
	                <h4>Update Building</h4>
	            </div>
	            <form class="modal-content">
	
	                    <div class="row">
	                        <!-- Select Building Name -->
	                        <div class = "col s12" style = "padding-left: 20px;">
	                            <label>Select Building Name to be Updated</label>
	                            <select required = "" aria-required="true">
	                                <option value="" disabled selected>Building Name:</option>
	                                <c:if test="${buildingList != null }">
	                                	<c:forEach items="${buildingList }" var="building">
	                                		<option value="${building.strBuildingName }">${building.strBuildingName }</option>
	                                	</c:forEach>
	                                </c:if>
	                            </select>
	                        </div>
	                    </div>
	                    <div class="row"  style = "padding-left: 10px;">
	                        <div class="input-field col s6">
	                            <input id="buildingNameUpdate" type="text" class="validate"  required = "" aria-required = "true">
	                            <label for="buildingNameUpdate" data-error = "Check format field." data-success = "">New Building Name <span style = "color: red;">*</span></label>
	                        </div>
	                        <div class="input-field col s6">
	                            <input id="buildingAddressUpdate" type="text" class="validate"  required = "" aria-required = "true">
	                            <label for="buildingAddressUpdate" data-error = "Check format field." data-success = "">New Building Address <span style = "color: red;">*</span></label>
	                        </div>
	                    </div>
	
	                    <div class="modal-footer">
	                        <button type = "submit" name = "action" type = "submit" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
	                        <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
	                    </div>
	
	            </form>
	
	        </div>
	
	
	
	        <!-- Modal Deactivate -->
	        <div id="modal2" class="modal">
	            <div class = "modal-header">
	                <h4>Deactivate Building</h4>
	            </div>
	            <div class="modal-content">
	                        <!-- Select Building Name -->
	                        <div class = "col s6" style = "padding-left: 20px;">
	                            <label>Select Building Name to be Deactivated</label>
	                            <select required = "" aria-required="true">
	                                <option value="" disabled selected>Building Name:</option>
	                                <c:if test="${buildingList != null }">
	                                	<c:forEach items="${buildingList }" var="building">
	                                		<option value="${building.strBuildingName }">${building.strBuildingName }</option>
	                                	</c:forEach>
	                                </c:if>
	                            </select>
	                        </div>
	                    <br><br><br><br><br><br><br>
	                    <div class="modal-footer">
	                        <button name = "action" class="waves-effect waves-light btn red">Confirm</button>
	                        <button name = "action" class="waves-effect waves-light btn red" style = "margin-right: 10px;">Cancel</button>
	                    </div>
	            </div>
	
	        </div>
	
	
	        <!-- Data Grid -->
	        <div class = "col s5">
	            <div class = "col s4 z-depth-2" style = "margin-top: 20px; width: 100%; height: 70px;">
	                <div class="responsive">
	
	                    <nav style = "height: 50px; margin-top: 10px; background-color: #00897b">
	                        <div class="nav-wrapper">
	                                <div class="input-field"  style = "height: 50px;">
	                                    <input id="search" type="search" required>
	                                    <label for="search"><i class="material-icons">search</i></label>
	                                    <i class="material-icons">close</i>
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
	
	            <div class = "aside z-depth-2" style = " width: 100%; height: 340px; overflow: auto;">
	                <table id="tableBuilding" class="responsive" style = "width: 100%;">
	
	                    <thead class = "fixed-header">
	                    <tr>
	                        <th data-field="id">Building name</th>
	                        <th data-field="name">Building Type</th>
	                        <th data-field="name">Building Address</th>
	                    </tr>
	                    </thead>
	
	                    <tbody>
		                    <c:if test="${buildingList == null }">
		                    	<tr><td>No building available</td></tr>
		                    </c:if>
		                    <c:if test="${buildingList != null }">
		                    	<c:forEach items="${buildingList }" var="building">
		                    		<tr>
				                        <td>${building.strBuildingName }</td>
				                        <td>${building.strBuildingType }</td>
				                        <td>${building.strBuildingLocation }</td>
				                    </tr>
		                    	</c:forEach>
		                    </c:if>
	                    </tbody>
	                </table>
	            </div>
	        </div>
	    </div>
	    
	    
	<script>
	
		function createBuilding(){
			
			alert("HERE...");
			
			var buildingName = document.getElementById("buildingName").value;
			var buildingAddress = document.getElementById("buildingAddress").value;
			var buildingType = $('input[name=unitType]:checked').val();
			
			$.ajax({
				type: "POST",
				url: "create",
				data: {
					"building.strBuildingName" : buildingName,
					"building.strBuildingLocation" : buildingAddress,
					"building.strBuildingType" : buildingType
				},
				dataType: "json",
				async: true,
				success: function(data){
					if (data.status === "success"){
						alert("Building "+data.building.strBuildingName+" is successfully created.");
						updateTable();
					}else{
						alert("error occured...");
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
				url: "getAllBuilding",
				dataType: "json",
				async: true,
				success: function(data){
					var buildingList = data.buildingList;
	        		$("#tableBuilding tbody").remove();
					if (buildingList != null){
						$.each(buildingList, function(i, building){
							
			        		tableRow = $("<tr>").append(
			        				$("<td>").text(building.strBuildingName),
			        				$("<td>").text(building.strBuildingType),
			        				$("<td>").text(building.strBuildingLocation));
			        		$("#tableBuilding").append(tableRow);
		        		});
					}else{
						tableRow = $("<tr>").append(
								$("<td>").text("No building available."));
						$("#tableBuilding").append(tableRow);
					}
				},
				error: function(data){
					alert("error...");
				}
			});
			
		}
	
	</script>