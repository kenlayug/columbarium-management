<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	<link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Package_Record_Form.css"/>



<!-- Form -->
<div class = "col s12" >
    <div class = "row">
        <div class = "col s7">
            <h2>Package Maintenance</h2>

            <!-- Create Package-->
            <form class = "col s12">
                <div class = "wrapper aside aside z-depth-3">
                    <div class = "header">
                        <h4>Package Form</h4>
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
                                <h6>Services</h6>
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
                                    <h6>Items</h6>
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
                </div>

                <!-- Floating Button -->
                <div onclick="createPackage()" class="fixed-action-btn horizontal" style="position: absolute; margin-right: 620px; margin-bottom: -40px;">
                    <button type = "submit" name = "action" class="btn-floating btn-large red"><i class="large material-icons">add</i>
                    </button>
                    <ul>
                        <li><button name = "action" class="modal-trigger btn-floating black" href = "#modal2"><i class="material-icons">delete</i></button></li>
                        <li><button name = "action" class="modal-trigger btn-floating green darken-1" href = "#modal1"><i class="material-icons">mode_edit</i></button></li>
                    </ul>
                </div>
            </form>
        </div>

        <!-- Modal Update -->
        <form id="modal1" class="modal">
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
        <div id="modal2" class="modal">
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
        <div class = "col s5">
            <div class = "col s4 z-depth-2 " style = "margin-top: 20px; width: 100%; height: 70px;">
               <div class = "responsive">

                <nav style = "height: 50px; margin-top: 10px; background-color: #00897b">
                    <div class="nav-wrapper">
                        <div>
                            <div class="input-field"  style = "height: 50px;">
                                <input id="search" type="search" required>
                                <label for="search"><i class="material-icons">search</i></label>
                                <i class="material-icons">close</i>
                            </div>
                        </div>
                    </div>
                </nav>
               </div>
            </div>

            <br>
            <br>
            <br>
            <br>
            <br>

            <div class = "aside z-depth-2" style = " width: 100%; height: 340px; overflow: auto;">
                <table id="tablePackage" class="responsive" style = "width: 100%;">

                    <thead class = "fixed-header">
                    <tr>
                        <th data-field="id">Package Name</th>
                        <th data-field="name">Package Price</th>
                        <th data-field="name">Package Description</th>
                        <th data-field="name">Package includes:</th>
                    </tr>
                    </thead>

                    <tbody>
	                    <c:if test="${packageList == null }">
	                    	<tr><td>No package available.</td></tr>
	                    </c:if>
	                    <c:if test="${packageList != null }">
	                    	<c:forEach items="${packageList }" var="packageTo">
	                    		<tr>
			                        <td>${packageTo.strPackageName}</td>
			                        <td>P ${packageTo.dblPrice }</td>
			                        <td>${packageTo.strPackageDesc }</td>
			                        <td>
			                        	
			                        </td>
			                    </tr>
	                    	</c:forEach>
	                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


    </div>
    
    <script>
    
	    $(document).ready(function(){
	        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
	        $('.modal-trigger').leanModal();
	    });
	
	    $(document).ready(function() {
	        $('select').material_select();
	    });
	    
	    function createPackage(){
	    	
	    	alert("Here...");
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
	    			alert("saving...");
	    			if (data.status === "success"){
	    				alert("Package "+data.packageTo.strPackageName+" is successfully saved.");
	    			}
	    		},
	    		error: function(data){
	    			alert("error...");
	    		}
	    	});
	    	
	    }
    
    </script>