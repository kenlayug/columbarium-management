<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Package_Record_Form.js"></script>
	<link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Package_Record_Form.css"/>


    <link rel="stylesheet" href="../css/style.css">
    <script type="text/javascript" src = "../js/index.js"></script>

<!-- Form -->
<div class = "col s12" >
    <div class = "row">



    <!-- Create Package -->
    <form class = "col s4" id="formCreate">
        <h2 style = "font-size: 30px; padding-left:30px; margin-bottom: 20px; margin-top: 0px;">Package Maintenance</h2>
        <div class = "aside aside z-depth-3" style = "height: 450px; margin-left: 20px;">
            <div class = "header">
                <h4 style = "font-size: 30px; margin-top: 0px; padding-top: 10px;">Form</h4>
            </div>

            <i class = "left" style = "margin-top: 0px; padding-left: 20px; color: red;">*Required Fields</i>
            <br>
            <div class = "col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <input id="packageName" type="text" class="validate" required = "" aria-required="true">
                        <label for="packageName" data-error = "Invalid format." data-success = "">Package Name<span style = "color: red;">*</span></label>
                    </div>
                    <div class="input-field col s12">
                        <input id="packagePrice" type="text" class="validate" required = "" aria-required="true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                        <label for="packagePrice" data-error = "Invalid format." data-success = "">Package Price<span style = "color: red;">*</span></label>
                    </div>
                    <div class="input-field col s12">
                        <input id="packageDesc" type="text" class="validate">
                        <label for="packageDesc">Package Description</label>
                    </div>
                    <button type = "submit" name = "action" class="modal-trigger btn red left" style = "margin-left: 10px; margin-top: 10px; margin-right: 10px;" href = "#modalItem">Item/s</button>
                    <button type = "submit" name = "action" class="modal-trigger btn red left" style = "margin-top: 10px; margin-right: 10px;" href = "#modalService">Service/s</button>
                </div>

            </div>

            <button onclick = "createBuilding()" type = "submit" name = "action" class="btn red right" style = "margin-top: 20px; margin-right: 10px;">Create</button>
        </div>
    </form>


        <!-- Modal Service -->
        <div id="modalItem" class="modal" style = "width: 500px;">
            <div class = "modal-header" style = "height: 55px;">
                <h4 style = "font-size: 30px; padding-left: 20px;">Item Inclusion/s</h4>
            </div>
            <form class="modal-content">
                <div class = "col s12">

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

                <br><br><br>

                <div style = "margin-top: 30px;">
                <div class="modal-footer">
                    <button name = "action" class="btn red" style = "margin-bottom: 0px; margin-top: 6px; margin-left: 10px; ">Confirm</button>
                    <button name = "action" class="modal-close btn red" style = "margin-bottom: 0px;">Cancel</button>
                </div>
                </div>

            </form>

        </div>

    <!-- Modal Service -->
    <div id="modalService" class="modal" style = "width: 500px;">
        <div class = "modal-header" style = "height: 55px;">
            <h4 style = "font-size: 30px; padding-left: 20px;">Service Inclusion/s</h4>
        </div>
        <div class="modal-content">
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

                        <br><br>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="modal-footer">
            <button name = "action" class="btn red" style = "margin-left: 10px; ">Confirm</button>
            <button name = "action" class="modal-close btn red">Cancel</button>
        </div>
    </div>


    <!-- Modal Update -->
        <form id="modalUpdatePackage" class="modal" style = "width: 650px;">
            <div class = "modal-header" style = "height: 55px;">
                <h4 style = "padding-left: 20px; font-size: 30px;">Update Package</h4>
            </div>
            <div class="modal-content">
                <i class = "left" style = "margin-top: 0px; padding-left: 10px; color: red;">*Required Fields</i>
                <br><br>

                <div class = "col s12">
                    <div class="row">
                        <div class="input-field col s6">
                            <input placeholder="Package Name" id="packageNameUpdate" type="text" class="validate" required = "" aria-required="true">
                            <label for="packageNameUpdate" data-error = "Invalid format." data-success = "">New Package Name<span style = "color: red;">*</span></label>
                        </div>
                        <div class="input-field col s6">
                            <input placeholder="Package Price" id="packagePriceUpdate" type="text" class="validate" required = "" aria-required="true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                            <label for="packagePriceUpdate" data-error = "Invalid format." data-success = "">New Package Price<span style = "color: red;">*</span></label>
                        </div>
                    </div>
                </div>
                <div class = "col s12">
                    <div class="row">
                        <div class="input-field col s12">
                            <input placeholder="Package Description" id="packageDescUpdate" type="text" class="validate">
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
                <button type = "submit" name = "action" class="btn red" style = "margin-left: 10px; ">Confirm</button>
                <button name = "action" class="btn red modal-close">Cancel</button>
            </div>
        </form>


        <!-- Modal Deactivate -->
        <div id="modalDeactivatePackage" class="modal" style = "width: 400px;">
            <div class = "modal-header" style = "height: 55px;">
                <h4 style = "font-size: 30px; padding-left: 20px;">Deactivate Package</h4>
            </div>
            <div class="modal-content">
                <p style = "padding-left: 30px; font-size: 15px;">Are you sure you want to deactivate this package?</p>
            </div>
            <div class="modal-footer">
                <button name = "action" class="btn red" style = "margin-left: 10px; ">Confirm</button>
                <button name = "action" class="modal-close btn red">Cancel</button>
            </div>
        </div>

    <!-- Modal Package Includes -->
    <div id="modalPackageIncludes" class="modal" style = "width: 500px;">
        <div class = "modal-header" style = "height: 55px;">
            <h4 style = "font-size: 30px; padding-left: 20px;">Package</h4>
        </div>
        <div class="modal-content">
            <p style = "padding-left: 30px;">Service One, Service Two, and Item Five</p>
        </div>
        <div class="modal-footer">
            <button name = "action" class="modal-close btn red" style = "margin-left: 10px; ">Confirm</button>

        </div>
    </div>


    <!-- Modal Archive Package-->
    <div id="modalArchivePackage" class="modal" style = "height: 400px; width: 600px;">
        <div class="modal-content">
            <!-- Data Grid Deactivated Package/s-->
            <div id="admin1" class="col s12" style="margin-top: 0px">
                <div class="z-depth-2 card material-table" style="margin-top: 0px">
                    <div class="table-header" style="height: 45px; background-color: #00897b;">
                        <h4 style = "padding-top: 10px; font-size: 30px; color: white; padding-left: 0px;">Archive Package/s</h4>
                        <a href="#" class="search-toggle btn-flat right"><i class="material-icons right" style="margin-left: 140px; color: #ffffff;">search</i></a>
                    </div>
                    <table id="datatable2">
                        <thead>
                        <tr>
                            <th>Item Name</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Package One</td>
                            <td>
                                <button name = "action" class="btn red modal-close">Activate</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Package Two</td>
                            <td>
                                <button name = "action" class="btn red modal-close">Activate</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Package Three</td>
                            <td>
                                <button name = "action" class="btn red modal-close">Activate</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Package Three</td>
                            <td>
                                <button name = "action" class="btn red modal-close">Activate</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Package Four</td>
                            <td>
                                <button name = "action" class="btn red modal-close">Activate</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Package Five</td>
                            <td>
                                <button name = "action" class="btn red modal-close">Activate</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Package Six</td>
                            <td>
                                <button name = "action" class="btn red modal-close">Activate</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Package Seven</td>
                            <td>
                                <button name = "action" class="btn red modal-close">Activate</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <button name = "action" class="btn red modal-close right" style = "margin-bottom: 10px; margin-right: 0px;">DONE</button>
        </div>

    </div>



    <!-- Data Grid -->
        <div class = "col s8" style = "margin-left: 0px; margin-right: 0px; margin-top: 0px;">
            <div class="row">
                <div id="admin" class="col s12" style="margin-top: 20px">
                    <div class="z-depth-2 card material-table">
                        <div class="table-header" style="background-color: #00897b;">
                            <h4 style = "font-size: 30px; color: white; padding-left: 0px;">Package Record</h4>

                            <div class="actions">
                                <button name = "action" class="btn tooltipped modal-trigger btn-floating black" data-position = "bottom" data-delay = "30" data-tooltip = "Deactivated Package/s" style = "margin-right: 10px;" href = "#modalArchivePackage"><i class="material-icons" style = "color: white">delete</i></button>
                                <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                            </div>
                        </div>
                        <table id="datatable">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Description</th>
                                <th>Includes:</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Package Eight</td>
                                <td>Price Eight</td>
                                <td>Description Eight</td>
                                <td><button data-target="modalPackageIncludes" class="red btn modal-trigger">view</button></td>
                                <td>
                                    <button name = "action" data-target="modalUpdatePackage" class="modal-trigger btn-floating blue"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                                    <button name = "action" data-target="modalDeactivatePackage" class="modal-trigger btn-floating red"><i class="material-icons" style = "color: black;">not_interested</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Eight</td>
                                <td>Price Eight</td>
                                <td>Description Eight</td>
                                <td><button data-target="modalPackageIncludes" class="red btn modal-trigger">view</button></td>
                                <td>
                                    <button name = "action" data-target="modalUpdatePackage" class="modal-trigger btn-floating blue"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                                    <button name = "action" data-target="modalDeactivatePackage" class="modal-trigger btn-floating red"><i class="material-icons" style = "color: black;">not_interested</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Eight</td>
                                <td>Price Eight</td>
                                <td>Description Eight</td>
                                <td><button data-target="modalPackageIncludes" class="red btn modal-trigger">view</button></td>
                                <td>
                                    <button name = "action" data-target="modalUpdatePackage" class="modal-trigger btn-floating blue"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                                    <button name = "action" data-target="modalDeactivatePackage" class="modal-trigger btn-floating red"><i class="material-icons" style = "color: black;">not_interested</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Eight</td>
                                <td>Price Eight</td>
                                <td>Description Eight</td>
                                <td><button data-target="modalPackageIncludes" class="red btn modal-trigger">view</button></td>
                                <td>
                                    <button name = "action" data-target="modalUpdatePackage" class="modal-trigger btn-floating blue"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                                    <button name = "action" data-target="modalDeactivatePackage" class="modal-trigger btn-floating red"><i class="material-icons" style = "color: black;">not_interested</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Eight</td>
                                <td>Price Eight</td>
                                <td>Description Eight</td>
                                <td><button data-target="modalPackageIncludes" class="red btn modal-trigger">view</button></td>
                                <td>
                                    <button name = "action" data-target="modalUpdatePackage" class="modal-trigger btn-floating blue"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                                    <button name = "action" data-target="modalDeactivatePackage" class="modal-trigger btn-floating red"><i class="material-icons" style = "color: black;">not_interested</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Eight</td>
                                <td>Price Eight</td>
                                <td>Description Eight</td>
                                <td><button data-target="modalPackageIncludes" class="red btn modal-trigger">view</button></td>
                                <td>
                                    <button name = "action" data-target="modalUpdatePackage" class="modal-trigger btn-floating blue"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                                    <button name = "action" data-target="modalDeactivatePackage" class="modal-trigger btn-floating red"><i class="material-icons" style = "color: black;">not_interested</i></button></td>
                            </tr>
                            <tr>
                                <td>Package Eight</td>
                                <td>Price Eight</td>
                                <td>Description Eight</td>
                                <td><button data-target="modalPackageIncludes" class="red btn modal-trigger">view</button></td>
                                <td>
                                    <button name = "action" data-target="modalUpdatePackage" class="modal-trigger btn-floating blue"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                                    <button name = "action" data-target="modalDeactivatePackage" class="modal-trigger btn-floating red"><i class="material-icons" style = "color: black;">not_interested</i></button></td>
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

        $('.modal-trigger').leanModal({
                    dismissible: false
                }
        );


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