<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	    <!-- Import CSS/JS -->
	    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Inventory_Form.js"></script>
	    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Inventory_Form.css"/>

		<link rel="stylesheet" href="../css/style.css">
		<script type="text/javascript" src = "../js/index.js"></script>

	<!-- Section -->
	<div class = "responsive col s12">
	    <div class = "row">
	        <div class = "col s5">
	            <h2 style = "font-size: 30px;margin-bottom: 10px;">Item Maintenance</h2>
	
	            <!-- Create Items -->
	            <div class = "col s12">
	                <form class = "aside aside z-depth-3" style = "margin-top: 0px;" id="formCreate">
	                    <div class = "header">
	                        <h4 style = "font-size: 30px;padding-top: 10px;">Item Form</h4>
	                    </div>
	

	                        <div class = "row">
	                        <div style = "padding-left: 10px;">
	                            <div class="input-field col s6">
	                                <input id="itemName" type="text" class="validate" name="item.strItemName" required = "" aria-required="true">
	                                <label for="itemName" data-error = "Invalid format." data-success = "">Item Name<span style = "color: red;">*</span></label>
	                            </div>
	                        </div>
	                        <div style = "padding-left: 10px;">
	                            <div class="input-field col s6">
	                                <input id="itemPrice" type="text" class="validate" name="item.dblPrice" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
	                                <label for="itemPrice" data-error = "Invalid Format." data-success = "">Item Price<span style = "color: red;">*</span></label>
	                            </div>
	                        </div>
	                    </div>
	
	                        <div class="row" style = "padding-left: 10px;">
	                            <div class="input-field col s12">
	                                <input id="itemDesc" type="text" class="validate" name="item.strItemDesc">
	                                <label for="itemDesc" data-error = "Invalid Format" data-success = "">Item Description</label>
	                            </div>
	                        </div>
						<i class = "left" style = "margin-bottom: 0px; padding-left: 20px; color: red;">*Required Fields</i>
	                	<br>
						<button type = "submit" name = "action" class="waves-effect waves-light btn red right" style = "margin-right: 10px;">Create</button>
	                </form>

	            </div>
	        </div>
	
	        <!-- Modal Update -->
	        <form id="modal1" class="modal">
	            <div class = "modal-header">
	                <h4>Update Item</h4>
	            </div>
	
		                <div class = "col s12">
		                    <div class = "row">
		                        <div style = "padding-left: 10px;">
		                            <div class="input-field col s6">
		                                <input id="itemNameUpdate" type="text" class="validate" name="item.strItemName" required = "" aria-required = "true" pattern = "[A-Za-z0-9\s]{1,29}">
		                                <label for="itemNameUpdate" data-error = "Invalid format." data-success = "">New Item Name<span style = "color: red;">*</span></label>
		                            </div>
		                        </div>
		                        <div style = "padding-left: 10px;">
		                            <div class="input-field col s6">
		                                <input id="itemPriceUpdate" type="text" class="validate" name="item.dblPrice" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
		                                <label for="itemPriceUpdate" data-error = "Invalid format." data-success = "">New Item Price<span style = "color: red;">*</span></label>
		                            </div>
		                        </div>
		                    </div>
		                </div>
	
	                    <div style = "padding-left: 20px;">
	                        <div class="input-field col s12">
	                            <input id="itemDescUpdate" type="text" class="validate" name="item.strItemDesc">
	                            <label for="itemDescUpdate" data-error = "Invalid format." data-success = "">New Item Description</label>
	                        </div>
	                    </div>
						<br><br>

					<div class="modal-footer">
						<button onclick="updateItem()" type="submit" name="action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>

						<button class="waves-effect waves-light btn red modal-close" >Cancel</button>
					</div>


	        </form>
	
	
	        <!-- Modal Deactivate -->
	        <div id="modal2" class="modal">
	            <div class = "modal-header">
	                <h4>Deactivate Item</h4>
	            </div>
	            <div class="modal-content">
					<p style = "padding-left: 110px; font-size: 20px;">Are you sure you want to deactivate this item?</p>
					<br>
	            </div>
	
	            <div class="modal-footer">
	                <button onclick="deactivateItem()" name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
					
	                <button class="waves-effect waves-light btn red modal-close">Cancel</button>
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
									<th>Item Name</th>
									<th>Item Price</th>
									<th>Item Description</th>
									<th>Action</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>Item One</td>
									<td>Price One</td>
									<td>Description One</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Two</td>
									<td>Price Two</td>
									<td>Description Two</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Three</td>
									<td>Price Three</td>
									<td>Description Three</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Four</td>
									<td>Price Four</td>
									<td>Description Four</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Five</td>
									<td>Price Five</td>
									<td>Description Five</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Six</td>
									<td>Price Six</td>
									<td>Description Six</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Seven</td>
									<td>Price Seven</td>
									<td>Description Seven</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Eight</td>
									<td>Price Eight</td>
									<td>Description Eight</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Nine</td>
									<td>Price Nine</td>
									<td>Description Nine</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Ten</td>
									<td>Price Ten</td>
									<td>Description Ten</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Eleven</td>
									<td>Price Eleven</td>
									<td>Description Eleven</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Twelve</td>
									<td>Price Twelve</td>
									<td>Description Twelve</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Thirteen</td>
									<td>Price Thirteen</td>
									<td>Description Thirteen</td>
									<td><button name = "action" class="modal-trigger btn-floating green" href = "#modal1"><i class="material-icons">mode_edit</i></button>
										<button name = "action" class="modal-trigger btn-floating red" href = "#modal2"><i class="material-icons">delete</i></button></td>
								</tr>
								<tr>
									<td>Item Fourteen</td>
									<td>Price Fourteen</td>
									<td>Description Fourteen</td>
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
	
	<script type="text/javascript">
			
		$("#formCreate").submit(function(e){
		    return false;
		});
	
		function createItem(){
			var itemName = document.getElementById("itemName").value;
			var itemPrice = document.getElementById("itemPrice").value;
			var itemDesc = document.getElementById("itemDesc").value;
		    $.ajax({
		        type: "POST",
		        url: "create",
		        data: {
		        	"item.strItemName" : itemName,
		        	"item.dblPrice" : itemPrice,
		        	"item.strItemDesc" : itemDesc
		        },
		       	dataType: "json",
		        async: true,
		        success: function(data){
		        	if (data.status === "success"){
		        		alert("Item "+data.item.strItemName+" created!");
		        		$("#itemName").val("");
		        		$("#itemPrice").val("");
		        		$("#itemDesc").val("");
		        		updateTable();
		        	}
		        },
		        error: function(data){
		        	
		        	alert("Error!");
		        }
		    });
	
		    return false;
		}
	
		function updateItem(){
			var itemName = document.getElementById("itemNameUpdate").value;
			var itemPrice = document.getElementById("itemPriceUpdate").value;
			var itemDesc = document.getElementById("itemDescUpdate").value;
			var itemUpdateName = document.getElementById("selectItemUpdate").value;
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
		        		alert("Item "+data.strItemName+" updated!");
		        		$("#itemNameUpdate").val("");
		        		$("#itemPriceUpdate").val("");
		        		$("#itemDescUpdate").val("");
		        		$("#modalUpdate").closeModal();
		        		updateTable();
		        	}
		        },
		        error: function(data){
		        	
		        	alert("Error!");
		        }
		    });
		
		    return false;
		}
		
		function deactivateItem(){
			
			var itemNameDeactivate = document.getElementById("itemNameDeactivate").value;
			$.ajax({
				type: "POST",
				url: "deactivate",
				data: {
					"strItemName" : itemNameDeactivate
				},
				async: true,
				success: function(data){
					if (data.status === "success"){
						updateTable();
		        		$("#modalDeactivate").closeModal();
						alert("Item "+data.strItemName+" successfully deactivated.");
					}
				},
				error: function(data){
					alert("Error...");
				}
			});
			
		}
		
		$("#searchItem").on("change keyup paste",function(){
			searchItemAndUpdateTable();
		});
		
		function searchItemAndUpdateTable(){
			var itemName = document.getElementById("searchItem").value;
			$.ajax({
				type: "POST",
				url: "searchItem",
				data: {
					"strItemName" : itemName
				},
				async: true,
				success: function(data){
					
					var itemList = data.itemList;
	        		$("#tableItem tbody").remove();
	        		$.each(itemList, function(i, item){
		        		tableRow = $("<tr>").append(
		        				$("<td>").text(item.strItemName),
		        				$("<td>").text("P "+item.dblPrice),
		        				$("<td>").text(item.strItemDesc));
		        		$("#tableItem").append(tableRow);
	        		});
					
				},
				error: function(data){
					alert("Error...");
				}
			});
		
			
		}
		
		function updateTable(){
			$.ajax({
				type: "POST",
				url: "getItemList",
				dataType: "json",
				async: true,
				success: function(data){
	        		$("#tableItem tbody").remove();
	        		var tableRow;
	        		var itemList = data.itemList;
	        		
	        		$.each(itemList, function(i, item){
						
		        		tableRow = $("<tr>").append(
		        				$("<td>").text(item.strItemName),
		        				$("<td>").text("P "+item.dblPrice),
		        				$("<td>").text(item.strItemDesc));
		        		$("#tableItem").append(tableRow);
	        		});
	        		
				},
				error: function(data){
					alert("Error in updating table");
				}
			});
			
		}
		
		function placeValue(){
			
			var itemSelected = document.getElementById("selectItemUpdate").value;
			
			$.ajax({
				type: "POST",
				url: "getItemInfo",
				data:{
					"strItemName" : itemSelected
				},
				dataType: "json",
				async: true,
				success: function(data){
					$("#itemNameUpdate").val(data.item.strItemName);
	        		$("#itemPriceUpdate").val(data.item.dblPrice);
	        		$("#itemDescUpdate").val(data.item.strItemDesc);
				},
				error: function(data){
					alert("Error...");
				}
			});
			
		}
		
	</script>	
