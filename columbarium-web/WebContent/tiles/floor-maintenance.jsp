<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	<script type="text/javascript" src="<%=request.getContextPath()%>/js/Floor_Record_Form.js"></script>
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Floor_Record_Form.css"/>

    <link rel="stylesheet" href="../css/style.css">
    <script type="text/javascript" src = "../js/index.js"></script>

    <!-- Section -->
<div class = "col s12" >
    <div class = "row">
        <div class = "responsive">

        <div class = "col s5">
            <h2 style = "font-size: 30px;">Floor Maintenance</h2>


            <!-- Create Floor -->
            <form class = "col s12">
                <div class = "aside aside z-depth-3" style = "height: 380px;">
                    <div class = "responsive">
                    <div class = "header">
                        <h4 style = "font-size: 30px; margin-top: 0px; padding-top: 10px;">Floor Form</h4>
                    </div>

                        <div class="row" style = "padding-left: 10px;">
                            <h5 style = "font-family: arial;">Block size per floor:</h5>
                            <div class="input-field col s6" style = "padding-left: 10px;">
                                <input id="floorRow" type="number" class="validate" required = "" aria-required = "true" min = "1" max = "10">
                                <label for="floorRow" data-error = "1-10 only" data-success = "">Row/s:<span style = "color: red;">*</span></label>
                            </div>
                            <div class="input-field col s6">
                                <input id="floorColumn" type="number" class="validate" required = "" aria-required = "true" min = "1" max = "20">
                                <label for="floorColumn" data-error = "1-20 only" data-success = "">Column/s:<span style = "color: red">*</span></label>
                            </div>
                        </div>
                        <br>


                   <div class = "col s12">
                       <div class = "row">
						<div style = "padding-left: 10px;">
                             <div class = "col s6">
                                    <label>Select Building Name</label>
                                    <select id="selectBuildingCreate" required = "" aria-required = "true">
                                        <option value="" disabled selected>Building Name:</option>
                                        <c:if test="${buildingList != null}">
                                        	<c:forEach items="${buildingList}" var="building">
                                        		<option value="${building.buildingId}">${building.strBuildingName}</option>
                                        	</c:forEach>
                                        </c:if>
                                    </select>
                            </div>
                            <div class="input-field col s6">
                                <input id="floorPrice" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                                <label for="floorPrice" data-error = "Invalid format.">Floor Price</label>
                            </div>
                       </div>
                       </div>
                   </div>
                </div>
                <br><br><br><br><br>
						<i class = "left" style = "margin-bottom: 50px; padding-left: 20px; color: red;">*Required Fields</i>
                </div>

            </form>
     
        </div>

            <!-- Modal Update -->
            <div id="modal1" class="modal">
                <div class = "modal-header">
                    <h4>Update Floor</h4>
                </div>
                <form class="modal-content">

                        <div class="row">
                            <h5 style = "padding-left: 30px; font-family: arial;">Block size per floor:</h5>
                            <div style = "padding-left: 20px;">
                            	<div class="input-field col s6">
                                	<input id="rowUpdate" type="number" class="validate" required = "" aria-required = "true" min = "1" max = "10">
                                	<label for="rowUpdate" data-error = "*1-10 only" data-success = "">Row/s:</label>
                            	</div>
                            	<div class="input-field col s6">
                                	<input id="colUpdate" type="number" class="validate" required = "" aria-required = "true" min = "1" max = "20">
                                	<label for="colUpdate" data-error = "*1-20 only">Column/s:</label>
                            	</div>
                            </div>
                        </div>


						<div class = "col s12">
                            <div class = "row">
						        <div style = "padding-left: 20px;">
                                    <div class = "col s6">
                                        <label>Select Building Name</label>
                                        <select>
                                            <option value="" disabled selected>Building Name:</option>
                                            <option selected = "selected" value="1">Building One</option>
                                            <option value="2">Building Two</option>
                                            <option value="3">Building Three</option>
                                        </select>
                                    </div>
                                    <div class="input-field col s6">
                                        <input id="floorPriceUpdate" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                                        <label for="floorPriceUpdate" data-error = "Invalid format.">Floor Price</label>
                                    </div>
						        </div>
                            </div>
                        </div>
						
						 <br><br><br><br><br>
                <div class="modal-footer">
                    <button type = "submit" name = "action1" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                    <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
                </div>
                
                </form>
            </div>


            <!-- Modal Deactivate -->
            <div id="modal2" class="modal">
                <div class = "modal-header">
                    <h4>Deactivate Floor</h4>
                </div>
                <div class="modal-content">
                    <p style = "padding-left: 110px; font-size: 20px;">Are you sure you want to deactivate this floor?</p>
                    <br>
                </div>
                <div class="modal-footer">
                    <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                    <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
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
                                    <th>Number of Floors</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Building One</td>
                                    <td>5</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Two</td>
                                    <td>3</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Three</td>
                                    <td>6</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Four</td>
                                    <td>2</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Five</td>
                                    <td>8</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Six</td>
                                    <td>4</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Seven</td>
                                    <td>7</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Eight</td>
                                    <td>2</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Nine</td>
                                    <td>5</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Ten</td>
                                    <td>7</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Eleven</td>
                                    <td>3</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Twelve</td>
                                    <td>5</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Thirteen</td>
                                    <td>2</td>
                                    <td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
                                        <button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
                                </tr>
                                <tr>
                                    <td>Building Fourteen</td>
                                    <td>6</td>
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
	
	