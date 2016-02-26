<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	    <!-- Import CSS/JS -->
	    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Inventory_Form.js"></script>
	    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Inventory_Form.css"/>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>

	
	<!-- Section -->
	<div class = "responsive col s12">
	    <div class = "row">
	        <div class = "col s7">
	            <h2>Item Maintenance</h2>
	
	            <!-- Create Items -->
	            <div class = "col s12">
	                <form class = "aside aside z-depth-3">
	                    <div class = "header">
	                        <h4>Item Form</h4>
	                    </div>
	

	                        <div class = "row">
	                        <div style = "padding-left: 10px;">
	                            <div class="input-field col s6">
	                                <input id="itemName" type="text" class="validate" name="item.strItemName" required>
	                                <label for="itemName" data-error = "Check format field." data-success = "">Item Name<span style = "color: red;">*</span></label>
	                            </div>
	                        </div>
	                        <div style = "padding-left: 10px;">
	                            <div class="input-field col s6">
	                                <input id="itemPrice" type="text" class="validate" name="item.dblPrice" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
	                                <label for="itemPrice" data-error = "Check format field." data-success = "">Item Price<span style = "color: red;">*</span></label>
	                            </div>
	                        </div>
	                    </div>
							<!-- Floating Button -->
							<div class="fixed-action-btn horizontal" style="position: absolute; margin-right: 570px; margin-bottom: 175px;">
								<button type = "submit" onclick="createItem()" name = "action"  class="btn-floating btn-large red"><i class="large material-icons">add</i>
								</button>
								<ul>
									<li><button name = "action" class="modal-trigger btn-floating black" href = "#modalDeactivate"><i class="material-icons">delete</i></button></li>
									<li><button name = "action" class="modal-trigger btn-floating green darken-1" href = "#modalUpdate"><i class="material-icons">mode_edit</i></button></li>
								</ul>
							</div>
	
	                        <div class="row" style = "padding-left: 10px;">
	                            <div class="input-field col s12">
	                                <input id="itemDesc" type="text" class="validate" name="item.strItemDesc" pattern = "[A-Za-z0-9\s]{1,29}">
	                                <label for="itemDesc" data-error = "" data-success = "">Item Description</label>
	                            </div>
	                        </div>


	                </form>

	            </div>
	        </div>
	
	        <!-- Modal Update -->
	        <div id="modalUpdate" class="modal">
	            <div class = "modal-header">
	                <h4>Update Item</h4>
	            </div>
	
		                <div class = "col s12">
		                    <div class = "col s6" style = "padding-left: 20px;">
		                        <label>Select Item Name to Update:</label>
		                        <c:if test="${itemList == null}">
		                        	<label>No item available.</label>
		                        </c:if>
		                        <c:if test="${itemList != null}">
			                        <select name="strItemName" id="selectItemUpdate" required = "" aria-required="true" onchange="placeValue()">
			                            <option value="" disabled selected>Item Name:</option>
										<c:forEach items="${itemList }" var="item">
											<option value="${item.strItemName}">${item.strItemName}</option>
										</c:forEach>
			                        </select>
		                        </c:if>
		                    </div>
		                </div>	
	
		                <div class = "col s12">
		                    <div class = "row">
		                        <div style = "padding-left: 10px;">
		                            <div class="input-field col s6">
		                                <input id="itemNameUpdate" type="text" class="validate" name="item.strItemName" required = "" aria-required = "true" pattern = "[A-Za-z0-9\s]{1,29}">
		                                <label for="itemNameUpdate" data-error = "Check format field." data-success = "">New Item Name</label>
		                            </div>
		                        </div>
		                        <div style = "padding-left: 10px;">
		                            <div class="input-field col s6">
		                                <input id="itemPriceUpdate" type="text" class="validate" name="item.dblPrice" required = "" aria-required = "true" pattern = "(0\.((0[1-9]{1})|([1-9]{1}([0-9]{1})?)))|(([1-9]+[0-9]*)(\.([0-9]{1,2}))?)">
		                                <label for="itemPriceUpdate" data-error = "Check format field." data-success = "">New Item Price</label>
		                            </div>
		                        </div>
		                    </div>
		                </div>
	
	                    <div style = "padding-left: 20px;">
	                        <div class="input-field col s12">
	                            <input id="itemDescUpdate" type="text" class="validate" name="item.strItemDesc">
	                            <label for="itemDescUpdate" data-error = "Check format field." data-success = "">New Item Description</label>
	                        </div>
	                    </div>
						<br><br>

					<div class="modal-footer">
						<button onclick="updateItem()" type="submit" name="action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>

						<button class="waves-effect waves-light btn red" onclick="$('#modalUpdate').closeModal()">Cancel</button>
					</div>
	

	        </div>
	
	
	        <!-- Modal Deactivate -->
	        <div id="modalDeactivate" class="modal">
	            <div class = "modal-header">
	                <h4>Deactivate Item</h4>
	            </div>
	            <div class="modal-content">
		                <div class = "col s12">
		                    <div class = "col s6" style = "padding-left: 20px;">
		                        <label>Select Item Name to Deactivate:</label>
		                        <c:if test="${itemList == null}">
			                       <label>No item available.</label>
			                    </c:if>
			                    <c:if test="${itemList != null}">
									<select name="strItemName" id="itemNameDeactivate" required = "" aria-required="true">
										<option value="" disabled selected>Item Name:</option>
											<c:forEach items="${itemList }" var="item">
												<option value="${item.strItemName}">${item.strItemName}</option>
											</c:forEach>
									</select>
								</c:if>
		                    </div>
		                </div>
	            </div>
	
	            <div class="modal-footer">
	                <button onclick="deactivateItem()" name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
					
	                <button onclick="$('#modalDeactivate').closeModal()" class="waves-effect waves-light btn red">Cancel</button>
	            </div>
	        </div>
	
	        <!-- Data Grid -->
	        <div class = "responsive col s5">
	            <div class = "col s4 z-depth-2 " style = "margin-left: 60px; margin-top: 20px; width: 450px; height: 70px;">
	                <nav style = "height: 50px; margin-top: 10px; background-color: #00897b">
	                    <div class="nav-wrapper">
	                        <div>
	                            <div class="input-field"  style = "height: 50px;">
	                                <input id="searchItem" type="search">
	                                <label for="search"><i class="material-icons">search</i></label>
	                                <i class="material-icons">close</i>
	                            </div>
	                        </div>
	                    </div>
	                </nav>
	            </div>
	
	            <br>
	            <br>
	            <br>
	            <br>
	            <br>
	
	            <div class = "aside z-depth-2" style = "margin-left: 60px; width: 450px; height: 310px; overflow: auto;">
	                <table id="tableItem" class = "responsive" style = "margin-top: 10px; margin-left: 0px; width: 100%; height: 200px;">
	
	                    <thead class = "fixed-header">
	                    <tr>
	                        <th data-field="id">Item Name</th>
	                        <th data-field="price">Item Price</th>
	                        <th data-field="name">Item Description</th>
	                    </tr>
	                    </thead>
	                    <tbody id="tableItemBody">
			                <c:if test="${itemList  == null }">
			                	<tr>
				                	<td>No available items.</td>
				            	</tr>
				            </c:if>
			                <c:if test="${itemList != null}">
			                	<c:forEach items="${itemList }" var="item">
			                		<tr id="rowItem">
					                    <td>${item.strItemName }</td>
					                    <td>P ${item.dblPrice }</td>
					                    <td>${item.strItemDesc }</td>
				                	</tr>
			                	</c:forEach>
			                </c:if>
	                    
	                    </tbody>
	                </table>
	            </div>
	        </div>
	
	
	    </div>
	</div>
	
	<script type="text/javascript">
			
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
