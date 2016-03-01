<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	<link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Package_Record_Form.css"/>

    <link rel="stylesheet" href="../css/style.css">
    <script type="text/javascript" src = "../js/index.js"></script>

<!-- Form -->
<div class = "col s12" >
    <div class = "row">
        <div class = "col s3">
            <h2 style = "font-size: 30px;padding-left:20px;">Package Maintenance</h2>

            <!-- Create Package-->
                <div class = "wrapper aside aside z-depth-3">
                    <div class = "header">
                        <h4 style = "font-size: 30px; padding-top: 10px;">Package Form</h4>
                    </div>


                    <div class = "col s12">
                        <div class="row">
                            <div class="input-field col s6">
                                <input id="packageName" type="text" class="validate" required = "" aria-required="true">
                                <label for="packageName" data-error = "Check format field." data-success = "">Package Name<span style = "color: red;">*</span></label>
                            </div>
                            <div class="input-field col s6">
                                <input id="packagePrice" type="text" class="validate" required = "" aria-required="true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                                <label for="packagePrice" data-error = "Check format field." data-success = "">Package Price<span style = "color: red;">*</span></label>
                            </div>
                        </div>
                    </div>
                    <div class = "col s12">
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="packageDesc" type="text" class="validate">
                                <label for="packageDesc">Package Description</label>
                            </div>
                        </div>
                    </div>

                    <div class = "col s12">
                        <div class="row">
                            <div class = "col s6">
                            <div>
                                <h6 style = "font-family: arial;">Services</h6>
                                	<c:if test="${serviceList == null}">
                                		<p>
                                			<h7>No services available</h7>
                                		</p>
                                	</c:if>
                                	<c:if test="${serviceList != null }">
                                		<c:forEach items="${serviceList }" var="service">
                                			<p>
			                                    <input type="checkbox" name="service[]" id="${service.strServiceName }" value="${service.strServiceName }" />
			                                    <label for="${service.strServiceName }">${service.strServiceName}</label>
			                                </p>
                                		</c:forEach>
                                	</c:if>
                                
                                
                            </div>
                            </div>
                            <div class = "col s6">
                                <div>
                                    <h6 style = "font-family: arial;">Items</h6>
                                    <c:if test="${itemList == null}">
                                		<p>
                                			<h7>No items available</h7>
                                		</p>
                                	</c:if>
                                	<c:if test="${itemList != null }">
                                		<c:forEach items="${itemList }" var="item">
                                			<p>
			                                    <input type="checkbox" name="item[]" id="${item.strItemName }" value="${item.strItemName }" />
			                                    <label for="${item.strItemName }">${item.strItemName}</label>
			                                </p>
                                		</c:forEach>
                                	</c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                    <i class = "left" style = "margin-top: 50px; padding-left: 20px; color: red;">*Required Fields</i>
                </div>
        </div>

        <!-- Modal Update -->
        <form id="modalUpdatePackage" class="modal">
            <div class = "modal-header">
                <h4>Update Package</h4>
            </div>
            <div class="modal-content">

                <div class = "col s6" style = "padding-left: 20px;">
                    <label>Select Package Name to Update</label>
                    <select required = "" aria-required = "true">
                        <option value="" disabled selected>Package Name:</option>
                        <c:if test="${packageList != null }">
							<c:forEach items="${packageList }" var="packageTo">
								<option value="${packageTo.strPackageName }">${packageTo.strPackageName}</option>
							</c:forEach>
						</c:if>
                    </select>
                </div>


                <div class = "col s12">
                    <div class="row">
                        <div class="input-field col s6">
                            <input id="packageNameUpdate" type="text" class="validate" required = "">
                            <label for="packageNameUpdate">New Package Name</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="packagePriceUpdate" type="text" class="validate" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                            <label for="packagePriceUpdate" data-error = "Check format field." data-success = "">New Package Price</label>
                        </div>
                    </div>
                </div>
                <div class = "col s12">
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="packageDescUpdate" type="text" class="validate">
                            <label for="packageDescUpdate">New Package Description</label>
                        </div>
                    </div>
                </div>

                <div class = "col s12">
                    <div class="row">
                        <div class = "col s6">
                            <div action="#">
                                <h6>Services</h6>
                                <p>
                                    <input type="checkbox" id="cremation" />
                                    <label for="cremation">Cremation</label>
                                </p>
                                <p>
                                    <input type="checkbox" id="fullBody" />
                                    <label for="fullBody">Full Body Crypts</label>
                                </p>
                                <p>
                                    <input type="checkbox" id="vaultInscription" />
                                    <label for="vaultInscription">Vault Inscription</label>
                                </p>
                                <p>
                                    <input type="checkbox" id="urnInscription" />
                                    <label for="urnInscription">Urn Inscription</label>
                                </p>
                            </div>
                        </div>
                        <div class = "col s6">
                            <div action="#">
                                <h6>Items</h6>
                                <p>
                                    <input type="checkbox" id="woodenUrn" />
                                    <label for="woodenUrn">Wooden urn</label>
                                </p>
                                <p>
                                    <input type="checkbox" id="metalUrn" />
                                    <label for="metalUrn">Metal urn</label>
                                </p>
                                <p>
                                    <input type="checkbox" id="porcelain" />
                                    <label for="porcelain">Porcelain</label>
                                </p>
                                <p>
                                    <input type="checkbox" id="pouch" />
                                    <label for="pouch">Pouch</label>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type = "submit" name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                <button name = "action" class="waves-effect waves-light btn red" href = "Blocks_Maintenance.html">Cancel</button>
            </div>
        </form>


        <!-- Modal Deactivate -->
        <div id="modalDeactivatePackage" class="modal">
            <div class = "modal-header">
                <h4>Deactivate Package</h4>
            </div>
            <div class="modal-content">
                <div class = "col s6" style = "padding-left: 20px;">
                    <label>Select Package Name to Deactivate</label>
                    <select required = "" aria-required = "true">
                        <option value="" disabled selected>Package Name:</option>
						<c:if test="${packageList != null }">
							<c:forEach items="${packageList }" var="packageTo">
								<option value="${packageTo.strPackageName }">${packageTo.strPackageName}</option>
							</c:forEach>
						</c:if>
                    </select>
                </div>
                <br><br><br><br>
            </div>
            <div class="modal-footer">
                <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
            </div>
        </div>


        <!-- Data Grid -->
        <div class = "col s9">
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
                                <th>Package Name</th>
                                <th>Package Price</th>
                                <th>Package Description</th>
                                <th>Package Includes:</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Package One</td>
                                <td>Price One</td>
                                <td>Description One</td>
                                <td>Includes One</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>

                            </tr>
                            <tr>
                                <td>Package Two</td>
                                <td>Price Two</td>
                                <td>Description Two</td>
                                <td>Includes Two</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Three</td>
                                <td>Price Three</td>
                                <td>Description Three</td>
                                <td>Includes Three</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Four</td>
                                <td>Price Four</td>
                                <td>Description Four</td>
                                <td>Includes Four</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Five</td>
                                <td>Price Five</td>
                                <td>Description Five</td>
                                <td>Includes Five</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Six</td>
                                <td>Price Six</td>
                                <td>Description Six</td>
                                <td>Includes Six</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Seven</td>
                                <td>Price Seven</td>
                                <td>Description Seven</td>
                                <td>Includes Seven</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Eight</td>
                                <td>Price Eight</td>
                                <td>Description Eight</td>
                                <td>Includes Eight</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Nine</td>
                                <td>Price Nine</td>
                                <td>Description Nine</td>
                                <td>Includes Nine</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Ten</td>
                                <td>Price Ten</td>
                                <td>Description Ten</td>
                                <td>Includes Ten</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Eleven</td>
                                <td>Price Eleven</td>
                                <td>Description Eleven</td>
                                <td>Includes Eleven</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Twelve</td>
                                <td>Price Twelve</td>
                                <td>Description Twelve</td>
                                <td>Includes Twelve</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Thirteen</td>
                                <td>Price Thirteen</td>
                                <td>Description Thirteen</td>
                                <td>Includes Thirteen</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Fourteen</td>
                                <td>Price Fourteen</td>
                                <td>Description Fourteen</td>
                                <td>Includes Fourteen</td>
                                <td><button name = "action" class="modal-trigger btn-floating yellow" href = "#modalCreatePackage"><i class="material-icons">add</i></button></td>
                                    <button name = "action" class="modal-trigger btn-floating green" href = "#modalUpdatePackage"><i class="material-icons">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivatePackage"><i class="material-icons">delete</i></button></td>
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
    
	    $(document).ready(function(){
	        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
	        $('.modal-trigger').leanModal();
	    });
	    
	    $("#formCreate").submit(function(e){
		    return false;
		});
	    
	    function createPackage(){
	    	
	    	var packageName = document.getElementById("packageName").value;
	    	var packagePrice = document.getElementById("packagePrice").value;
	    	var packageDesc = document.getElementById("packageDesc").value;
	    	var services = $("input[name='service[]']:checked").map(function() {
	    		return this.value;
	    	}).get();
	    	var items = $("input[name='item[]']:checked").map(function() {
	    		return this.value;
	    	}).get();
	    	
	    	$.ajax({
	    		type: "POST",
	    		url: "create",
	    		data: {
	    			"packageTo.strPackageName" : packageName,
	    			"packageTo.dblPrice" : packagePrice,
	    			"packageTo.strPackageDesc" : packageDesc,
	    			"serviceList" : services,
	    			"itemList" : items
	    		},
	    		traditional: true,
	    		dataType: "json",
	    		async: true,
	    		success: function(data){
	    			if (data.status === "success"){
	    				alert("Package "+data.packageTo.strPackageName+" is successfully saved.");
	    				updateTable();
	    			}else if(data.status === "input"){
	    				alert("Fill up everything.");
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
	    		url: "getAllPackages", 
	    		dataType: "json",
	    		async: true,
	    		success: function(data){
	    			var packageList = data.packageList;
	        		$("#tablePackage tbody").remove();
					if (packageList != null){
						$.each(packageList, function(i, packageTo){
							
			        		tableRow = $("<tr>").append(
			        				$("<td>").text(packageTo.strPackageName),
			        				$("<td>").text(packageTo.dblPrice),
			        				$("<td>").text(packageTo.strPackageDesc),
			        				$("<td>").text());
			        		$("#tablePackage").append(tableRow);
		        		});
					}else{
						tableRow = $("<tr>").append(
								$("<td>").text("No packages available."));
						$("#tablePackages").append(tableRow);
					}
	    		},
	    		error: function(data){
	    			alert("error in updating table...");
	    		}
	    	});
	    	
	    }
    
    </script>