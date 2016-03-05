<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Requirements_Maintenance.css"/>

	<link rel="stylesheet" href="../css/style.css">
	<script type="text/javascript" src = "../js/index.js"></script>


<div class = "responsive col s12">
	    <div class = "row">
	        <div class = "col s5">
	            <h2 style = "font-size: 30px;">Requirement Maintenance</h2>

	            <!-- Create Requirement -->
	            <div class = "col s12">
	                <form class = "wrapper responsive aside aside z-depth-2" id="formCreate">
	                    <div class = "header">
	                        <h4 style = "stroke: black; stroke-width: 10px; font-size: 30px; padding-top: 10px; margin-top: 0px;">Requirement Form</h4>
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
					
						<i class = "left" style = "margin-bottom: 50px; padding-left: 20px; color: red;">*Required Fields</i>

						<button type = "submit" name = "action" class="btn red right" style = "margin-right: 10px;">Create</button>
	                </form>
	
	            </div>
	        </div>
	
	        <!-- Modal Update -->
	        <div id="modalUpdateRequirement" class="modal" style = "width: 600px;">
	            <div class = "modal-header" style = "height: 55px; margin-bottom: 0px;">
	                <h4 style = "font-size: 30px; padding-left: 20px;">Update Requirement</h4>
	            </div>
	            <form class="modal-content">
	
	                <div style = "padding-left: 10px;" id="formUpdate">
	                <div class = "col s6">
	                    <div class="input-field col s12">
	                        <input id="requirementNameUpdate" type="text" class="validate" required = "" aria-required = "true">
	                        <label for="requirementNameUpdate">New Requirement Name<span style = "color: red;">*</span></label>
	                    </div>
	                </div>
	
	                <div class = "col s12">
	                    <div class="input-field col s12">
	                        <input id="requirementDescUpdate" type="text" class="validate">
	                        <label for="requirementDescUpdate">New Requirement Description</label>
	                    </div>
	                </div>
	                </div>
					<i class = "left" style = "margin-bottom: 50px; padding-left: 30px; color: red;">*Required Fields</i>
					<br><br>

						<div class="modal-footer">
							<button type = "submit" onclick="updateRequirement()" name = "action" class="waves-effect waves-light btn red bottom" style = "margin-top: 30px; margin-left: 10px; ">Confirm</button>
							<button name = "action" class="modal-close btn red modal-close bottom" style = "margin-top: 30px;">Cancel</button>
						</div>
	            </form>


	        </div>

			<!-- Modal Deactivate -->
			<div id="modalDeactivateRequirement" class="modal" style = "width: 500px;">
				<div class = "modal-header" style = "height: 55px;">
					<h4 style = "font-size: 30px;">Deactivate Requirement</h4>
				</div>
				<div class="modal-content">
					<p style = "padding-left: 90px; font-size: 15px;">Are you sure you want to deactivate this item?</p>
				</div>

				<div class="modal-footer">
					<button onclick="deactivateItem()" name = "action" class="btn red" style = "margin-left: 10px; ">Confirm</button>
					<button class="btn red modal-close">Cancel</button>
				</div>
			</div>

<!--ganto ung declaration sa btn ken	<button class="modal-trigger btn red" href = "#modalSuccessMessage">btnSuccess</button>    -->
			<!-- Modal Success -->
			<div id="modalSuccessMessage" class="modal" style = "width: 350px; height: 155px;">
				<div class = "modal-header" style = "height: 50px;">
					<div class = "row">
						<div class = "col s10">
							<h4 style = "padding-left: 10px; font-size: 25px;">Success Message</h4>
						</div>
						<div class = "col s2">
							<a class="btn-floating btn-small modal-close black right" style = "margin-top: 5px; margin-right: 5px; padding-bottom: 10px;"><i class="material-icons" style = "padding-bottom: 5px;">&#10006</i></a>
						</div>
					</div>
				</div>
				<div class="modal-content">
					<p style = "padding-top: 0px; padding-left: 50px; font-size: 16px; font-family: arial;">Record has been saved.</p>
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
									<th>Requirement Name</th>
									<th>Requirement Description</th>
									<th>Action</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Requirement One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdateRequirement"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateRequirement"><i class="material-icons">delete</i></button></td>
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
				<script type="text/javascript" src = "../js/Requirements_Maintenance.js"></script>
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