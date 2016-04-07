
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Requirements_Maintenance.css"/>

	<link rel="stylesheet" href="../css/style.css">



	<!-- Section -->
	<div class = "parent" style = "display: flex; flex-wrap: wrap; flex-direction: column;">
		<div class = "row">
			<div class = "col s4">
				<div id="alertDiv">

				</div>
				<!-- Create Requirement -->
				<div class = "col s12">
					<form class = "aside aside z-depth-3" style = "margin-top: 20px; height: 360px; margin-left: 30px;" id="formCreate">
						<div class = "header">
							<h4 style = "font-family: myFirstFont2; font-size: 25px;padding-top: 10px; margin-top: 10px;">Requirement Maintenance</h4>
						</div>
						<div class="row" style = "padding-left: 10px;" id = "formCreate">
							<div class="input-field col s6">
								<input id="requirementName" type="text" class="validate" required = "" aria-required = "true" minlength = "1" maxlength="20" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,20}">
								<label for="requirementName">Requirement Name<span style = "color: red;">*</span></label>
							</div>
						</div>
						<div class="row" style = "padding-left: 10px;">
							<div class="input-field col s12">
								<input id="requirementDesc" type="text" class="validate" >
								<label for="requirementDesc">Requirement Description</label>
							</div>
						</div>

						<i class = "left" style = "margin-bottom: 50px; padding-left: 20px; color: red;">*Required Fields</i>
						<br>
						<button onClick = "createRequirement()" type = "submit" name = "action" class="btn light-green right" style = "color: black; margin-top: 30px; margin-right: 10px;">Create</button>

					</form>

				</div>
			</div>

	
	        <!-- Modal Update -->
	        <div id="modalUpdateRequirement" class="modal" style = "width: 600px;">
	            <div class = "modal-header" style = "height: 55px; margin-bottom: 0px;">
	                <h4 style = "font-family: myFirstFont2; font-size: 30px; padding-left: 20px;">Update Requirement</h4>
	            </div>
	            <form class="modal-content" id="formUpdate">

					<div class="row">
						<div class="input-field col s6">
							<input id="requirementToBeUpdated" type="hidden"/>
							<input placeholder = "Requirement Name" id="requirementNameUpdate" type="text" class="validate" required = "" aria-required = "true" minlength = "1" maxlength="20" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,20}">
							<label class = "active" for="requirementNameUpdate">New Requirement Name<span style = "color: red;">*</span></label>
						</div>
					</div>

					<div class="row">
						<div class="input-field col s12">
							<input placeholder = "Requirement Description" id="requirementDescUpdate" type="text" class="validate">
							<label for="requirementNameUpdate">New Requirement Description</label>
						</div>
					</div>

					<i class = "left" style = "margin-bottom: 50px; padding-left: 10px; color: red;">*Required Fields</i>
					<br>

						<div class="modal-footer">
							<button type = "submit" onclick="updateRequirement()" name = "action" class="btn light-green bottom" style = "color: black; margin-top: 30px; margin-left: 10px; ">Confirm</button>
							<button name = "action" class="btn light-green modal-close bottom" style = "color: black; margin-top: 30px;">Cancel</button>
						</div>
	            </form>


	        </div>

			<!-- Modal Deactivate -->
			<div id="modalDeactivateRequirement" class="modal" style = "width: 450px;">
				<div class = "modal-header" style = "height: 55px;">
					<h4 style = "padding-left: 20px; font-size: 30px;">Deactivate Requirement</h4>
				</div>
				<div class="modal-content">
					<p style = "padding-left: 20px; font-size: 15px;">Are you sure you want to deactivate this requirement?</p>
				</div>
					<input id="requirementToBeDeactivated" type="hidden">
				<div class="modal-footer">
					<button onclick="deactivateRequirement()" name = "action" class="btn light-green" style = "color: black; margin-left: 10px; ">Confirm</button>
					<button class="btn light-green modal-close" style = "color: black;">Cancel</button>
				</div>
			</div>


			<!-- Modal Archive Requirement-->
			<div id="modalArchiveRequirement" class="modal" style = "height: 400px; width: 600px;">
				<div class="modal-content">
					<!-- Data Grid Deactivated Requirement/s-->
					<div id="admin1" class="col s12" style="margin-top: 0px">
						<div class="z-depth-2 card material-table" style="margin-top: 0px">
							<div class="table-header" style="height: 45px; background-color: #00897b;">
								<h4 style = "font-family: myFirstFont2; padding-top: 10px; font-size: 30px; color: white; padding-left: 0px;">Archive Requirement/s</h4>
								<a href="#" class="search-toggle btn-flat right"><i class="material-icons right" style="margin-left: 60px; color: #ffffff;">search</i></a>
							</div>
							<table id="datatable2">
								<thead>
								<tr>
									<th>Name</th>
									<th>Action</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>Requirement One</td>
									<td>
										<button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Requirement Two</td>
									<td>
										<button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Requirement Three</td>
									<td>
										<button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Requirement Three</td>
									<td>
										<button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Requirement Four</td>
									<td>
										<button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Requirement Five</td>
									<td>
										<button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Requirement Six</td>
									<td>
										<button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
									</td>
								</tr>
								<tr>
									<td>Requirement Seven</td>
									<td>
										<button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
									</td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<button name = "action" class="btn light-green modal-close right" style = "color: black; margin-bottom: 10px; margin-right: 30px;">DONE</button>
			</div>


			<!-- Data Grid -->
			<div class = "col s7" style = "margin-top: 20px; margin-left: 50px;">
				<div class="row">
					<div id="admin">
						<div class="z-depth-2 card material-table">
							<div class="table-header" style="background-color: #00897b;">
								<h4 style = "font-family: myFirstFont2; font-size: 30px; color: white; padding-left: 0px;">Requirement Record</h4>
								<div class="actions">
									<button name = "action" class="btn tooltipped modal-trigger btn-floating light-green" data-position = "bottom" data-delay = "30" data-tooltip = "Deactivated Requirement/s" style = "margin-right: 10px;" href = "#modalArchiveRequirement"><i class="material-icons" style = "color: black;">delete</i></button>
									<a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
								</div>
							</div>
							<table id="datatable">
								<thead>
								<tr>
									<th>Requirement Name</th>
									<th>Requirement Description</th>
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
	
	<script>
	$(document).ready(function() {
	    $('select').material_select();
	});
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
	function createRequirement(){
		var requirementName = document.getElementById("requirementName").value;
		var requirementDesc = document.getElementById("requirementDesc").value;
		if (requirementName == null || requirementName == "" || requirementName == " "){
			
		}else{
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
						Materialize.toast('Requirement successfully saved.', 3000, 'rounded');
						updateTable();
						$("#requirementName").val("");
						$("#requirementDesc").val("");
					}else if (data.status === "failed-input"){
						Materialize.toast('Please check all your inputs.', 3000, 'rounded');
					}else if (data.status === "failed-existing"){
						Materialize.toast('Requirement already exists.', 3000, 'rounded');
					}else if(data.status === "failed-database"){
						Materialize.toast('Please check your connection.', 3000, 'rounded');
					}
				},
				error: function(data){
					Materialize.toast('Error occured.', 3000, 'rounded');
				}
			});
			
		}
	}//createRequirement
	function updateRequirement(){
		var selectRequirementUpdate = document.getElementById("requirementToBeUpdated").value;
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
				if (data.status === "success"){
					Materialize.toast('Requirement is successfully updated.', 3000, 'rounded');
					updateTable();
	        		$('#modalUpdateRequirement').closeModal();
	        		$("#requirementNameUpdate").val("");
	        		$("#requirementDescUpdate").val("");
				}else if (data.status === "failed-does-not-exist"){
					Materialize.toast('Requirement does not exist.', 3000, 'rounded');
				}else if (data.status === "failed-input"){
					Materialize.toast('Please check all your inputs.', 3000, 'rounded');
				}else if (data.status === "failed-database"){
					Materialize.toast('Please check your connection.', 3000, 'rounded');
				}
			},
			error: function(data){
				Materialize.toast('Error occured.', 3000, 'rounded');
			}
		});
	}
	function deactivateRequirement(){
		var deactivateRequirementName = document.getElementById("requirementToBeDeactivated").value;
		Materialize.toast(deactivateRequirementName, 3000, 'rounded');
		$.ajax({
			type: "POST",
			url: "deactivate",
			data: {
				"requirementId" : deactivateRequirementName
			},
			dataType: "json",
			async: true,
			success: function(data){
				if (data.status === "success"){
					Materialize.toast('Requirement is successfully deactivated.', 3000, 'rounded');
					updateTable();
	        		$("#modalDeactivateRequirement").closeModal();
				}else if (data.status === "failed-does-not-exist"){
					Materialize.toast('Requirement does not exist.', 3000, 'rounded');
				}else if (data.status === "failed-database"){
					Materialize.toast('Please check your connection.', 3000, 'rounded');
				}
			},
			error: function(data){
				Materialize.toast('Error occured.', 3000, 'rounded');
			}
		});
	}
	window.onload = updateTable;
	
	function updateTable(){
		$.ajax({
			type: "POST",
			url: "getAllRequirement",
			dataType: "json",
			async: true,
			success: function(data){
    			Materialize.toast('Updating table...', 3000, 'rounded');
				var table = $('#datatable').DataTable();
        		table.clear().draw();
        		var requirementList = data.requirementList;
        	
        		$.each(requirementList, function(i, requirement){
        			var addButtons = "<button name = action class= 'modal-trigger btn-floating light-green' onclick = openUpdate(this.value) value = "+requirement.requirementId+" ><i class= material-icons  style = 'color: black;' >mode_edit</i></button>"+
        			"<button name = action class= 'modal-trigger btn-floating light-green' style = 'margin-left: 5px;' onclick = openDeactivate(this.value) value = "+requirement.requirementId+" ><i class= material-icons style = 'color: black;' >not_interested</i></button></td>";
        			
        			
        			table.row.add( [
    	        		            requirement.strRequirementName,
    	        		            requirement.strRequirementDesc,
    	        		            addButtons
    	        		            ]);
        		});
        		
        		table.draw();
			},
			error: function(data){
				Materialize.toast('Error in updating table.', 3000, 'rounded');
			}
		});
	}//updateTable
	
	function openUpdate(requirementId){
		
		$.ajax({
			type: "POST",
			url: "read",
			data: {
				"requirementId" : requirementId
			},
			dataType: "json",
			async: true,
			success: function(data){
				if (data.requirement != null){
					$('#modalUpdateRequirement').openModal();
					$('#requirementToBeUpdated').val(data.requirement.strRequirementName);
					$('#requirementNameUpdate').val(data.requirement.strRequirementName);
					$('#requirementDescUpdate').val(data.requirement.strRequirementDesc);
					
				}
			},
			error: function(data){
				Materialize.toast('Error occured.', 3000, 'rounded');
			}
			
		});
		
	}
	
	function openDeactivate(serviceId){
		$('#requirementToBeDeactivated').val(serviceId);
		$('#modalDeactivateRequirement').openModal();
		
	}
	
	</script>