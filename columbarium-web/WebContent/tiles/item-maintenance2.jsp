<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Inventory_Form.css"/>
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/style.css"/>

<div class = "s12">
    <div class = "row">
<div class = "col s5">
    <h2 style = "font-size: 30px; margin-top: 0px; margin-bottom: 20px;">Item Maintenance</h2>
<form class = "col s12">
    <div class = "aside aside z-depth-3" style = "height: 430px;">
        <div class = "header">
            <h4 style = "font-size: 30px; margin-top: 0px; padding-top: 10px;">Form</h4>
        </div>

        <form class="row" style = "padding-left: 10px; padding-top: 0px;">
            <div class = "row" style = "padding-left: 10px; padding-right: 20px;">
            <div class="input-field required col s6">
                <input id="itemName" type="text" class="validate" required = "" aria-required = "true" minlength = "1" maxlength="20" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,20}">
                <label for="itemName" data-error = "Invalid format." data-success = "">Item Name <span style = "color: red;">*</span></label>
            </div>
            <div class="required input-field col s6">
                <input id="itemPrice" type="number" class="validate" required = "" min="1" step="1" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                <label for="itemPrice" data-error = "Invalid format." data-success = "">Item Price <span style = "color: red;">*</span></label>
            </div>
            </div>

            <div class = "row" style = "padding-left: 10px; margin-right: 20px;">
            <div class="input-field col s6">
                <select id="selectItemCategory">
                    <option value="" disabled selected>Item Category</option>
                    <option value="1">Category One</option>
                    <option value="2">Category Two</option>
                    <option value="3">Category Three</option>
                </select>
                <label>Select Item Category</label>
                </div>
                <button type = "submit" name = "action" class="modal-trigger btn green right" style = "margin-top: 25px; margin-right: 10px;" href = "#modalItemCategory">Item Category</button>
            </div>

            <div class="row" style = "padding-right: 20px; padding-left: 10px;">
                <div class="input-field required col s12">
                    <input id="itemDescription" type="text" class="validate" required = "" aria-required = "true">
                    <label for="itemDescription" data-error = "Invalid format." data-success = "">Item Description <span style = "color: red;">*</span></label>
                </div>
            </div>
            <i class = "left" style = "margin-top: 0px; margin-bottom: 50px; padding-left: 20px; color: red;">*Required Fields</i>

            <button type = "submit" name = "action" class="btn green right" style = "margin-top: 20px; margin-right: 30px;">Create</button>
        </form>


    </div>
</form>
</div>


        <!-- Modal Update -->
        <div id="modalUpdateItem" class="modal" style = "width: 650px;">
            <div class = "modal-header" style = "height: 55px;">
                <h4 style = "font-size: 30px; padding-left: 20px;">Update Item</h4>
            </div>
            <form class="modal-content">
                <div class="row" style = "padding-left: 10px; padding-top: 0px;">
                    <div class = "row" style = "padding-left: 10px; padding-right: 20px;">
                        <div class="input-field required col s6">
                            <input id="itemNameUpdate" type="text" class="validate" maxlength="20" required = "" aria-required = "true" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,20}"/>
                            <label for="itemNameUpdate" data-error = "Invalid format." data-success = "">New Item Name <span style = "color: red;">*</span></label>
                        </div>
                        <div class="required input-field col s6">
                            <input id="itemPriceUpdate" type="text" class="validate" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
                            <label for="itemPrice" data-error = "Invalid format." data-success = "">New Item Price <span style = "color: red;">*</span></label>
                        </div>
                    </div>

                    <div class = "row" style = "padding-left: 10px; margin-right: 20px;">
                        <div class="input-field col s6">
                            <select>
                                <option value="" disabled selected>Item Category</option>
                                <option value="1">Category One</option>
                                <option value="2">Category Two</option>
                                <option value="3">Category Three</option>
                            </select>
                            <label>Select New Item Category</label>
                        </div>
                        <button type = "submit" name = "action" class="modal-trigger btn green right" style = "margin-top: 25px; margin-right: 10px;" href = "#modalItemCategory">Item Category</button>
                    </div>

                    <div class="row" style = "padding-right: 20px; padding-left: 10px;">
                        <div class="input-field required col s12">
                            <input id="itemDescriptionUpdate" type="text" class="validate" required = "" aria-required = "true">
                            <label for="itemDescriptionUpdate" data-error = "Invalid format." data-success = "">Item Description <span style = "color: red;">*</span></label>
                        </div>
                    </div>
                    <i class = "left" style = "margin-top: -20px; margin-bottom: 50px; padding-left: 20px; color: red;">*Required Fields</i>
                </div>

                <div class="modal-footer" style = "margin-top: -60px;">
                    <button name = "action" class="btn green" style = "margin-right: 20px;">Confirm</button>
                    <button name = "action" class="btn green modal-close" style = "margin-right: 10px;">Cancel</button>
                </div>
            </form>

        </div>

        <!-- Modal Deactivate -->
        <div id="modalDeactivateItem" class="modal" style = "width: 450px;">
            <div class = "modal-header" style = "height: 55px;">
                <h4 style = "font-size: 30px; padding-left: 20px;">Deactivate Item</h4>
            </div>
            <input id="buildingToBeDeactivated" type="hidden">
            <div class="modal-content">
                <p style = "padding-left: 30px; font-size: 15px;">Are you sure you want to deactivate this item?</p>
                <br>
            </div>
            <div class="modal-footer" style = "margin-bottom: 0px;">
                <button onclick="deactivateBuilding()" name = "action" class="waves-effect default btn green">Confirm</button>
                <button name = "action" class="waves-effect default btn green modal-close" style = "margin-right: 10px;">Cancel</button>
            </div>
        </div>

        <!-- Modal Item Category -->
        <form id="modalItemCategory" class="modal" style = "width: 550px;">
            <div class = "modal-header" style = "height: 55px;">
                <h4 style = "font-size: 30px; padding-left: 20px;">Item Category</h4>
            </div>
            <div class="modal-content">
                <div class="input-field required col s12">
                    <input id="itemCategory" type="text" class="validate" maxlength="20" required = "" aria-required = "true" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,20}">
                    <label for="itemCategory" data-error = "Invalid format." data-success = "">Item Category <span style = "color: red;">*</span></label>
                </div>
                <i class = "left" style = "margin-top: 10px; margin-bottom: 50px; padding-left: 10px; color: red;">*Required Fields</i>
            </div>
            <br><br><br><br>

            <div class="modal-footer" style = "margin-right: 0px;">
                <button name = "action" class="btn green" style = "margin-right: 30px;">Confirm</button>
                <button name = "action" class="btn green modal-close" style = "margin-right: 10px;">Cancel</button>
            </div>


        </form>

        <!-- Modal Archive Item-->
        <div id="modalArchiveItem" class="modal" style = "height: 400px; width: 600px;">
            <div class="modal-content">
                <!-- Data Grid Deactivated Item/s-->
                <div id="admin1" class="col s12" style="margin-top: 0px">
                    <div class="z-depth-2 card material-table" style="margin-top: 0px">
                        <div class="table-header" style="height: 45px; background-color: #00897b;">
                            <h4 style = "padding-top: 10px; font-size: 30px; color: white; padding-left: 0px;">Archive Item/s</h4>
                            <a href="#" class="search-toggle btn-flat right"><i class="material-icons right" style="margin-left: 190px; color: #ffffff;">search</i></a>
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
                                <td>Item One</td>
                                <td>
                                    <button name = "action" class="btn red modal-close">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Item Two</td>
                                <td>
                                    <button name = "action" class="btn red modal-close">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Item Three</td>
                                <td>
                                    <button name = "action" class="btn red modal-close">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Item Three</td>
                                <td>
                                    <button name = "action" class="btn red modal-close">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Item Four</td>
                                <td>
                                    <button name = "action" class="btn red modal-close">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Item Five</td>
                                <td>
                                    <button name = "action" class="btn red modal-close">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Item Six</td>
                                <td>
                                    <button name = "action" class="btn red modal-close">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Item Seven</td>
                                <td>
                                    <button name = "action" class="btn red modal-close">Activate</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <button name = "action" class="btn green modal-close right" style = "margin-bottom: 10px; margin-right: 30px;">DONE</button>
        </div>


<!-- Data Grid -->
<div class = "col s7">
    <div class="row">
        <div id="admin" class="col s12" style="margin-top: 20px">
            <div class="z-depth-2 card material-table">
                <div class="table-header" style="background-color: #00897b;">
                    <h4 style = "font-size: 30px; color: white; padding-left: 0px;">Item Record</h4>
                    <div class="actions">
                        <button name = "action" class="btn tooltipped modal-trigger btn-floating black" data-position = "bottom" data-delay = "30" data-tooltip = "Archive Item/s" style = "margin-right: 10px;" href = "#modalArchiveItem"><i class="material-icons" style = "color: white">delete</i></button>
                        <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                    </div>
                </div>
                <table id="datatable">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Category</th>
                        <th>Description</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item One</td>
                        <td>Price One</td>
                        <td>Category One</td>
                        <td>Description</td>
                        <td><button name = "action" class="btn tooltipped modal-trigger btn-floating blue" data-position = "bottom" data-delay = "30" data-tooltip = "Update Item" style = "margin-right: 0px;" href = "#modalUpdateItem"><i class="material-icons" style = "color: black;">mode_edit</i></button>
                            <button name = "action" class="btn tooltipped modal-trigger btn-floating red" data-position = "bottom" data-delay = "30" data-tooltip= "Deactivate Item" style = "margin-right: 5px;" href = "#modalDeactivateItem"><i class="material-icons" style = "color: black;">not_interested</i></button>
                        </td>
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
	<script type="text/javascript">


		$(document).ready(function(){
			// the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
			$('.modal-trigger').leanModal({dismissible: false});
		});
			
		$("#formCreate").submit(function(e){
		    return false;
		});
		
		$("#formCreateItemCategory").submit(function(e){
		    return false;
		});
		
		$("#formUpdate").submit(function(e){
		    return false;
		});
	
		function createItem(){
			var itemName = document.getElementById("itemName").value;
			var itemPrice = document.getElementById("itemPrice").value;
			var itemDesc = document.getElementById("itemDesc").value;
			var itemCategory = document.getElementById("selectItemCategory").value;
			
			if (itemName == null || itemName == " " || itemName == "" ||
					itemPrice == 0 || itemPrice == null || 
					itemCategory == null || itemCategory == ""){
				
			}else{
			
			    $.ajax({
			        type: "POST",
			        url: "create",
			        data: {
			        	"item.strItemName" : itemName,
			        	"item.dblPrice" : itemPrice,
			        	"item.strItemDesc" : itemDesc,
			        	"item.itemCategory.strItemCategoryDesc" : itemCategory
			        },
			       	dataType: "json",
			        async: true,
			        success: function(data){
			        	if (data.status === "success"){
			        		Materialize.toast('Item successfully saved.', 3000, 'rounded');
			        		$("#itemName").val("");
			        		$("#itemPrice").val("");
			        		$("#itemDesc").val("");
			        		updateTable();
			        	}else if(data.status === "input"){
			        		Materialize.toast('Check all your inputs.', 3000, 'rounded');
			        	}else if(data.status === "failed-existing"){
			        		Materialize.toast('Item already exists.', 3000, 'rounded');
			        	}else if(data.status === "failed-database"){
			        		Materialize.toast('Please check your connection.', 3000, 'rounded');
			        	}
			        },
			        error: function(data){
			        	Materialize.toast('Error occured.', 3000, 'rounded');
			        }
			    });
			}
	
		}
	
		function updateItem(){
			var itemName = document.getElementById("itemNameUpdate").value;
			var itemPrice = document.getElementById("itemPriceUpdate").value;
			var itemDesc = document.getElementById("itemDescUpdate").value;
			var itemUpdateName = document.getElementById("itemNameToBeUpdated").value;
			
			if (itemName == null || itemName == "" || itemName == " " ||
					itemPrice == 0 || itemPrice == null){
				
			}else{
			    $.ajax({
			        type: "POST",
			        url: "update",
			        data: {
			        	"item.strItemName" : itemName,
			        	"item.dblPrice" : itemPrice,
			        	"item.strItemDesc" : itemDesc,
			        	"strItemName" : itemUpdateName
			        },
			       	dataType: "json",
			        async: true,
			        success: function(data){
			        	if (data.status === "success"){
			        		Materialize.toast('Item successfully updated.', 3000, 'rounded');
			        		$('#modalUpdateItem').closeModal();
			        		updateTable();
			        	}else if (data.status === "input"){
			        		Materialize.toast('Please check your inputs.', 3000, 'rounded');
			        	}else if (data.status === "failed-does-not-exist"){
			        		Materialize.toast('Item does not exist.', 3000, 'rounded');
			        	}else if (data.status === "failed-database"){
			        		Materialize.toast('Please check your connection.', 3000, 'rounded');
			        	}
			        },
			        error: function(data){
			        	Materialize.toast('Error occured.', 3000, 'rounded');
			        }
			    });
			}
		}
		
		function deactivateItem(){
			
			var itemNameDeactivate = document.getElementById("itemToBeDeactivated").value;
			$.ajax({
				type: "POST",
				url: "deactivate",
				data: {
					"itemId" : itemNameDeactivate
				},
				async: true,
				success: function(data){
					if (data.status === "success"){
						updateTable();
		        		$('#modalDeactivateItem').closeModal();
		        		Materialize.toast('Item successfully deactivated.', 3000, 'rounded');
					}else if (data.status === "failed-does-not-exist"){
						Materialize.toast('Item does not exist.', 3000, 'rounded');
					}else if (data.status === "failed-database"){
						Materialize.toast('Please check your connection.', 3000, 'rounded');
					}
				},
				error: function(data){
					Materialize.toast('Error occured.', 3000, 'rounded');
				}
			});
			
		}
		
		window.onload = windowOnLoad;
		
		function windowOnLoad(){
			updateTable();
			updateSelectItemCategory();
		}
		
		function updateTable(){
			
			$.ajax({
				type: "POST",
				url: "getItemList",
				dataType: "json",
				async: true,
				success: function(data){
	        		var table = $('#datatable').DataTable();
	        		table.clear().draw();
	        		var itemList = data.itemList;
	        		
	        		if (itemList == null){
	        			table.row.add( [
       		            "item One",
       		            "P 200",
       		            "item One",
       		            addButtons
       		            ]);
	        		}else{
	        		
		        		$.each(itemList, function(i, item){
							
		        			var addButtons = "<button value = "+item.itemId+" name = action class= 'modal-trigger btn-floating blue' onclick= openUpdate(this.value) ><i class= material-icons style = 'color: black;''>mode_edit</i></button>"+
		        			"<button name = action value = "+item.itemId+" class= 'modal-trigger btn-floating red' onclick = openDeactivate(this.value) ><i class= material-icons style = 'color: black;'>not_interested</i></button></td>";
		        			
		        			
		        			table.row.add( [
		    	        		            item.strItemName,
		    	        		            "P "+item.dblPrice,
		    	        		            item.itemCategory.strItemCategoryDesc,
		    	        		            item.strItemDesc,
		    	        		            addButtons
		    	        		            ]);
		        		});
	        		}
	        		
	        		table.draw();
	        		
				},
				error: function(data){
	        		Materialize.toast('Error in updating table.', 3000, 'rounded');
				}
			});
			
		}
		
		function openUpdate(itemId){
			$.ajax({
				type: "POST",
				url: "getItemInfo",
				data:{
					"itemId" : itemId
				},
				dataType: "json",
				async: true,
				success: function(data){
					$('#modalUpdateItem').openModal();
					$('#itemNameToBeUpdated').val(data.item.strItemName);
					$("#itemNameUpdate").val(data.item.strItemName);
	        		$("#itemPriceUpdate").val(data.item.dblPrice);
	        		$("#itemDescUpdate").val(data.item.strItemDesc);
				},
				error: function(data){
					alert("Error...");
				}
			});
			
		}
		
		function openDeactivate(itemId){
			$('#itemToBeDeactivated').val(itemId);
			$('#modalDeactivateItem').openModal();
		}
		
		function createItemCategory(){
			
			var itemCategoryDesc = document.getElementById("itemCategoryDesc").value;
			
			if (itemCategoryDesc == null || itemCategoryDesc == "" || itemCategoryDesc == " "){
				
			}else{
				
				$.ajax({
					type: "POST",
					url: "createItemCategory",
					data: {
						"itemCategory.strItemCategoryDesc": itemCategoryDesc
					},
					dataType: "json",
					async: true,
					success: function(data){
						if (data.status === "success"){
							Materialize.toast('Item Category is successfully created.', 3000, 'rounded');
							updateSelectItemCategory();
							$('modalItemCategory').closeModal();
						}else if (data.status === "input"){
							Materialize.toast('Please check all your inputs.', 3000, 'rounded');
						}else if (data.status === "failed-database"){
							Materialize.toast('Please check your connection.', 3000, 'rounded');
						}else if (data.status === "failed-existing"){
							Materialize.toast('Item Category already exists.', 3000, 'rounded');
						}
					},
					error: function(data){
						Materialize.toast('Error in creating item category.', 3000, 'rounded');
					}
				});
				
			}
			
		}
		
		function updateSelectItemCategory(){
			
			var selectItemCategory = document.getElementById("selectItemCategory");
			
			$.ajax({
				type: "POST",
				url: "getAllItemCategory",
				dataType: "json",
				async: true,
				success: function(data){
					var itemCategoryList = data.itemCategoryList;
					$('#selectItemCategory').html('');
					$.each(itemCategoryList, function(i, itemCategory){
						var option = document.createElement('option');
						option.appendChild(document.createTextNode(itemCategory.strItemCategoryDesc));
						option.value = itemCategory.strItemCategoryDesc;
						selectItemCategory.appendChild(option);
	        		});
					$('select').materialize_select();
				},
				error: function(data){
					Materialize.toast('Error in updating select.', 3000, 'rounded');
				}
			});
			
			
		}
		
	</script>