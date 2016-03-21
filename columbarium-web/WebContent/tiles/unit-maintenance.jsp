
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!-- Section -->
<div class = col s12 >
    <div class = "row">
        <div class = "col s5" style="height: 500px">
            <h2 style = "font-family: myFirstFont; font-size: 30px; padding-left: 45px; margin-bottom: 0px;">Unit Maintenance</h2>
            <div class = "col s12" style="margin-top: 0px; margin-left: 0px;">
                <div style = "overflow: auto;height: 370px;">
                    <div class = "col s12" style = "margin-left: 0px;">
                        <div class = "aside aside ">

                            <!-- Building -->
                            <ul class="collapsible popout" data-collapsible="accordion">
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
						                                                    	
							                                                        <c:if test="${floor.blockList == null }">
							                                                        	<div class="collapsible-body">
									                                                            <p>No blocks available.</p>
									                                                    </div>
							                                                        </c:if>
							                                                        <c:if test="${floor.blockList != null}">
							                                                        	<c:forEach items="${floor.blockList }" var="block">
							                                                        		<div class="collapsible-body">
									                                                            <p>${block.strBlockName }
									                                                            	<button value="${block.blockId }" name = "action" class="btn tooltipped btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "View Block" style = "margin-left: 5px;" onclick="viewUnits(this.value)" ><i class="material-icons">pageview</i></button>
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
        </div>


        <div class = "col s7">
            <div class = "col s4 z-depth-2 " style = "margin-top: 20px; width: 100%;">
                <div class="responsive">
                    <div class = "col s12">
                        <div class = "aside aside z-depth-3">
                            <div class="center vaults-content">
                                <table id="tableUnits" style="font-size: small; margin-bottom: 25px;margin-top: 25px">
                                    <tbody>
                                    
                                    
                                    </tbody>
                                </table>

                                <!-- Modal Structure For Unit Status -->
                                <div id="modal1" class="modal modal-fixed">
                                    <div class="modal-header">
                                        <label style="font-size: large">UNIT STATUS</label>
                                    </div>
                                        <div class="row">
                                            <div class="input-field col s3">
                                            	<input id="unitToToggle" type="hidden">
                                                <label style="font-size: 20px">Status: <span style="color: green" id="unitStatus"></span></label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s3">
                                            </div>
                                            <div class="input-field col s6">
                                                <button onclick="deactivateUnit()" id="btnDeactivate" class="waves-effect waves-light btn red right" style = "width: 135px;  margin-top: 20px; margin-bottom: 10px;" type="submit">Deactivate</button>
                                                <button onclick="activateUnit()" id="btnActivate" class="waves-effect waves-light btn red right" style = "width: 130px;  margin-top: 20px; margin-bottom: 10px; margin-right: 10px;" type="submit">Activate</button>
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
    <script>
    $('.modal-trigger').leanModal({
            dismissible: false, // Modal can be dismissed by clicking outside of the modal
            opacity: .5, // Opacity of modal background
            in_duration: 300, // Transition in duration
            out_duration: 200, // Transition out duration
            ready: function() { alert('Ready'); }, // Callback for Modal open
            complete: function() { alert('Closed'); } // Callback for Modal close
        }
    );
    $("input:radio").on("click", function() {
            $("input:text").attr("disabled", true);
            $(this).next("input").attr("disabled", false)
    });
    
    $("#ownershipForm").submit(function(e){
	    return false;
	});
    
    function viewUnits(blockId){
    	Materialize.toast('View Units...', 3000, 'rounded');
    	$.ajax({
    		type : "POST",
    		url : "getUnitsFromBlock",
    		data : {
    			"blockId" : blockId
    		},
    		dataType : "json",
    		async : true,
    		success : function(data){
    			var intLevelNo = data.block.intLevelNo;
    			$('#tableUnits tbody').html('');
    			for (var intCtr = 0; intCtr < data.block.unitList.length;){
    				var strAppend = "";
    				for (var intSubCtr = 0; intSubCtr < intLevelNo; intSubCtr++, intCtr++){
    					var status = data.block.unitList[intCtr].status;
    					var color = "";
    					if (status === "Active"){
    						color = "green";
    					}else{
    						color = "red";
    					}
    					strAppend = strAppend + '<td><button value="'+data.block.unitList[intCtr].unitId+'" data-target="modal1" class="btn modal-trigger '+color+'" onclick="openStatusUnit(this.value)">'+data.block.unitList[intCtr].unitId+'</button></td>';
    				}
    				$('#tableUnits tbody').append('<tr>'+strAppend+'</tr>');
    			}
    			
    		},
    		error : function(data){
    			Materialize.toast('Error occured.', 3000, 'rounded');
    		}
    	});
    	
    }
    
    function openStatusUnit(unitId){
    	
    	$('#modal1').openModal();
    	$.ajax({
    		type : "POST",
    		url : "getUnitById",
    		data : {
    			"unitId" : unitId
    		},
    		dataType : "json",
    		async : true,
    		success : function(data){
    			
	    		$('#unitStatus').text(data.unit.status);   			
    			$('#unitToToggle').val(unitId);
    			
    			
    		},
    		error : function(data){
    			Materialize.toast('Error occured.', 3000, 'rounded');
    		}
    	});
    	
    }
    
    function deactivateUnit(){
    	
    	var unitId = document.getElementById("unitToToggle").value;
    	$.ajax({
    		type : "POST",
    		url : "deactivate",
    		data : {
    			"unitId" : unitId
    		},
    		dataType : "json",
    		async : true,
    		success : function(data){
    			if (data.status === "success"){
	    			Materialize.toast('Unit is successfully deactivated.', 3000, 'rounded');
	    			$('#modal1').closeModal();
	    			getBlock(unitId);
    			}else if (data.status === "failed-database"){
    				Materialize.toast('Please check your connection.', 3000, 'rounded');
    			}
    		},
    		error :function(data){
    			Materialize.toast('Error occured.', 3000, 'rounded');
    		}
    	});
    	
    }
    
    function getBlock(unitId){
    	
    	$.ajax({
    		type : "POST",
    		url : "getUnitById",
    		data : {
    			"unitId" : unitId
    		},
    		dataType : "json",
    		async : true,
    		success : function(data){
    			Materialize.toast('Updating table unit...'+data.unit.blockId, 3000, 'rounded');
    			viewUnits(data.unit.blockId);
    		},
    		error : function(data){
    	    	Materialize.toast('Error occured...', 3000, 'rounded');
    		}
    	});
    	
    }
    
    function activateUnit(){
    	var unitId = document.getElementById("unitToToggle").value;
    	
    	$.ajax({
    		type : "POST",
    		url : "activate",
    		data : {
    			"unitId" : unitId
    		},
    		dataType : "json",
    		async : true,
    		success : function(data){
    			if (data.status === "success"){
    				Materialize.toast('Unit is successfully activated.', 3000, 'rounded');
    				$('#modal1').closeModal();
    				getBlock(unitId);
    			}else if (data.status === "failed-database"){
    				Materialize.toast('Please check your connection.', 3000, 'rounded');
    			}
    		},
    		error :function(data){
    			Materialize.toast('Error occured.', 3000, 'rounded');
    		}
    	});
    }
    
    </script>
    