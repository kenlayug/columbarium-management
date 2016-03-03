<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Floor_Record_Form.css"/>


    <link rel="stylesheet" href="../css/style.css">
    <script type="text/javascript" src = "../js/index.js"></script>

    <!-- Section -->
<div class = "col s12" >
    <div class = "row">
        <div class = "responsive">

        <div class = "col s7">
            <h2 style = "padding-left: 40px; font-size: 30px; margin-top: 0px;">Floor Maintenance</h2>

            <div class = "aside aside z-depth-3" style = "margin-left: 40px; height: 100px; width: 670px;">
                <div class = "header" style = "height: 35px; background-color: #00897b">
                    <label style = "padding-left: 10px;font-size: 23px; color: white; font-family: myFirstFont;">Legend:</label>
                </div>

                    <div class = "row">
                        <div class = "col s3">
                            <label for = "configure">Configured Floor</label><br>
                            <button id = "configure" name = "action" class="btn-floating green" style = "margin-left: 30px;"><i class="material-icons">settings</i></button>
                        </div>
                        <div class = "col s3">
                            <label for = "configure">Not yet Configured Floor</label>
                            <button id = "notConfigure" name = "action" class="btn-floating black" style = "margin-left: 30px;"><i class="material-icons">settings</i></button>
                        </div>
                        <div class = "col s3">
                            <label for = "configure">Configured Floor Price</label>
                            <button id = "configuredFloorPrice" name = "action" class="btn-floating blue" style = "margin-left: 30px;"><i class="material-icons medium">&#8369</i></button>
                        </div>
                        <div class = "s3">
                            <label for = "configure">Not yet Configured Floor Price</label>
                            <button id = "notConfiguredFloorPrice" name = "action" class="btn-floating red" style = "margin-left: 30px;"><i class="material-icons medium">&#8369</i></button>
                        </div>
                    </div>
            </div>
            <br>
            <div style = "overflow: auto;height: 370px;">
                <div class = "col s12">
                    <div class = "aside aside ">

                        <ul class="collapsible popout" data-collapsible="expandable">
                            <li>
                                <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
                                    <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building One</label>
                                </div>
                                <div class="collapsible-body">
                                    <p>Ground Floor
                                        <button name = "action" class="modal-trigger btn-floating red right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating black right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                                <div class="collapsible-body">
                                    <p>First Floor
                                        <button name = "action" class="modal-trigger btn-floating blue right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating black right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                   </p>
                                </div>
                            </li>
                            <li>
                                <div class="collapsible-header" style = "background-color: #00897b"><i class="material-icons">business</i>
                                    <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building Two</label>
                                </div>
                                <div class="collapsible-body">
                                    <p>Ground Floor
                                        <button name = "action" class="modal-trigger btn-floating red right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating green right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                                <div class="collapsible-body">
                                    <p>First Floor
                                        <button name = "action" class="modal-trigger btn-floating red right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating black right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                                <div class="collapsible-body">
                                    <p>Second Floor
                                        <button name = "action" class="modal-trigger btn-floating blue right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating black right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="collapsible-header" style = "background-color: #00897b"><i class="material-icons">business</i>
                                    <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building Three</label>
                                </div>
                                <div class="collapsible-body">
                                    <p>Ground Floor
                                        <button name = "action" class="modal-trigger btn-floating blue right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating black right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                                <div class="collapsible-body">
                                    <p>First Floor
                                        <button name = "action" class="modal-trigger btn-floating red right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating black right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="collapsible-header" style = "background-color: #00897b"><i class="material-icons">business</i>
                                    <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building Four</label>
                                </div>
                                <div class="collapsible-body">
                                    <p>Ground Floor
                                        <button name = "action" class="modal-trigger btn-floating blue right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating green right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                                <div class="collapsible-body">
                                    <p>First Floor
                                        <button name = "action" class="modal-trigger btn-floating red right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating black right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="collapsible-header" style = "background-color: #00897b"><i class="material-icons">business</i>
                                    <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building Five</label>
                                </div>
                                <div class="collapsible-body">
                                    <p>Ground Floor
                                        <button name = "action" class="modal-trigger btn-floating red right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating black right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                                <div class="collapsible-body">
                                    <p>First Floor
                                        <button name = "action" class="modal-trigger btn-floating red right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating green right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="collapsible-header" style = "background-color: #00897b"><i class="material-icons">business</i>
                                    <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building Six</label>
                                </div>
                                <div class="collapsible-body">
                                    <p>Ground Floor
                                        <button name = "action" class="modal-trigger btn-floating blue right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating green right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="collapsible-header" style = "background-color: #00897b"><i class="material-icons">business</i>
                                    <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building Seven</label>
                                </div>
                                <div class="collapsible-body">
                                    <p>Ground Floor
                                        <button name = "action" class="modal-trigger btn-floating blue right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating black right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                                <div class="collapsible-body">
                                    <p>First Floor
                                        <button name = "action" class="modal-trigger btn-floating red right" style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
                                        <button name = "action" class="modal-trigger btn-floating black right" style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


            <!-- Modal Configure -->
            <div id="modalConfigure" class="modal">
                <div class = "modal-header">
                    <h4>Floor Configuration</h4>
                </div>

                <div class = "col s12">
                    <div class = "row">
                        <br>
                        <!-- Select Floor Type -->
                        <div class="input-field col s6" style = "padding-left: 40px;">
                                <select>
                                        <option value="" disabled selected>Floor Type:</option>
                                        <option value="1">Type One</option>
                                        <option value="2">Type Two</option>
                                        <option value="3">Type Three</option>
                                </select>
                                        <label style = "padding-left: 30px;">Select Floor Type:</label>
                         </div>
                         <div class = "col s6">
                             <button name = "action" class="modal-trigger red waves-effect waves-light btn" style = "margin-left: 120px;" href = "#modalNewFloorType">New Floor Type</button>
                         </div>
                    </div>
                </div>

                <div class="modal-content">
                    <div class="row" style = "padding-left: 20px;">
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
                </div>


                <!-- Checkbox -->
             <form class = "col s12">
                 <div class = "row">
                     <div class = "col s6">
                    <div style = "padding-left: 30px;">
                        <label for = "unit" style = "font-size: 20px; color: black;">Is this a unit?</label>
                        <form action="#">
                            <p>
                                <input type="checkbox" id="unit"/>
                                <label for="unit">Yes</label>
                            </p>
                        </form>
                    </div>
                     </div>
                     <div class = "col s6">
                         <!-- Radio Button -->
                         <div style = "padding-left: 0px;">
                             <label style = "font-size: 20px; color: black;">Unit Type</label>
                             <form action="#">
                                 <p>
                                     <input name="group1" type="radio" id="columbaryVault" checked = "checked" disabled/>
                                     <label for="columbaryVault">Columbary Vault</label>
                                 </p>
                                 <p>
                                     <input name="group1" type="radio" id="fullBody" disabled/>
                                     <label for="fullBody">Full Body</label>
                                 </p>
                             </form>
                         </div>
                     </div>
                 </div>
             </form>
                <br><br>




                <div class="modal-footer">
                    <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                    <button name = "action" class="waves-effect waves-light btn red modal-close">Cancel</button>
                </div>
            </div>

            <!-- Modal New Floor Type -->
            <div id="modalNewFloorType" class="modal">
                <div class = "modal-header">
                    <h4>Create Floor Type</h4>
                </div>
                <div class="modal-content">
                    <div class = "col s12">
                        <div class = "row">
                            <div style = "padding-left: 10px;">

                                <div class="input-field col s6">
                                    <input id="newFloorType" type="text" class="validate" required = "" aria-required = "true">
                                    <label for="newFloorType" data-error = "Invalid format." data-success = "">Floor Type Name <span style = "color: red;">*</span></label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div style = "padding-left: 20px;">
                        <div class="input-field col s12">
                            <input id="newFloorDescription" type="text" class="validate" required = "" aria-required = "true">
                            <label for="newFloorDescription" data-error = "Invalid format." data-success = "">Floor Description<span style = "color: red;">*</span></label>
                        </div>
                    </div>
                    <br><br><br>

                </div>
                <div class="modal-footer">
                    <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                    <button name = "action" class="waves-effect waves-light btn red modal-close">Cancel</button>
                </div>
            </div>

            <!-- Modal Price -->
            <div id="modalPrice" class="modal">
                <div class = "modal-header">
                    <h4>Floor Price</h4>
                </div>
                <div class="modal-content">
                    <div class = "col s12">
                        <div class = "row">
                            <div style = "padding-left: 10px;">
                                <div class="input-field col s6">
                                    <input id="floorPriceA" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                                    <label for="floorPriceA" data-error = "Invalid format.">Level A</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="floorPriceB" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                                    <label for="floorPriceB" data-error = "Invalid format.">Level B</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class = "col s12">
                        <div class = "row">
                            <div style = "padding-left: 10px;">
                                <div class="input-field col s6">
                                    <input id="floorPriceC" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                                    <label for="floorPriceC" data-error = "Invalid format.">Level C</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="floorPriceD" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                                    <label for="floorPriceD" data-error = "Invalid format.">Level D</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class = "col s12">
                        <div class = "row">
                            <div style = "padding-left: 10px;">
                                <div class="input-field col s6">
                                    <input id="floorPriceE" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                                    <label for="floorPriceE" data-error = "Invalid format.">Level E</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="floorPriceF" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                                    <label for="floorPriceF" data-error = "Invalid format.">Level F</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class = "col s12">
                        <div class = "row">
                            <div style = "padding-left: 10px;">
                                <div class="input-field col s6">
                                    <input id="floorPriceG" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                                    <label for="floorPriceG" data-error = "Invalid format.">Level G</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="floorPriceH" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                                    <label for="floorPriceH" data-error = "Invalid format.">Level H</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                    <button name = "action" class="waves-effect waves-light btn red modal-close">Cancel</button>
                </div>
            </div>


            <!-- Data Grid -->
            <div class = "col s5">
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
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Building One</td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>Building Two</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <td>Building Three</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Building Four</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td>Building Five</td>
                                    <td>8</td>
                                </tr>
                                <tr>
                                    <td>Building Six</td>
                                    <td>4</td>
                                </tr>
                                <tr>
                                    <td>Building Seven</td>
                                    <td>7</td>
                                </tr>
                                <tr>
                                    <td>Building Eight</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td>Building Nine</td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>Building Ten</td>
                                    <td>7</td>
                                </tr>
                                <tr>
                                    <td>Building Eleven</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <td>Building Twelve</td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>Building Thirteen</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td>Building Fourteen</td>
                                    <td>6</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js'></script>


                <script src='http://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js'></script>
                <script type="text/javascript" src = "../js/index.js"></script>
                <script type="text/javascript" src = "../js/Floor_Record_Form.js"></script>
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

