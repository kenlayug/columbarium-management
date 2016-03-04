<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	    <!-- Import CSS/JS -->
	    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Inventory_Form.js"></script>
	    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Inventory_Form.css"/>

		<link rel="stylesheet" href="../css/style.css">

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
						<button onClick = "saveButton()" type = "submit" name = "action" class="btn red right" style = "margin-right: 10px;">Create</button>

					</form>

	            </div>
	        </div>
	
	        <!-- Modal Update -->
	        <div id="modalUpdateItem" class="modal" style = "width: 700px;">
	            <div class = "modal-header">
	                <h4>Update Item</h4>
	            </div>
					<form id="formUpdate">
		                <div class = "col s12">
		                    <div class = "row">
		                        <div style = "padding-left: 10px;">
		                            <div class="input-field col s6">
		                                <input value=" " id="itemNameUpdate" type="text" class="validate" name="item.strItemName" required = ""  pattern = "[A-Za-z0-9\s]{1,29}">
		                                <label class="active" for="itemNameUpdate" data-error = "Invalid format." data-success = "">New Item Name<span style = "color: red;">*</span></label>
		                            </div>
		                        </div>
		                        <div style = "padding-left: 10px;">
		                            <div class="input-field col s6">
		                                <input value="0" id="itemPriceUpdate" type="text" class="validate" name="item.dblPrice" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
		                                <label class="active" for="itemPriceUpdate" data-error = "Invalid format." data-success = "">New Item Price<span style = "color: red;">*</span></label>
		                            </div>
		                        </div>
		                    </div>
		                </div>
	
	                    <div style = "padding-left: 20px;">
	                        <div class="input-field col s12">
	                            <input value=" " id="itemDescUpdate" type="text" class="validate" name="item.strItemDesc">
	                            <label class="active" for="itemDescUpdate" data-error = "Invalid format." data-success = "">New Item Description</label>
	                        </div>
	                    </div>

					<i class = "left" style = "margin-bottom: 0px; padding-left: 30px; color: red;">*Required Fields</i>
				<br>

					<div class="modal-footer">
							<button onclick="updateItem()" type="submit" name="action" class="btn red" style = "margin-top: 30px; margin-left: 10px; ">Confirm</button>
						<button class="btn red modal-close" style = "margin-top: 30px" onclick="$('modalUpdateItem').closeModal()">Cancel</button>
					</div>
				</form>


	        </div>


			<!-- Modal Deactivate -->
			<div id="modalDeactivateItem" class="modal" style = "width: 600px;">
				<div class = "modal-header">
					<h4>Deactivate Item</h4>
				</div>
				<div class="modal-content">
					<p style = "padding-left: 90px; font-size: 15px;">Are you sure you want to deactivate this item?</p>
				</div>
				<div class="modal-footer">
					<button name = "action" class="btn red" style = "margin-left: 10px; ">Confirm</button>
					<button name = "action" class="btn red">Cancel</button>
				</div>
			</div>

			<!--ganto ung declaration sa btn ken	<button class="modal-trigger btn red" href = "#modalSuccessMessage">btnSuccess</button>    -->
			<!-- Modal Success -->
			<div id="modalSuccessMessage" class="modal" style = "width: 350px; height: 155px;">
				<div class = "modal-header" style = "height: 50px;">
					<div class = "row">
						<div class = "col s10">
							<h4 style = "padding-left: 10px; font-size: 25px;">Success Message</h4>
						</div>
						<div class = "col s2">
							<a class="btn-floating btn-small modal-close black right" style = "margin-top: 5px; margin-right: 5px; padding-bottom: 10px;"><i class="material-icons" style = "padding-bottom: 5px;">&#10006</i></a>
						</div>
					</div>
				</div>
				<div class="modal-content">
					<p style = "padding-top: 0px; padding-left: 50px; font-size: 16px; font-family: arial;">Record has been saved.</p>
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
									<a href="#" class="search-toggle btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
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
								
									<c:if test="${itemList == null }">
										<tr><td>No available items.</td></tr>
									</c:if>
									
									<c:if test="${itemList != null }">
										<c:forEach items="${itemList }" var="item">
											<tr>
												<td>${item.strItemName }</td>
												<td>P ${item.dblPrice }</td>
												<td>${item.strItemDesc }</td>
												<td><button name = "action" class="modal-trigger btn-floating green" onclick="openUpdate('${item.strItemName}')"><i class="material-icons">mode_edit</i></button>
													<button name = "action" class="modal-trigger btn-floating red" href = "#modalDeactivateItem"><i class="material-icons">delete</i></button></td>
											</tr>
										</c:forEach>
									</c:if>
								
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
		
		$("#formUpdate").submit(function(e){
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
		
		function openUpdate(itemName){
			alert(itemName);
			$.ajax({
				type: "POST",
				url: "getItemInfo",
				data:{
					"strItemName" : itemName
				},
				dataType: "json",
				async: true,
				success: function(data){
					$('#modalUpdateItem').openModal();
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
