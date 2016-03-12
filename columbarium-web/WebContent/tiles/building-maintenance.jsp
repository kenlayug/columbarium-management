<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	<link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Building_Record_Form.css"/>

	<link rel="stylesheet" href="../css/style.css">
	<script type="text/javascript" src = "../js/index.js"></script>

    <!-- Section -->
		<div class = "s12">
	    <div class = "row">
	        <div class = "col s5">
	
	            <!-- Create Building -->
	            <form class = "col s12" id="formCreate">
	                <div class = "aside aside z-depth-3" style = "height: 400px;">
	                    <div class = "header">
<<<<<<< HEAD
	                        <h4 style = "font-size: 30px; margin-top: 0px; padding-top: 10px;">Building Form</h4>
=======
	                        <h4 style = "font-size: 30px; margin-top: 0px; padding-top: 10px;">Building Maintenance</h4>
>>>>>>> 00daac307aa3207b9c3fd4d80632c54b6f9d35b0
	                    </div>
	
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
								<input id="floorNumber" type="number" onkeypress = 'return isNumberKey(event)' class="validate" required = "" aria-required = "true" min = "1" max = "10">
								<label for="floorNumber" data-error = "Invalid format." data-success = "">Number of floor/s to create: <span style = "color: red;">*</span></label>
							</div>
						</div>


						<br><br><br><br>
						<i class = "left" style = "margin-top: 10px; margin-bottom: 50px; padding-left: 20px; color: red;">*Required Fields</i>
						<br><br><br>
						<button onclick = "createBuilding()" type = "submit" name = "action" class="btn red right" style = "margin-top: 30px; margin-right: 10px;">Create</button>
	                </div>
	            </form>
	        </div>
	
	        <!-- Modal Update -->
	        <div id="modalUpdateBuilding" class="modal" style = "width: 550px; height: 400px;">
	            <div class = "modal-header" style = "height: 55px;">
	                <h4 style = "font-size: 30px; padding-left: 20px;">Update Building</h4>
	            </div>
	            <div class="modal-content" id="formUpdate">
						<br>
	                    <form class="row"  style = "padding-left: 20px;">
	                        <div class="input-field col s12">
	                       		<input id="buildingToBeUpdated" type="hidden">
	                            <input placeholder = "Building Name" id="buildingNameUpdate" type="text" class="validate"  required = "" aria-required = "true">
	                            <label class = "active" for="buildingNameUpdate" data-error = "Invalid format." data-success = "">New Building Name <span style = "color: red;">*</span></label>
	                        </div>
	                        <div class="input-field col s12">
	                            <input placeholder = "Building Name" id="buildingAddressUpdate" type="text" class="validate"  required = "" aria-required = "true">
	                            <label for="buildingAddressUpdate" data-error = "Invalid Format." data-success = "">New Building Address <span style = "color: red;">*</span></label>
	                        </div>
							<i class = "left" style = "margin-top: 10px; padding-left: 10px; color: red;">*Required Fields</i>
							<div class="modal-footer">
								<div style = "margin-top: 0px; margin-bottom: 0px;">
							<button onclick="updateBuilding()" name = "action" type = "submit" class="btn red" style = "margin-bottom: 0px; margin-top: 65px;margin-left: 10px; ">Confirm</button>
	                    </form>
	                       		 <button name = "action" class="btn red modal-close" style = "margin-top: 65px; margin-bottom: 0px;">Cancel</button>
							</div>
	                    </div>
	            </div>
	        </div>
	
	
	
	        <!-- Modal Deactivate -->
	        <div id="modalDeactivateBuilding" class="modal" style = "width: 450px;">
	            <div class = "modal-header" style = "height: 55px;">
	                <h4 style = "font-size: 30px; padding-left: 20px;">Deactivate Building</h4>
	            </div>
	            <input id="buildingToBeDeactivated" type="hidden">
	            <div class="modal-content">
						<p style = "padding-left: 30px; font-size: 15px;">Are you sure you want to deactivate this building?</p>
						<br>
	            </div>
				<div class="modal-footer" style = "margin-bottom: 0px;">
					<button onclick="deactivateBuilding()" name = "action" class="waves-effect default btn red">Confirm</button>
					<button name = "action" class="waves-effect default btn red modal-close" style = "margin-right: 10px;">Cancel</button>
				</div>
	        </div>

			<!-- Modal List of Deactivated Building -->
			<div id="modalListOfDeactivatedBuilding" class="modal" style = "height: 1200px; width: 600px;">
				<div class="modal-content">
					<!-- Data Grid Deactivated Building/s-->
					<div id="admin2" class="col s12" style="margin-top: 0px">
						<div class="z-depth-2 card material-table" style="margin-top: 0px">
							<div class="table-header" style="height: 55px; background-color: #00897b;">
								<h4 style = "padding-top: 10px; font-size: 30px; color: white; padding-left: 0px;">Deactivated Building/s</h4>
							</div>
							<table id="datatable2">
								<thead>
								<tr>
									<th>Building Name</th>
									<th>Action</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>Building One</td>
									<td>
										<button name = "action" class="btn red modal-close">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Building Two</td>
									<td>
										<button name = "action" class="btn red modal-close">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Building Three</td>
									<td>
										<button name = "action" class="btn red modal-close">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Building Three</td>
									<td>
										<button name = "action" class="btn red modal-close">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Building Four</td>
									<td>
										<button name = "action" class="btn red modal-close">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Building Five</td>
									<td>
										<button name = "action" class="btn red modal-close">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Building Six</td>
									<td>
										<button name = "action" class="btn red modal-close">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Building Seven</td>
									<td>
										<button name = "action" class="btn red modal-close">Activate</button>
									</td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<button name = "action" class="btn red modal-close right" style = "margin-bottom: 10px; margin-right: 30px;">DONE</button>
			</div>

	
	        <!-- Data Grid -->
			<div class = "col s7">
				<div class="row">
					<div id="admin" class="col s12" style="margin-top: 20px">
						<div class="z-depth-2 card material-table">
							<div class="table-header" style="background-color: #00897b;">
								<h4 style = "font-size: 30px; color: white; padding-left: 0px;">Building Data Grid</h4>
								<div class="actions">
									<button name = "action" class="modal-trigger btn-floating black" style = "margin-right: 10px;" href = "#modalListOfDeactivatedBuilding"><i class="material-icons" style = "color: white">delete</i></button>
									<a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
								</div>
							</div>
							<table id="datatable">
								<thead>
								<tr>
									<th>Building Name</th>
									<th>Building Location</th>
									<th>No. of Floor/s</th>
									<th>Action</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>Building One</td>
									<td>Type One</td>
									<td>Location One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Two</td>
									<td>Type two</td>
									<td>Location Two</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Three</td>
									<td>Type Three</td>
									<td>Location Three</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Four</td>
									<td>Type Four</td>
									<td>Location Four</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Five</td>
									<td>Type Five</td>
									<td>Location Five</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Six</td>
									<td>Type Six</td>
									<td>Location Six</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Seven</td>
									<td>Type Seven</td>
									<td>Location Seven</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Eight</td>
									<td>Type Eight</td>
									<td>Location Eight</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Nine</td>
									<td>Type Nine</td>
									<td>Location Nine</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Ten</td>
									<td>Type Ten</td>
									<td>Location Ten</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Eleven</td>
									<td>Type Eleven</td>
									<td>Location Eleven</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Twelve</td>
									<td>Type Twelve</td>
									<td>Location Twelve</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Thirteen</td>
									<td>Type Thirteen</td>
									<td>Location Thirteen</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Building Fourteen</td>
									<td>Type Fourteen</td>
									<td>Location Fourteen</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateBuilding"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateBuilding"><i class="material-icons">delete</i></button></td>
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

		function isNumberKey(evt){
			var charCode = (evt.which) ? evt.which : event.keyCode;
			var num = document.getElementById('floorNumber').value;
			if ((charCode > 31 && (charCode < 48 || charCode > 57)) || (num > 10)){
				if (num > 10){
					alert('choose number from 1-10');
				}
				return false;
			}else{
				return true;
			}
		}


		$('.modal-trigger').leanModal({
					dismissible: false
				}
		);
	
		$("#formCreate").submit(function(e){
		    return false;
		});
		
		$('#formUpdate').submit(function(e){
			return false;
		});
		
		window.onload = updateTable;
	
		function createBuilding(){
			
			var buildingName = document.getElementById("buildingName").value;
			var buildingAddress = document.getElementById("buildingAddress").value;
			var noOfFloors = document.getElementById("floorNumber").value;
			if (buildingName == null || buildingName == "" || buildingName == " " ||
					buildingAddress == null || buildingAddress == "" || buildingAddress == " " ||
					noOfFloors == 0 || noOfFloors == null){

			}else{
				$.ajax({
					type: "POST",
					url: "create",
					data: {
						"building.strBuildingName" : buildingName,
						"building.strBuildingLocation" : buildingAddress,
						"building.intNoOfFloors" : noOfFloors
					},
					dataType: "json",
					async: true,
					success: function(data){
						if (data.status === "success"){
							Materialize.toast('Building is successfully created.', 3000, 'rounded');
							updateTable();
						}else if (data.status === "input"){
							Materialize.toast('Please check all your inputs.', 3000, 'rounded');
						}else if (data.status === "failed-existing"){
							Materialize.toast('Building already exists.', 3000, 'rounded');
						}else if (data.status === "failed-database"){
							Materialize.toast('Please check your connection.', 3000, 'rounded');
						}
					},
					error: function(data){
						Materialize.toast('Error occured.', 3000, 'rounded');
					}
				});
			}
			
		}
		
		function updateBuilding(){
			
			var buildingToBeUpdated = document.getElementById("buildingToBeUpdated").value;
			var buildingNameUpdate = document.getElementById("buildingNameUpdate").value;
			var buildingAddressUpdate = document.getElementById("buildingAddressUpdate").value;
			
			if (buildingNameUpdate == null || buildingNameUpdate == "" || buildingNameUpdate == " " ||
					buildingAddressUpdate == null || buildingAddressUpdate == "" || buildingAddressUpdate == " "){
				
			}else{
				Materialize.toast('Updating...', 3000, 'rounded');
				$.ajax({
					type: "POST",
					url: "update",
					data: {
						"strBuildingName" : buildingToBeUpdated,
						"building.strBuildingName" : buildingNameUpdate,
						"building.strBuildingLocation" : buildingAddressUpdate
					},
					dataType: "json",
					async: true,
					success: function(data){
						Materialize.toast(data.status, 3000, 'rounded');
						if (data.status === "success"){
							Materialize.toast('Building is successfully updated.', 3000, 'rounded');
							updateTable();
							$('#modalUpdateBuilding').closeModal();
						}else if (data.status === "input"){
							Materialize.toast('Please check all your inputs.', 3000, 'rounded');
						}else if (data.status === "failed-does-not-exist"){
							Materialize.toast('Building does not exist.', 3000, 'rounded');
						}else if (data.status === "failed-database"){
							Materialize.toast('Please check your connection.', 3000, 'rounded');
						}
					},
					error: function(data){
						Materialize.toast('Error occured.', 3000, 'rounded');
					}
				});
				
			}
			
		}
		
		function deactivateBuilding(){
			
			var buildingToBeDeactivated = document.getElementById("buildingToBeDeactivated").value;
			
			$.ajax({
				type: "POST",
				url: "deactivate",
				data: {
					"buildingId" : buildingToBeDeactivated
				},
				dataType: "json",
				async: true,
				success: function(data){
					if (data.status === "success"){
						Materialize.toast('Building is successfully deactivated.', 3000, 'rounded');
						$('#modalDeactivateBuilding').closeModal();
						updateTable();
					}else if(data.status === "failed-does-not-exist"){
						Materialize.toast('Building does not exist.', 3000, 'rounded');
					}else if(data.status === "failed-database"){
						Materialize.toast('Please check your connection.', 3000, 'rounded');
					}
				},
				error: function(data){
					Materialize.toast('Error occured.', 3000, 'rounded');
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
					if (buildingList != null){
						Materialize.toast('Updating table...', 3000, 'rounded');
						var table = $('#datatable').DataTable();
		        		table.clear().draw();
		        	
		        		$.each(buildingList, function(i, building){
		        			var addButtons = "<button name = action class= 'modal-trigger btn-floating green' onclick = openUpdate(this.value) value = "+building.buildingId+" ><i class= material-icons >mode_edit</i></button>"+
		        			"<button name = action class= 'modal-trigger btn-floating red' onclick = openDeactivate(this.value) value = "+building.buildingId+" ><i class= material-icons >delete</i></button></td>";
		        			
		        			
		        			table.row.add( [
		    	        		            building.strBuildingName,
		    	        		            building.strBuildingLocation,
		    	        		            building.intNoOfFloors,
		    	        		            addButtons
		    	        		            ]);
		        		});
		        		
		        		table.draw();
					}
				},
				error: function(data){
					Materialize.toast('Error occured.', 3000, 'rounded');
				}
			});
			
		}
		
		function openUpdate(buildingId){
			
			$.ajax({
				type : "POST",
				url : "getBuilding",
				data : {
					"buildingId" : buildingId
				},
				async: true,
				dataType: "json",
				success: function(data){
					if (data.building != null){
						$('#modalUpdateBuilding').openModal();
						$('#buildingToBeUpdated').val(data.building.strBuildingName);
						$('#buildingNameUpdate').val(data.building.strBuildingName);
						$('#buildingAddressUpdate').val(data.building.strBuildingLocation);
					}else{
						Materialize.toast('Building does not exist.', 3000, 'rounded');
					}
				},
				error: function(data){
					Materialize.toast('Error occured.', 3000, 'rounded');
				}
			});
			
		}
		
		function openDeactivate(buildingId){
			$('#buildingToBeDeactivated').val(buildingId);
			$('#modalDeactivateBuilding').openModal();
		}
	
	</script>