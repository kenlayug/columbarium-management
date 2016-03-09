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

        <div class = "col s5">
            <h2 style = "padding-left: 40px; font-size: 30px; margin-top: 0px;">Floor Maintenance</h2>

            <div class = "row">
            <div class = "col s11">
            <div class = "aside aside z-depth-3" style = "margin-left: 25px; height: 100px; width: 450px;">
                <div class = "header" style = "height: 35px; background-color: #00897b">
                    <label style = "padding-left: 10px;font-size: 23px; color: white; font-family: myFirstFont;">Legend:</label>
                </div>

                    <div class = "row" style = "margin-top: 10px;">
                        <div class = "col s3">
                            <button id = "configure" name = "action" class="btn tooltipped btn-floating green" data-position = "bottom" data-delay = "25" data-tooltip = "Configured Floor" style = "margin-left: 30px;"><i class="material-icons">settings</i></button>
                        </div>
                        <div class = "col s3">
                            <button id = "notConfigure" name = "action" class="btn tooltipped btn-floating black" data-position = "bottom" data-delay = "25" data-tooltip = "Not yet Configured Floor" style = "margin-left: 30px;"><i class="material-icons">settings</i></button>
                        </div>
                        <div class = "col s3">
                            <button id = "configuredFloorPrice" name = "action" class="btn tooltipped btn-floating blue" data-position = "bottom" data-delay = "25" data-tooltip = "Configured Floor Price" style = "margin-left: 30px;"><i class="material-icons medium">&#8369</i></button>
                        </div>
                        <div class = "s3">
                            <button id = "notConfiguredFloorPrice" name = "action" class="btn tooltipped btn-floating red" data-position = "bottom" data-delay = "25" data-tooltip = "Not yet Configured Floor Price" style = "margin-left: 30px;"><i class="material-icons medium">&#8369</i></button>
                        </div>
                    </div>
            </div>
            </div>
            </div>

            <div style = "overflow: auto;height: 470px;">
                <div class = "col s12">
                    <div class = "aside aside ">

                        <ul class="collapsible" data-collapsible="accordion">
                            <c:if test="${buildingList == null }">
                            	<li>
	                                <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
	                                    <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building One</label>
	                                </div>
	                                <div class="collapsible-body">
	                                    <p>Ground Floor
	                                        <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
	                                        <button name = "action" class="btn tooltipped modal-trigger btn-floating black right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
	                                    </p>
	                                </div>
	                                <div class="collapsible-body">
	                                    <p>First Floor
	                                        <button name = "action" class="btn tooltipped modal-trigger btn-floating blue right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is configured." style = "margin-left: 5px;" href = "#modalPrice"><i class="material-icons">&#8369</i></button>
	                                        <button name = "action" class="btn tooltipped modal-trigger btn-floating black right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
	                                   </p>
	                                </div>
                            	</li>
                            </c:if>
                            <c:if test="${buildingList != null }">
                            	<c:forEach items="${buildingList}" var="building">
	                            	<li>
	                            	
		                                <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
		                                    <label style = "font-family: myFirstFont; font-size: 20px; color: white;">${building.strBuildingName }</label>
		                                </div>
		                                <c:forEach items="${building.floorList}" var="floor">
			                                <div class="collapsible-body">
			                                    <p>Floor No. ${floor.intFloorNo}
			                                        <button value="${floor.floorId}" name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href="#modalPrice"><i class="material-icons">&#8369</i></button>
			                                        <button value="${floor.floorId}" name = "action" class="btn tooltipped modal-trigger btn-floating black right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" onclick="openConfigureFloor(this.value)"><i class="material-icons">settings</i></button>
			                                    </p>
			                                </div>
										</c:forEach>
										
	                            	</li>
	                            </c:forEach>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


            <!-- Modal Configure -->
            <div id="modalConfigure" class="modal" style = "width: 700px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "font-size: 30px; padding-left: 20px;">Floor Configuration</h4>
                </div>

          <div class="modal-content">

          <div class = "col s12">
            <div class = "row">
              <div style = "padding-left: 20px;">
              <div class="input-field col s8">
                  <select multiple>
                      <option value="" disabled selected>Select Floor Type</option>
                      <option value="1">Admin Office</option>
                      <option value="2">Cashier</option>
                      <option value="3">Columbary Vault</option>
                      <option value="4">Full Body</option>
                  </select>
                  <label>Floor Division</label>
              </div>
              </div>

                    <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "New Floor Type" style = "margin-left: 5px;" href = "#modalNewFloorType"><i class="material-icons">add</i></button>

            </div>
          </div>
          <br><br><br>

                <div class="modal-footer">
                    <button onclick="configureFloor()" name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                   
                    <button name = "action" class="waves-effect waves-light btn red modal-close">Cancel</button>
                </div>
            </div>
            </div>

            <!-- Modal New Floor Type -->
            <div id="modalNewFloorType" class="modal" style = "width: 500px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "padding-left: 20px; font-size: 30px;">Create Floor Type</h4>
                </div>
                <div class="modal-content">
                    <div class = "col s12">
                        <div class = "row">
                            <div style = "padding-left: 10px;">
								<form id="formCreateFloorType" action="createFloorType" method="POST">
                                <div class="input-field col s12">
                                    <input name="floorType.strFloorDesc" id="newFloorType" type="text" class="validate" required = "" aria-required = "true">
                                    <label for="newFloorType" data-error = "Invalid format." data-success = "">Floor Type Name <span style = "color: red;">*</span></label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <br><br><br>

                </div>
                <div class="modal-footer">
                    <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                    </form>
                    <button name = "action" class="waves-effect waves-light btn red modal-close">Cancel</button>
                </div>
            </div>

            <!-- Modal Price -->
            <div id="modalPrice" class="modal" style = "width: 700px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "padding-left: 20px; font-size: 30px; ">Floor Price</h4>
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


            <!-- Modal Archive Floor-->
            <div id="modalArchiveFloor" class="modal" style = "height: 1300px; width: 740px;">
                <div class="modal-content">
                    <!-- Data Grid Deactivated Floor/s-->
                    <div id="admin1" class="col s12" style="margin-top: 0px">
                        <div class="z-depth-2 card material-table" style="margin-top: 0px">
                            <div class="table-header" style="height: 45px; background-color: #00897b;">
                                <h4 style = "padding-top: 10px; font-size: 30px; color: white; padding-left: 0px;">Archive Floor/s</h4>
                                <a href="#" class="search-toggle btn-flat right"><i class="material-icons right" style="margin-left: 270px; color: #ffffff;">search</i></a>
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
                                    <td>Floor One</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Two</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Three</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Three</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Four</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Five</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Six</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Seven</td>
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
                                <h4 style = "font-size: 30px; color: white; padding-left: 0px;">Floor Data Grid</h4>
                                <div class="actions">
                                    <button name = "action" class="btn tooltipped modal-trigger btn-floating black" data-position = "bottom" data-delay = "30" data-tooltip = "Deactivated Floor/s" style = "margin-right: 10px;" href = "#modalArchiveFloor"><i class="material-icons" style = "color: white">delete</i></button>
                                    <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                                </div>
                            </div>
                            <table id="datatable">
                                <thead>
                                <tr>
                                    <th>Building Name</th>
                                    <th>No. of Floors</th>
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
</div>
</div>


	<script>
        $(document).ready(function() {
            $('select').material_select();
        });


        $('.modal-trigger').leanModal({
                    dismissible: false
                }
        );

        $(document).ready(function(){
            $('.collapsible').collapsible({
                accordion : false// A setting that changes the collapsible behavior to expandable instead of the default accordion style
            });
        });

        var checkbox = $("input[type='checkbox']"),
                radio = $("input[type='radio']");

        checkbox.click(function() {
            radio.attr("disabled", !checkbox.is(":checked"));
        });


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

    function openConfigureFloor(floorId){
    	Materialize.toast(floorId, 3000, 'rounded');
    	
    	$.ajax({
    		type: "POST",
    		url: "getFloorById",
    		data: {
    			"floorId" : floorId
    		},
    		dataType: "json",
    		async: true,
    		success: function(data){
    			Materialize.toast('Floor Id -- '+data.floor.floorId, 3000, 'rounded');
    			$('#buildingToBeConfigured').val(data.floor.buildingId);
    			$('#floorIdToBeConfigured').val(data.floor.floorId);
    			$('#modalConfigure').openModal();
    		},
    		error: function(data){
    			Materialize.toast('Error occured.', 3000, 'rounded');
    		}
    	});
    	
    }
    
    function configureFloor(){
    	
    	var floorType;
    	var buildingId = document.getElementById("buildingIdToBeConfigured").value;
    	var floorId = document.getElementById("floorIdToBeConfigured").value;
    	var isUnit = document.getElementById("isUnitToBeConfigured").checked;
    	if (isUnit == true){
    		floorType = $('input[name="unitTypeToBeConfigured"]:checked').val();
    	}else{
    		floorType = document.getElementById("floorTypeToBeConfigured").value;
    	}
    	var floorColumn = document.getElementById("floorColumnToBeConfigured").value;
    	var floorRow = document.getElementById("floorRowToBeConfigured").value;
    	
    	if (isUnit == true){
    		if (floorColumn <= 0 || floorRow <= 0){
    			
    		}else{
    			$.ajax({
    				type: "POST",
    				url: "configure",
    				data: {
    					"floor.buildingId" : buildingId,
    					"floor.floorType.strFloorDesc" : floorType,
    					"floor.floorId" : floorId,
    					"floor.intLevelNo" : floorRow,
    					"floor.intColumnNo" : floorColumn,
    					"floor.floorType.boolIsUnit" : isUnit
    				},//data
    				dataType: "json",
    				async: true,
    				success: function(data){
    					if (data.status === "success"){
	   						Materialize.toast('Floor is successfully configured.', 3000, 'rounded');
	   						$('#modalConfigure').closeModal();
	   					}else if (data.status === "failed-database"){
	   						Materialize.toast('Please check your connection.', 3000, 'rounded');
	   					}else{
	   						Materialize.toast('Something bad happened.', 3000, 'rounded');
	   					}
    				},//success
    				error: function(data){
    					Materialize.toast('Error occured.', 3000, 'rounded');
    				}//error
    			});//ajax
    		}//else
    	}else{
	   			$.ajax({
	   				type: "POST",
	   				url: "configure",
	   				data: {
	   					"floor.buildingId" : buildingId,
	   					"floor.floorType.strFloorDesc" : floorType,
	   					"floor.floorId" : floorId,
	   					"floor.floorType.boolIsUnit" : isUnit
	   				},//data
	   				dataType: "json",
	   				async: true,
	   				success: function(data){
	   					if (data.status === "success"){
	   						Materialize.toast('Floor is successfully configured.', 3000, 'rounded');
	   						$('#modalConfigure').closeModal();
	   					}else if (data.status === "failed-database"){
	   						Materialize.toast('Please check your connection.', 3000, 'rounded');
	   					}else{
	   						Materialize.toast('Something bad happened.', 3000, 'rounded');
	   					}
	   				},//success
	   				error: function(data){
	   					Materialize.toast('Error occured.', 3000, 'rounded');
	   				}//error
	   			});//ajax
    		}//else
    	}
    	
        
    window.onload = updateTable;
        
	function updateTable(){
			
			$.ajax({
				type: "POST",
				url: "getAllBuildingFloors",
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
		    	        		            building.intNoOfFloors
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

	</script>

