<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	
</head>
<body>

	    <!-- Import CSS/JS -->
	    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Inventory_Form.js"></script>
	    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Inventory_Form.css"/>
	

	<!-- Floating Button -->
	<div class="fixed-action-btn horizontal" style="position: absolute; margin-right: 620px; margin-bottom: 155px;">
	    <button name = "action" class="btn-floating btn-large red"><i class="large material-icons">add</i>
	    </button>
	    <ul>
	        <li><button name = "action" class="modal-trigger btn-floating black" href = "#modal2"><i class="material-icons">delete</i></button></li>
	        <li><button name = "action" class="modal-trigger btn-floating green darken-1" href = "#modal1"><i class="material-icons">mode_edit</i></button></li>
	    </ul>
	</div>
	
	<!-- Section -->
	<div class = "responsive col s12">
	    <div class = "row">
	        <div class = "col s7">
	            <h4>Item Maintenance</h4>
	
	            <!-- Create Inventory -->
	            <div class = "col s12">
	                <div class = "aside aside z-depth-3">
	                    <div class = "header">
	                        <h4>Item Form</h4>
	                    </div>
	
	
	                    <form class = "col s12" method="POST" action="create">
	                    <div class = "col s12">
	                        <div class = "row">
	                        <div style = "padding-left: 10px;">
	                            <div class="input-field col s6">
	                                <input id="itemName" type="text" class="validate" name="item.strItemName">
	                                <label for="itemName" data-error = "wrong" data-success = "right">Item Name</label>
	                            </div>
	                        </div>
	                        <div style = "padding-left: 10px;">
	                            <div class="input-field col s6">
	                                <input id="itemPrice" type="text" class="validate" name="item.dblPrice">
	                                <label for="itemPrice" data-error = "wrong" data-success = "right">Item Price</label>
	                            </div>
	                        </div>
	                    </div>
	                    </div>
	
	                        <div class="row">
	                            <div class="input-field col s12">
	                                <input id="desc" type="text" class="validate" name="item.strItemDesc">
	                                <label for="desc">Item Description</label>
	                            </div>
	                        </div>
	                        <button class="btn waves-effect waves-light" type="submit" name="action">Submit
	    						<i class="material-icons right">send</i>
	  						</button>
	                    </form>
	
	                </div>
	            </div>
	        </div>
	
	        <!-- Modal Update -->
	        <div id="modal1" class="modal">
	            <div class = "modal-header">
	                <h4>Update Item</h4>
	            </div>
	            <div class="modal-content">
	                <form class = "col s12" action="update" method="post">
	
		                <div class = "col s12">
		                    <div class = "col s6" style = "padding-left: 20px;">
		                        <label>Select Item Name to Update:</label>
		                        <c:if test="${itemList == null}">
		                        	<label>No item available.</label>
		                        </c:if>
		                        <c:if test="${itemList != null}">
			                        <select name="strItemName" onchange="loadDetails(this.value)">
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
		                                <input id="itemNameUpdate" type="text" class="validate" name="item.strItemName">
		                                <label for="itemNameUpdate" data-error = "wrong" data-success = "right">New Item Name</label>
		                            </div>
		                        </div>
		                        <div style = "padding-left: 10px;">
		                            <div class="input-field col s6">
		                                <input id="itemPriceUpdate" type="text" class="validate" name="item.dblPrice">
		                                <label for="itemPriceUpdate" data-error = "wrong" data-success = "right">New Item Price</label>
		                            </div>
		                        </div>
		                    </div>
		                </div>
	
	                    <div class="row">
	                        <div class="input-field col s12">
	                            <input id="itemdescUpdate" type="text" class="validate" name="item.strItemDesc">
	                            <label for="itemdescUpdate">New Item Description</label>
	                        </div>
	                    </div>
	
	            </div>
	            <div class="modal-footer">
	                <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
	                </form>
	                <button class="waves-effect waves-light btn red" href = "Blocks_Maintenance.html">Cancel</button>
	            </div>
	        </div>
	
	
	        <!-- Modal Deactivate -->
	        <div id="modal2" class="modal">
	            <div class = "modal-header">
	                <h4>Deactivate Item</h4>
	            </div>
	            <div class="modal-content">
					<form action="deactivate" method="post">
		                <div class = "col s12">
		                    <div class = "col s6" style = "padding-left: 20px;">
		                        <label>Select Item Name to Deactivate:</label>
		                        <c:if test="${itemList == null}">
			                       <label>No item available.</label>
			                    </c:if>
			                    <c:if test="${itemList != null}">
									<select name="strItemName">
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
	                <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
					</form>
	                <button class="waves-effect waves-light btn red">Cancel</button>
	            </div>
	        </div>
	
	        <!-- Data Grid -->
	        <div class = "responsive col s5">
	            <div class = "col s4 z-depth-2 " style = "margin-left: 60px; margin-top: 20px; width: 450px; height: 70px;">
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
	
	            <br>
	            <br>
	            <br>
	            <br>
	            <br>
	
	            <div class = "aside z-depth-2" style = "margin-left: 60px; width: 450px; height: 310px; overflow: auto;">
	                <table class = "highlight z-depth-3" style = "margin-top: 10px; margin-left: 0px; width: 100%; height: 200px;">
	
	                    <thead class = "fixed-header">
	                    <tr>
	                        <th data-field="id">Item Name</th>
	                        <th data-field="price">Item Price</th>
	                        <th data-field="name">Item Description</th>
	                    </tr>
	                    </thead>
	                    <tbody>
			                <c:if test="${itemList  == null }">
			                	<tr>
				                	<td>No available items.</td>
				            	</tr>
				            </c:if>
			                <c:if test="${itemList != null}">
			                	<c:forEach items="${itemList }" var="item">
			                		<tr>
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

</body>
</html>