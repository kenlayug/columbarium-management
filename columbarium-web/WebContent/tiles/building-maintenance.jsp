<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Building_Record_Form.js"></script>
	<link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Building_Record_Form.css"/>

	<link rel="stylesheet" href="../css/style.css">
	<script type="text/javascript" src = "../js/index.js"></script>

    <!-- Section -->
		<div class = "s12">
	    <div class = "row">
	        <div class = "col s5">
	            <h2 style = "font-size: 30px;">Building Maintenance</h2>
	
	            <!-- Create Building -->
	            <form class = "col s12" id="formCreate">
	                <div class = "aside aside z-depth-3" style = "height: 400px;">
	                    <div class = "header">
	                        <h4 style = "font-size: 30px; margin-top: 0px; padding-top: 10px;">Building Form</h4>
	                    </div>

	                    <br>
	
	                        <div class="row" style = "padding-left: 10px;">
	                            <div class="input-field required col s12">
	                              <input id="buildingName" type="text" class="validate" required = "" aria-required = "true">
	                              <label for="buildingName" data-error = "Invalid format." data-success = "">Name of Building <span style = "color: red;">*</span></label>
	                            </div>
	                        </div>

						<div style = "padding-left: 10px;">
							<div class="required input-field col s12">
								<input id="buildingAddress" type="text" class="validate" required = "" aria-required = "true">
								<label for="buildingAddress" data-error = "Invalid format." data-success = "">Building Address <span style = "color: red;">*</span></label>
							</div>
						</div>

						<div style = "padding-left: 10px;">
							<div class="required input-field col s12">
								<input id="floorNumber" type="text" class="validate" required = "" aria-required = "true">
								<label for="floorNumber" data-error = "Invalid format." data-success = "">Number of floor/s to create: <span style = "color: red;">*</span></label>
							</div>
						</div>


						<br><br><br><br>
						<i class = "left" style = "margin-bottom: 50px; padding-left: 20px; color: red;">*Required Fields</i>
	                </div>
	            </form>
	        </div>
	
	        <!-- Modal Update -->
	        <div id="modal1" class="modal">
	            <div class = "modal-header">
	                <h4>Update Building</h4>
	            </div>
	            <form class="modal-content">

	                    <div class="row"  style = "padding-left: 20px;">
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
	                        <button name = "action" class="waves-effect waves-light btn red modal-close">Cancel</button>
	                    </div>
	
	            </form>
	
	        </div>
	
	
	
	        <!-- Modal Deactivate -->
	        <div id="modal2" class="modal">
	            <div class = "modal-header">
	                <h4>Deactivate Building</h4>
	            </div>
	            <div class="modal-content">
						<p style = "padding-left: 110px; font-size: 20px;">Are you sure you want to deactivate this building?</p>
						<br>
	            </div>
				<div class="modal-footer" style = "margin-bottom: 0px;">
					<button name = "action" class="waves-effect default btn red">Confirm</button>
					<button name = "action" class="waves-effect default btn red modal-close" style = "margin-right: 10px;">Cancel</button>
				</div>
	        </div>
	
	
	        <!-- Data Grid -->
			<div class = "col s7">
				<div class="row">
					<div id="admin" class="col s12" style="margin-top: 20px">
						<div class="z-depth-2 card material-table">
							<div class="table-header" style="background-color: #00897b;">
								<h4 style = "font-size: 30px; color: white; padding-left: 0px;">Building Data Grid</h4>
								<div class="actions">
									<a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
								</div>
							</div>
							<table id="datatable">
								<thead>
								<tr>
									<th>Building Name</th>
									<th>Building Type</th>
									<th>Building Location</th>
									<th>Action</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>Building One</td>
									<td>Type One</td>
									<td>Location One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Two</td>
									<td>Type two</td>
									<td>Location Two</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Three</td>
									<td>Type Three</td>
									<td>Location Three</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Four</td>
									<td>Type Four</td>
									<td>Location Four</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Five</td>
									<td>Type Five</td>
									<td>Location Five</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Six</td>
									<td>Type Six</td>
									<td>Location Six</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Seven</td>
									<td>Type Seven</td>
									<td>Location Seven</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Eight</td>
									<td>Type Eight</td>
									<td>Location Eight</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Nine</td>
									<td>Type Nine</td>
									<td>Location Nine</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Ten</td>
									<td>Type Ten</td>
									<td>Location Ten</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Eleven</td>
									<td>Type Eleven</td>
									<td>Location Eleven</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Twelve</td>
									<td>Type Twelve</td>
									<td>Location Twelve</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Thirteen</td>
									<td>Type Thirteen</td>
									<td>Location Thirteen</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Fourteen</td>
									<td>Type Fourteen</td>
									<td>Location Fourteen</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
				<script src='http://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js'></script>
				<script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js'></script>
				<script type="text/javascript" src = "../js/index.js"></script>
			</div>
		</div>
</div>
	    
	    
	<script>
	
		$("#formCreate").submit(function(e){
		    return false;
		});
	
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