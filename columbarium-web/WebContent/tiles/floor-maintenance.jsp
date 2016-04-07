
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Floor_Record_Form.css"/>


    <link rel="stylesheet" href="../css/style.css">
    <script type="text/javascript" src = "../js/index.js"></script>

    <!-- Section -->
<h2 style = "font-family: myFirstFont2; padding-left: 35px; font-size: 30px; margin-top: 0px;">Floor Maintenance</h2>
<div class = "col s12" >
    <div class = "row">
        <div class = "responsive">

        <div class = "col s4" style = "margin-left: 10px;">


            <div style = "overflow: auto;height: 470px;">
                <div class = "col s12">
                    <div class = "aside aside " id="buildingSet">
                        <ul class="collapsible" data-collapsible="accordion">
                            <c:if test="${buildingList == null }">
                            	<li>
	                                <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
	                                    <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building One</label>
	                                </div>
	                                <div class="collapsible-body">
	                                    <p>Ground Floor
	                                        <button name = "action" class="btn tooltipped modal-trigger btn-floating black right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
	                                    </p>
	                                </div>
	                                <div class="collapsible-body">
	                                    <p>First Floor
	                                        <button name = "action" class="btn tooltipped modal-trigger btn-floating black right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalConfigure"><i class="material-icons">settings</i></button>
	                                   </p>
	                                </div>
                            	</li>
                            </c:if>
                            <c:if test="${buildingList != null }">
                            	<c:forEach items="${buildingList}" var="building">
	                            	<li>
		                                <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
		                                    <label style = "font-family: myFirstFont2; font-size: 20px; color: white;">${building.strBuildingName }</label>
		                                </div>
		                                <c:forEach items="${building.floorList}" var="floor">
			                                <div class="collapsible-body">
			                                    <p style = "max-height: 50px; padding-top: 15px;">Floor No. ${floor.intFloorNo}
			                                    	<c:if test="${floor.floorType == 0 }">
			                                        	<button value="${floor.floorId}" name = "action" class="btn tooltipped modal-trigger btn-floating black right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-top: -10px; margin-left: 5px;" onclick="openConfigureFloor(this.value)"><i class="material-icons">settings</i></button>
			                                        </c:if>
			                                        <c:if test="${floor.floorType != 0}">
			                                        	<button value="${floor.floorId}" name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is configured." style = "margin-top: -10px; margin-left: 5px;" onclick="openConfigureFloor(this.value)"><i class="material-icons">settings</i></button>
			                                        </c:if>
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
            <div id="modalConfigure" class="modal" style = "width: 650px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "font-family: myFirstFont2; font-size: 30px; padding-left: 20px;">Floor Configuration</h4>
                </div>

          <div class="modal-content">
              <button name = "action" class="btn tooltipped modal-trigger light-green right" data-position = "bottom" data-delay = "30" data-tooltip = "New Floor Type" style = "color: black; margin-top: 0px; margin-left: 5px;" href = "#modalNewFloorType">New Floor Type</button>
			<input type="hidden" id="buildingIdToBeConfigured">
			<input type="hidden" id="floorIdToBeConfigured">
			<input type="hidden" id="floorTypes" name="floorType[]">

			 <br>
            <div class = "row">
                <h3 style = "font-size: 18px; padding-left: 20px;">Select Floor Type</h3>
              <div class = "col s6" style = "padding-left: 20px;" id="firstDivFloorType">

              </div>
                <div class = "col s6" style = "padding-left: 20px;" id="secondDivFloorType">
                        
                    <br>
                </div>

            </div>
            </div>
				<div class="modal-footer">
					<button type = "submit" onclick="configureFloor()" name = "action" class="btn light-green" style = "margin-right: 20px; color: black; margin-left: 10px; ">Confirm</button>
					<button name = "action" class="btn light-green modal-close" style = "color: black;">Cancel</button>
				</div>
            </div>

            <!-- Modal New Floor Type -->
            <div id="modalNewFloorType" class="modal" style = "width: 450px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "font-family: myFirstFont2; padding-left: 20px; font-size: 30px;">Create Floor Type</h4>
                </div>
                <div class="modal-content">
                    <div class = "col s12">
                        <div class = "row">
                            <div style = "padding-left: 10px;">
								<form id="formCreateFloorType" action="createFloorType" method="POST">
                                <div class="input-field col s12">
                                    <input name="floorType.strFloorDesc" id="newFloorTypeDesc" type="text" class="validate" required = "" aria-required = "true">
                                    <label for="newFloorTypeDesc" data-error = "Invalid format." data-success = "">Floor Type Name <span style = "color: red;">*</span></label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <br><br><br>

                </div>
                <div class="modal-footer">
                    <button onclick="createFloorType()" name = "action" class="btn light-green" style = "color: black; margin-right: 30px; margin-left: 10px; ">Confirm</button>
                    </form>
                    <button name = "action" class="btn light-green modal-close" style = "color: black;">Cancel</button>
                </div>
            </div>

            <!-- Modal Archive Floor-->
            <div id="modalArchiveFloor" class="modal" style = "height: 400px; width: 600px;">
                <div class="modal-content">
                    <!-- Data Grid Deactivated Floor/s-->
                    <div id="admin1" class="col s12" style="margin-top: 0px">
                        <div class="z-depth-2 card material-table" style="margin-top: 0px">
                            <div class="table-header" style="height: 45px; background-color: #00897b;">
                                <h4 style = "font-family: myFirstFont2; padding-top: 10px; font-size: 30px; color: white; padding-left: 0px;">Archive Floor/s</h4>
                                <a href="#" class="search-toggle btn-flat right"><i class="material-icons right" style="margin-left: 150px; color: #ffffff;">search</i></a>
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
                                        <button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Two</td>
                                    <td>
                                        <button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Three</td>
                                    <td>
                                        <button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Three</td>
                                    <td>
                                        <button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Four</td>
                                    <td>
                                        <button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Five</td>
                                    <td>
                                        <button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Six</td>
                                    <td>
                                        <button name = "action" class="btn light-green modal-close" style = "color: black;">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Floor Seven</td>
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
            <div class = "col s7" style = "margin-top: 0px;">
                <div class="row">
                    <div id="admin">
                        <div class="z-depth-2 card material-table">
                            <div class="table-header" style="background-color: #00897b;">
                                <h4 style = "font-family: myFirstFont2; font-size: 30px; color: white; padding-left: 0px;">Floor Record</h4>
                                <div class="actions">
                                    <button name = "action" class="btn tooltipped modal-trigger btn-floating light-green" data-position = "bottom" data-delay = "30" data-tooltip = "Deactivated Floor/s" style = "margin-right: 10px;" href = "#modalArchiveFloor"><i class="material-icons" style = "color: black;">delete</i></button>
                                    <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                                </div>
                            </div>
                            <table id="datatable">
                                <thead>
                                <tr>
                                    <th>Building Name</th>
                                    <th>No. of Floors</th>
                                    <th>No. of Floor/s to be configured</th>
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
        
        $("#formCreateFloorType").submit(function(e){
    	    return false;
    	});
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
        
    function createFloorType(){
    	
    	var floorTypeDesc = document.getElementById("newFloorTypeDesc").value;
    	
    	if (!(floorTypeDesc == null || floorTypeDesc == "" || floorTypeDesc == " ")){
    		
    		$.ajax({
    			type : "POST",
    			url : "createFloorType",
    			data : {
    				"floorType.strFloorDesc" : floorTypeDesc
    			},
    			async : true,
    			dataType : "json",
    			success : function(data){
    				if (data.status === "success"){
    					Materialize.toast('Floor Type is successfully created.', 3000, 'rounded');
    					$('#modalNewFloorType').closeModal();
    					updateFloorTypeSelect();
    				}else if (data.status === "input"){
    					Materialize.toast('Please check all your input.', 3000, 'rounded');
    				}else if (data.status === "failed-existing"){
    					Materialize.toast('Floor type already exists.', 3000, 'rounded');
    				}else if (data.status === "failed-database"){
    					Materialize.toast('Please check your connection.', 3000, 'rounded');
    				}
    			},
    			error : function(data){
    				Materialize.toast('Error in creating floor type.', 3000, 'rounded');
    			}
    		});
    		
    	}
    	
    }
    
    function updateFloorTypeSelect(floorTypeListChecked){
    	$.ajax({
    		type : "POST",
    		url : "getAllFloorType",
    		dataType : "json",
    		async : true,
    		success : function(data){
    			var floorTypeList = data.floorTypeList;
    			var boolFirstDiv = 1;
    			$('#firstDivFloorType').empty();
    			$('#secondDivFloorType').empty();
				$.each(floorTypeList, function(i, floorType){
					var checked = '';
					if (floorTypeListChecked != null){
						$.each(floorTypeListChecked, function(o, floorTypeChecked){
							
							if (floorType.strFloorDesc == floorTypeChecked.strFloorDesc){
								checked = ' checked="checked"';
							}
						});
					}
					if (boolFirstDiv == 1){
						var radioBtn = $('<input type="checkbox" name="floorType[]" id="'+floorType.strFloorDesc+'" value="'+floorType.strFloorDesc+'"'+checked+' />');
						var label = $('<label for="'+floorType.strFloorDesc+'">'+floorType.strFloorDesc+'</label><br>');
					    radioBtn.appendTo('#firstDivFloorType');
					    label.appendTo('#firstDivFloorType');
						 if ((i+1)%5 === 0){
							 boolFirstDiv = 0;
						 }
					}else{
						var radioBtn = $('<input type="checkbox" name="floorType[]" id="'+floorType.strFloorDesc+'" value="'+floorType.strFloorDesc+'"'+checked+' />');
						var label = $('<label for="'+floorType.strFloorDesc+'">'+floorType.strFloorDesc+'</label><br>');
					    radioBtn.appendTo('#secondDivFloorType');
					    label.appendTo('#secondDivFloorType');
						 if ((i+1)%5 === 0){
							 boolFirstDiv = 1;
						 }
					}
					
					
        		});
    		},
    		error : function(data){
    			Materialize.toast('Error in updating select floor type.', 3000, 'rounded');
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
    			updateFloorTypeSelect(data.floor.floorTypeList);
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
    	var floorType = null;
    	floorType = $("input[name='floorType[]']:checked").map(function() {
    		return this.value;
    	}).get();
    	
 			$.ajax({
 				type: "POST",
 				url: "configure",
 				traditional: true,
 				data: {
 					"floor.floorId" : floorId,
 					"floorTypeList" : floorType
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
 			
    	}
    	
        
    window.onload = windowOnLoad;
    
    function windowOnLoad(){
    	updateTable();
    	updateFloorTypeSelect(null);
    }
    
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
		        			
		        			table.row.add( [
		    	        		            building.strBuildingName,
		    	        		            building.intNoOfFloors,
		    	        		            building.noOfFloorToConfigure
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