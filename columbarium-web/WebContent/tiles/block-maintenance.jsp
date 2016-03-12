<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!-- Section -->
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Blocks_Record_Form.css"/>

	<link rel="stylesheet" href="../css/style.css">

<div class = "col s12" >
    <div class = "row">
        <div class = "responsive">

            <div class = "col s4">
                <h2 style = "padding-left: 40px; font-size: 30px; margin-top: 20px;">Block Maintenance</h2>

                <div style = "overflow: auto;height: 370px;">
                    <div class = "col s12">
                        <div class = "aside aside ">

                            <ul class="collapsible" data-collapsible="accordion">
                            	<c:if test="${buildingList == null }">
	                                <li>
	                                    <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
	                                        <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building One</label>
	                                    </div>
	                                    <div class="collapsible-body">
	                                        <div class="row">
	                                            <div class="col s12 m12">
	                                                <ul class="collapsible" data-collapsible="accordion">
	                                                    <li>
	                                                        <div class="collapsible-header" style = "background-color: #ffa726">
	                                                            <i class="material-icons">work</i>Ground Floor</div>
	                                                        <div class="collapsible-body">
	                                                            <p>Administrator Office</p>
	                                                        </div>
	                                                    </li>
	                                                    <li>
	                                                        <div class="collapsible-header" style = "background-color: #ffa726">
	                                                            <i class="material-icons">view_module</i>First Floor
	                                                        </div>
	                                                        <div class="collapsible-body" style = "background-color: #ffa726">
	                                                            <p>Create Block
	                                                                <button name = "action" class="modal-trigger btn-floating blue right" style = "margin-right: 10px;" href = "#modalCreateBlock"><i class="material-icons">add</i></button>
	                                                            </p>
	                                                        </div>
	                                                        <div class="collapsible-body">
	                                                            <p>Block One
	                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
	                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
	                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating yellow right" data-position = "bottom" data-delay = "30" data-tooltip = "Update Floor Price" style = "margin-left: 5px;" href = "#modalUpdateFloorPrice"><i class="material-icons">&#8369</i></button>
	                                                            </p>
	                                                        </div>
	                                                        <div class="collapsible-body">
	                                                            <p>Block Two
	                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
	                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
	                                                            </p>
	                                                        </div>
	                                                    </li>
	                                                 </ul>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </li>
								</c:if>
								<c:if test="${buildingList != null }">
									<c:forEach items="${buildingList }" var="building">
										 <li>
		                                    <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
		                                        <label style = "font-family: myFirstFont; font-size: 20px; color: white;">${building.strBuildingName }</label>
		                                    </div>
		                                    <div class="collapsible-body">
		                                        <div class="row">
		                                            <div class="col s12 m12">
		                                                <ul class="collapsible" data-collapsible="accordion">
		                                                	<c:if test="${building.floorList != null }">
		                                                		<c:forEach items="${building.floorList }" var="floor">
		                                                			<c:if test="${floor.boolIsUnit == true }">
			                                                			<li>
					                                                        <div class="collapsible-header" style = "background-color: #ffa726">
					                                                            <i class="material-icons">view_module</i>Floor No. ${floor.intFloorNo}
					                                                        </div>
					                                                      	<c:if test="${floor.floorTypeList != null }">
						                                                    	
						                                                        	<div class="collapsible-body" style = "background-color: #ffa726">
							                                                            <p>Create Block
							                                                                <button value="${floor.floorId }" name = "action" data-target="modalCreateBlock" class="modal-trigger btn-floating blue right" style = "margin-right: 10px;" onclick="openCreateBlock(this.value)"><i class="material-icons">add</i></button>
							                                                            </p>
							                                                        </div>
							                                                        <c:if test="${floor.blockList != null}">
							                                                        	<c:forEach items="${floor.blockList }" var="block">
							                                                        		<div class="collapsible-body">
									                                                            <p>${block.strBlockName }
									                                                            	<button value="${block.blockId}" name = "action" class="btn tooltipped modal-trigger btn-floating yellow right" data-position = "bottom" data-delay = "30" data-tooltip = "Update Floor Price" style = "margin-left: 5px;" onclick = "openConfigurePrice(this.value)" data-target="modalUpdatePrice"><i class="material-icons">&#8369</i></button>
									                                                                <button value="${block.blockId }" name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Deactivate Block"  style = "margin-left: 5px;" onclick = "openDeactivateBlock(this.value)" data-target="modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
									                                                                <button value="${block.blockId }" name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Update Block" style = "margin-left: 5px;" onclick = "openUpdateBlock(this.value)"><i class="material-icons">mode_edit</i></button>
									                                                            </p>
									                                                        </div>
							                                                        	</c:forEach>
							                                                        </c:if>
						                                                    </c:if>				                                                        
					                                                    </li>
					                                            	</c:if>
		                                                		</c:forEach>
		                                                	</c:if>
		                                                   
		                                                 </ul>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </li>
									</c:forEach>
								</c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Modal Create -->
            <div id="modalCreateBlock" class="modal" style = "width: 450px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "font-size: 30px; padding-left: 20px;">Create Block</h4>
                </div>
                <form class="modal-content" id="createBlockForm">

                    <div style = "padding-left: 10px;">
                        <div class="input-field col s12">
                            <input id="floorIdBlockToCreate" type="hidden">
                            <input id="blockName" type="text" class="validate" required = "" aria-required="true" length = "20">
                            <label for="blockName" data-error = "Invalid format." data-success = "">Block Name<span style = "color: red;">*</span></label>
                        </div>
                    </div>

                    <div class="row" style = "padding-left: 20px;">
                        <h5 style = "font-family: arial;">Block size:</h5>
                        <div class="input-field col s6" style = "padding-left: 10px;">
                            <input id="blockLevel" type="number" class="validate" required = "" aria-required = "true" min = "1" max = "10">
                            <label for="blockLevel" data-error = "1-10 only" data-success = "">Level/s:<span style = "color: red;">*</span></label>
                        </div>
                        <div class="input-field col s6">
                            <input id="blockColumn" type="number" class="validate" required = "" aria-required = "true" min = "1" max = "20">
                            <label for="blockColumn" data-error = "1-20 only" data-success = "">Unit/s:<span style = "color: red">*</span></label>
                        </div>
                        <div class="input-field col s6" id="divUnitType">
                        </div>
                    </div>

                    <br><br>

                    <br>
                    <i class = "left" style = "padding-top: 20px; margin-bottom: 0px; padding-left: 30px; color: red;">*Required Fields</i>
                    <br>
                    <div style = "margin-top: 50px;">
                        <div class="modal-footer">
                            <button onclick="createBlock()" name = "action" class="btn red" style = "margin-left: 10px;">Confirm</button>
                            <button name = "action" class="btn red modal-close">Cancel</button>
                        </div>
                    </div>
                </form>

            </div>

            <!-- Modal Update -->
            <form id="modalUpdateBlock" class="modal" style = "width: 400px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "padding-left: 20px; font-size: 30px;">Update Block</h4>
                </div>
                <div class="modal-content">
                    <div style = "padding-left: 10px;">
                        <div class="input-field col s12">
                        	<input id="blockIdUpdate" type="hidden">
                            <input value=" " id="newBlockName" type="text" class="validate" required = "" aria-required = "true" length = "20">
                            <label class = "active" for="newBlockName" data-error = "Invalid format." data-success = "">New Block Name <span style = "color: red;">*</span></label>
                        </div>
                    </div>
                    <i class = "left" style = "margin-bottom: 0px; padding-left: 20px; color: red;">*Required Fields</i>
                </div>
                <br><br><br><br>
                <div class="modal-footer">
                    <button onclick="updateBlock()" type = "submit" name = "action" class="btn red" style = "margin-left: 10px; ">Confirm</button>
                    <button name = "action" class="btn red modal-close">Cancel</button>
                </div>
            </form>

            <!-- Modal Deactivate -->
            <div id="modalDeactivateBlock" class="modal" style = "width: 400px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "padding-left: 20px; font-size: 30px;">Deactivate Block</h4>
                </div>
                <div class="modal-content">
                    <p style = "padding-left: 20px; font-size: 15px;">Are you sure you want to deactivate this block?</p>
                </div>
				<input id="blockIdDeactivate" type="hidden">
                <div class="modal-footer">
                    <button onclick="deactivateBlock()" name = "action" class="btn red" style = "margin-left: 10px; ">Confirm</button>
                    <button name = "action" class="btn red modal-close">Cancel</button>
                </div>
            </div>

            <!-- Modal Archive Block-->
            <div id="modalArchiveBlock" class="modal" style = "height: 400px; width: 600px;">
                <div class="modal-content">
                    <!-- Data Grid Deactivated Block/s-->
                    <div id="admin1" class="col s12" style="margin-top: 0px">
                        <div class="z-depth-2 card material-table" style="margin-top: 0px">
                            <div class="table-header" style="height: 45px; background-color: #00897b;">
                                <h4 style = "padding-top: 10px; font-size: 30px; color: white; padding-left: 0px;">Archive Block/s</h4>
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
                                    <td>Block One</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Block Two</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Block Three</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Block Three</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Block Four</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Block Five</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Block Six</td>
                                    <td>
                                        <button name = "action" class="btn red modal-close">Activate</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Block Seven</td>
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
            
 	        <!-- Modal Price -->
            <div id="modalUpdatePrice" class="modal" style = "width: 700px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "padding-left: 20px; font-size: 30px; ">Block Price</h4>
                </div>
                <div class="modal-content">
                	<input id="levelNoForPriceConfig" type="hidden"> 
                	<input id="blockToConfigPrice" type="hidden" name="block.blockId">
                    <div class = "col s12" id="levelPriceDiv">
	                    
                    </div>
             
                <div class="modal-footer">
                    <button onclick="configurePrice()" name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                 
                    <button name = "action" class="waves-effect waves-light btn red modal-close">Cancel</button>
                </div>
            </div>
            </div>

            <!-- Data Grid -->
            <div class = "col s8">
                <div class="row">
                    <div id="admin" class="col s12" style="margin-top: 20px">
                        <div class="z-depth-2 card material-table">
                            <div class="table-header" style="background-color: #00897b;">
                                <h4 style = "font-size: 30px; color: white; padding-left: 0px;">Block Record</h4>
                                <div class="actions">
                                    <button name = "action" class="btn tooltipped modal-trigger btn-floating black" data-position = "bottom" data-delay = "30" data-tooltip = "Deactivated Block/s" style = "margin-right: 10px;" href = "#modalArchiveBlock"><i class="material-icons" style = "color: white">delete</i></button>
                                    <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                                </div>
                            </div>
                            <table id="datatable">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Type</th>
                                    <th>Name</th>
                                    <th>Floor Number</th>
                                    <th>Row/s</th>
                                    <th>Column/s</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Block One</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Two</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Three</td>
                                    <td>Columbary Vault</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Four</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Five</td>
                                    <td>Columbary Vault</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Six</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Seven</td>
                                    <td>Columbary Vault</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Eight</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Nine</td>
                                    <td>Columbary Vault</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Ten</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Eleven</td>
                                    <td>Columbary Vault</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Twelve</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Thirteen</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Fourteen</td>
                                    <td>Columbary Vault</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
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
	    $('input#input_text, textarea#textarea1').characterCounter();
	});

	$('.modal-trigger').leanModal({
        dismissible: false
  	});
	
	$("#createBlockForm").submit(function(e){
	    return false;
	});
	
	$("#modalUpdateBlock").submit(function(e){
	    return false;
	});
	
	function createBlock(){
		
		var floorId = document.getElementById("floorIdBlockToCreate").value;
		var blockName = document.getElementById("blockName").value;
		var unitType = $('input:radio[name=unitType]:checked').val();
		var levelNo = document.getElementById("blockLevel").value;
		var columnNo = document.getElementById("blockColumn").value;
		
		if (blockName == null || blockName == "" || blockName == " " ||
				unitType == null || unitType == "" || unitType == " "){
			
		}else{

			$.ajax({
				type: "POST",
				url: "create",
				data: {
					"block.floorId" : floorId,
					"block.strBlockName" : blockName,
					"block.strUnitType" : unitType,
					"block.intLevelNo" : levelNo,
					"block.intColumnNo" : columnNo
				},
				dataType: "json",
				async: true,
				success: function(data){
					if (data.status === "success"){
						Materialize.toast('Block is successfully created.', 3000, 'rounded');
						$('#modalCreateBlock').closeModal();
						updateTable();
					}else if (data.status === "failed-existing"){
						Materialize.toast('Block already exists.', 3000, 'rounded');
					}else if (data.status === "failed-database"){
						Materialize.toast('Please check your connection.', 3000, 'rounded');
					}else if (data.status === "input"){
						Materialize.toast('Please check all your inputs.', 3000, 'rounded');
					}
				},
				error: function(data){
					Materialize.toast('Error occured.', 3000, 'rounded');
				}
			});
			
		}
		
	}

    function openCreateBlock(floorId){
    	$('#modalCreateBlock').openModal();
    	Materialize.toast(floorId, 3000, 'rounded');
    	$('#floorIdBlockToCreate').val(floorId);
    	$.ajax({
    		type : "POST",
    		url : "getFloorById",
    		data : {
    			"floorId" : floorId
    		},
    		dataType : "json",
    		async : true,
    		success : function(data){
    			var floorTypeList = data.floor.floorTypeList;
    			if (floorTypeList != null){
    				
    				$.each(floorTypeList, function(i, floorType){
    					
    					if (floorType.boolIsUnit == true){
    						var radioBtn = $('<input type="radio" name="unitType" id="'+floorType.strFloorDesc+'" value="'+floorType.strFloorDesc+'"/>');
    						var label = $('<label for="'+floorType.strFloorDesc+'">'+floorType.strFloorDesc+'</label><br>');
    					    radioBtn.appendTo('#divUnitType');
    					    label.appendTo('#divUnitType');
    					}
    					
    				});
    				
    			}
    		},
    		error : function(data){
    			Materialize.toast('Error occured.', 3000, 'rounded');
    		}
    	});
    	
    }
    
    function openUpdateBlock(blockId){
    	$.ajax({
    		type : "POST",
    		url : "getBlockById",
    		data : {
    			"blockId" : blockId
    		},
    		dataType : "json",
    		async : true,
    		success : function(data){
    			if (data.block != null){
    				$('#modalUpdateBlock').openModal();
    				$('#blockIdUpdate').val(data.block.blockId);
    				$('#newBlockName').val(data.block.strBlockName);
    			}
    		},
    		error : function(data){
    			Materialize.toast('Error occured.', 3000, 'rounded');
    		}
    	});
    	
    }
    
    function openDeactivateBlock(blockId){
    	$('#blockIdDeactivate').val(blockId);
    	$('#modalDeactivateBlock').openModal();
    }
    
    function openConfigurePrice(blockId){
    	$('#modalUpdatePrice').openModal();
    	$.ajax({
    		type : "POST",
    		url: "getBlockById",
    		data : {
    			"blockId" : blockId
    		},
    		dataType : "json",
    		async: true,
    		success : function(data){
    			if (data.block != null){
    				$.each(data.block.unitCategoryList, function(i, unitCategory){
    					var input = $('<input type="text" id="'+unitCategory.intLevelNo+'" />');
						var label = $('<label for="'+unitCategory.intLevelNo+'">Level '+unitCategory.intLevelNo+'</label><br>');
					    input.appendTo('#levelPriceDiv');
					    label.appendTo('#levelPriceDiv');
    				});
    				$('#levelNoForPriceConfig').val(data.block.intLevelNo);
    				$('#blockToConfigPrice').val(data.block.blockId);
    			}
    		},
    		error : function(data){
    			Materialize.toast('Error occured.', 3000, 'rounded');
    		}
    	});
    }
    
    function configurePrice(){
    	
    	var arrPrice = new Array();
    	var blockIdToConfigPrice = document.getElementById("blockToConfigPrice").value;
    	var levelNo = document.getElementById("levelNoForPriceConfig").value;
    	var price = 0;
    	for(var intCtr = 1; intCtr < levelNo+1; intCtr++){
    		price = $('#'+intCtr).val();
    		arrPrice.push(price);
    	}
    	$.ajax({
    		type : "POST",
    		url : "configurePrice",
    		traditional : true,
    		data : {
    			"levelPrice" : arrPrice,
    			"block.blockId" : blockIdToConfigPrice
    		},
    		dataType : "json",
    		async : true,
    		success : function(data){
    			if (data.status === "success"){
    				Materialize.toast('Price is successfully saved.', 3000, 'rounded');
    				$('#modalUpdatePrice').closeModal();
    			}else {
    		    	Materialize.toast('Error in configuring price...', 3000, 'rounded');
    			}
    		},
    		error : function(data){
    			Materialize.toast('Error occured.', 3000, 'rounded');
    		}
    	});
    	
    }
    
    function deactivateBlock(){
    	
    	var blockIdToDeactivate = document.getElementById("blockIdDeactivate").value;
    	
    	$.ajax({
    		type : "POST",
    		url : "deactivate",
    		data : {
    			"blockId" : blockIdToDeactivate
    		},
    		dataType : "json",
    		async : true,
    		success : function(data){
    			if (data.status === "success"){
    				Materialize.toast('Block is successfully deactivated.', 3000, 'rounded');
    				updateTable();
    			}else if (data.status === "failed-does-not-exist"){
    				Materialize.toast('Block does not exist.', 3000, 'rounded');
    			}else if (data.status === "failed-database"){
    				Materialize.toast('Please check your connection', 3000, 'rounded');
    			}
    			$('#modalDeactivateBlock').closeModal();
    		},
    		error : function(data){
    			Materialize.toast('Error occured.', 3000, 'rounded');
    		}
    	});
    	
    }
    
    function updateBlock(){
    	
    	var blockIdUpdate = document.getElementById("blockIdUpdate").value;
    	Materialize.toast(blockIdUpdate, 3000, 'rounded');
    	var blockName = document.getElementById("newBlockName").value;
    	
    	if (blockName == null || blockName == " " || blockName == ""){
    		
    	}else{
    		
    		$.ajax({
    			type : "POST",
    			url : "update",
    			data : {
    				"blockId" : blockIdUpdate,
    				"block.strBlockName" : blockName
    			},
    			dataType : "json",
    			async : true,
    			success : function(data){
    				if (data.status === "success"){
    					Materialize.toast('Block is successfully updated.', 3000, 'rounded');
    					$('#modalUpdateBlock').closeModal();
    					updateTable();
    				}else if (data.status === "input"){
    					Materialize.toast('PLease check all your inputs.', 3000, 'rounded');
    				}else if (data.status === "failed-database"){
    					Materialize.toast('Please check your connection.', 3000, 'rounded');
    				}
    			},
    			error : function(data){
    				Materialize.toast('Error occured.', 3000, 'rounded');
    			}
    		});
    		
    	}
    	
    }
    
    window.onload = updateTable;
    
    function updateTable(){
    	
    	$.ajax({
    		type : "POST",
    		url : "getAllBlocks",
    		dataType : "json",
    		async : "true",
    		success : function(data){
    			if (data.blockList != null){
    				var table = $('#datatable').DataTable();
            		table.clear().draw();
    				$.each(data.blockList, function(i, block){
    					var unitType = null;
    					$.each(block.unitList, function (o, unit){
    						unitType = unit.strUnitType;
    					});
    					table.row.add( [
        	        		            block.strBlockName,
        	        		            unitType,
        	        		            ,
        	        		            ,
        	        		            block.intLevelNo,
        	        		            block.intColumnNo
        	        		            ]);
    				});
    				table.draw();
    				
    			}
    		},
    		error : function(data){
    			Materialize.toast('Error occured.', 3000, 'rounded');
    		}
    	});
    	
    }
    
</script>