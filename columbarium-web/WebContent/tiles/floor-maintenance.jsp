<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	<script type="text/javascript" src="<%=request.getContextPath()%>/js/Floor_Record_Form.js"></script>
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Floor_Record_Form.css"/>

    <!-- Section -->
<div class = "col s12" >
    <div class = "row">
        <div class = "responsive">

        <div class = "col s7">
            <h2>Floor Maintenance</h2>


            <!-- Create Floor -->
            <div class = "col s12">
                <div class = "aside aside z-depth-3">
                    <div class = "responsive">
                    <div class = "header">
                        <h4>Create Floor</h4>
                    </div>

                        <div class="row">
                            <h5>Block size per floor:</h5>
                            <div class="input-field col s6">
                                <input id="floorRow" type="number" class="validate" required = "" aria-required = "true" min = "1" max = "10">
                                <label for="floorRow" data-error = "1-10 only" data-success = "Row/s accepted.">Row/s:</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="floorColumn" type="number" class="validate" required = "" aria-required = "true" min = "1" max = "20">
                                <label for="floorColumn" data-error = "1-20 only" data-success = "Column/s accepted.">Column/s:</label>
                            </div>
                        </div>
                        <br>
                        <!-- Floating Button -->
                        <div class="fixed-action-btn horizontal" style="position: absolute; margin-right: 620px; margin-bottom: 110px;">
                            <button onclick="createFloor()" name = "action" type = "submit" class="btn-floating btn-large red"><i class="large material-icons">add</i>
                            </button>
                            <ul>
                                <li><button name = "action" class="modal-trigger btn-floating black" href = "#modal2"><i class="material-icons">delete</i></button></li>
                                <li><button name = "action" class="modal-trigger btn-floating green darken-1" href = "#modal1"><i class="material-icons">mode_edit</i></button></li>
                            </ul>
                        </div>

                       <div class = "col s6">
                             <label>Select Building Name</label>
                                    <select id="selectBuildingCreate">
                                        <option value="" disabled selected>Building Name:</option>
                                        <c:if test="${buildingList != null}">
                                        	<c:forEach items="${buildingList}" var="building">
                                        		<option value="${building.buildingId}">${building.strBuildingName}</option>
                                        	</c:forEach>
                                        </c:if>
                                    </select>
                       </div>
                </div>
                </div>
            </div>
        </div>

            <!-- Modal Update -->
            <div id="modal1" class="modal">
                <div class = "modal-header">
                    <h4>Update Floor</h4>
                </div>
                <div class="modal-content">

                        <div class="row">
                            <h5>Block size per floor:</h5>
                            <div class="input-field col s6">
                                <input id="rowUpdate" type="text" class="validate">
                                <label for="rowUpdate">Row/s:</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="colUpdate" type="text" class="validate">
                                <label for="colUpdate">Column/s:</label>
                            </div>
                        </div>

                        <div class = "col s6">
                            <label>Select Building Name</label>
                            <select>
                                <option value="" disabled selected>Building Name:</option>
                                <option selected = "selected" value="1">Building One</option>
                                <option value="2">Building Two</option>
                                <option value="3">Building Three</option>
                            </select>
                        </div>

                </div>
                <div class="modal-footer">
                    <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                    <button name = "action" class="waves-effect waves-light btn red" href = "Blocks_Maintenance.html">Cancel</button>
                </div>
            </div>


            <!-- Modal Deactivate -->
            <div id="modal2" class="modal">
                <div class = "modal-header">
                    <h4>Deactivate Floor</h4>
                </div>
                <div class="modal-content">


                        <div class = "row">
                        <div class = "col s6">
                            <label>Select Building Name</label>
                            <select>
                                <option value="" disabled selected>Building Name:</option>
                                <option selected = "selected" value="1">Building One</option>
                                <option value="2">Building Two</option>
                                <option value="3">Building Three</option>
                            </select>
                        </div>
                        <div class = "col s6">
                            <label>Select Floor Number to Deactivate</label>
                            <select>
                                <option value="" disabled selected>Floor Number:</option>
                                <option selected = "selected" value="1">Floor One</option>
                                <option value="2">Floor Two</option>
                                <option value="3">Floor Three</option>
                            </select>
                        </div>
                        </div>

                </div>
                <div class="modal-footer">
                    <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                    <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
                </div>
            </div>

        <!-- Data Grid -->
        <div class = "col s5">
            <div class = "col s4 z-depth-2" style = "margin-bottom: 20px;margin-top: 20px; width: 100%; height: 70px;">
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

            <div class = "aside z-depth-2" style = " width: 100%; height: 340px; overflow: auto;">
                <table id="tableBuilding" class = "responsive" style = "width: 100%;">


                    <thead>
                    <tr>
                        <th data-field="id">Building Type</th>
                        <th data-field="id">Building Name</th>
                        <th data-field="name">Building Location</th>
                        <th data-field="name">No. of Floors</th>
                    </tr>
                    </thead>

                    <tbody>
                    	<c:if test="${buildingList == null }">
                    		<tr><td>No building available.</td></tr>
                    	</c:if>
                    	<c:if test="${buildingList != null }">
                    		<c:forEach items="${buildingList }" var="building">
                    			<tr>
			                        <td>${building.strBuildingType }</td>
			                        <td>${building.strBuildingName }</td>
			                        <td>${building.strBuildingLocation }</td>
			                        <c:if test="${building.floorList == null }">
			                        	<td>0</td>
			                        </c:if>
			                        <c:if test="${building.floorList != null }">
			                        	<td>${fn:length(building.floorList)}</td>
			                        </c:if>
			                    </tr>
                    		</c:forEach>
                    	</c:if>
                    </tbody>
                    </table>
            </div>
        </div>
</div>
</div>
</div>


	<script>
		
		function createFloor(){
			
			alert("Here...");
			var floorColumn = document.getElementById("floorColumn").value;
			var floorRow = document.getElementById("floorRow").value;
			var buildingId = document.getElementById("selectBuildingCreate").value;
			
			$.ajax({
				type: "POST",
				url: "create",
				data: {
					
					"floor.buildingId" : buildingId,
					"floor.intLevelNo" : floorRow,
					"floor.intColumnNo" : floorColumn
					
				},
				dataType: "json",
				async: true,
				success: function(data){
					if (data.status === "success"){
						alert("Floor is successfully created.");
						updateTable();
					}else{
						alert("Error occured...");
					}
				},
				error: function(data){
					alert("error...");
				}
			});
			
		}
		
		function updateTable(){
			
			$.ajax({
				type : "POST",
				url : "getAllBuildingFloors",
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
	
	