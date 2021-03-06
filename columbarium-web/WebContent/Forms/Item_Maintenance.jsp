<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>SAD Forms</title>

    <!-- Materialize -->
    <meta charset="UTF-8">
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.95.3/js/materialize.min.js"></script>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>


    <!-- Import CSS/JS -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Inventory_Form.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/experiment-item.js"></script>
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Inventory_Form.css"/>


</head>
<body class = "responsive">

<!-- Navbar -->
<div class="navbar-fixed navbar-leo">
    <div class = "responsive">
    <nav>
        <div class="nav-wrapper">
            <a href="#!" class="brand-logo left">Logo</a>
            <ul class="right hide-on-med-and-down">
                <li><a class="dropdown-button" href="#!" data-beloworigin="true" data-activates="dropdown1">Maintenance<i class="material-icons right">arrow_drop_down</i></a></li>
                <li><a class="dropdown-button" href="#!" data-beloworigin="true" data-activates="dropdown2">Transaction<i class="material-icons right">arrow_drop_down</i></a></li>
                <li><a class="dropdown-button" href="#!" data-beloworigin="true" data-activates="dropdown3">Queries<i class="material-icons right">arrow_drop_down</i></a></li>
                <li><a class="dropdown-button" href="#!" data-beloworigin="true" data-activates="dropdown4">Reports<i class="material-icons right">arrow_drop_down</i></a></li>
                <li><a class="dropdown-button" href="#!" data-beloworigin="true" data-activates="dropdown5">Utilities<i class="material-icons right">arrow_drop_down</i></a></li>
            </ul>
        </div>
    </nav>
    </div>
</div>

<!-- Dropdown Maintenance-->
<ul id="dropdown1" class="dropdown-content">
    <li><a href="Item_Maintenance.html">Inventory</a></li>
    <li><a href="Services_Maintenance.html">Service</a></li>
    <li class="divider"></li>
    <li><a href="Package_Maintenance.html">Package</a></li>
    <li><a href="Building_Maintenance.html">Building</a></li>
    <li><a href="Floor_Maintenance.html">Floor</a></li>
    <li><a href="Blocks_Maintenance.html">Block</a></li>
    <li><a href="vaults.html">Vaults</a></li>
    <li><a href="FullBodyCrypts.html">Body Crypts</a></li>
</ul>

<!-- Dropdown Transaction -->
<ul id="dropdown2" class="dropdown-content">
    <li><a href="Customer.html">Customer</a></li>
    <li><a href="Reservation_Transaction.html">Reservation</a></li>
    <li><a href="scheduling.html">Scheduling</a></li>
    <li class="divider"></li>
    <li><a href="Collection_Transaction.html">Collection</a></li>
    <li><a href="UnitOwnership.html">Transferring</a></li>
</ul>

<!-- Dropdown Queries -->
<ul id="dropdown3" class="dropdown-content">
    <li><a href="Maintenance.jsp.html">Product</a></li>
    <li><a href="Employee-Maintenance.jsp.html">Employee</a></li>
    <li class="divider"></li>
    <li><a href="Customer-Maintenance.jsp.html">Customer</a></li>
</ul>

<!-- Dropdown Reports -->
<ul id="dropdown4" class="dropdown-content">
    <li><a href="Reservation_Report.html">Reservation Record</a></li>
    <li><a href="scheduling-report.html">Scheduling Record</a></li>
    <li class="divider"></li>
    <li><a href="Collection_Report.html">Collection Record</a></li>
    <li><a href="transferring-report.html">Transferring Record</a></li>
</ul>

<!-- Dropdown Utilities -->
<ul id="dropdown5" class="dropdown-content">
    <li><a href="Employee.html">Employee</a></li>
    <li class="divider"></li>
</ul>

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
            <h2>Item Maintenance</h2>

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
		                        <select name="strItemName">
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
                            <input id="descUpdate" type="text" class="validate" name="item.strItemDesc">
                            <label for="descUpdate">New Item Description</label>
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
        <div class = "col s5">
            <div class = "col s4 z-depth-2" style = "margin-top: 20px; width: 100%; height: 70px;">
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
                <table  class="responsive" style = "width: 100%;">

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

<!-- Footer -->
<footer class="page-footer" style = "background-color: #ff8f00;">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
            </div>
            <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            © 2014 Copyright Text
            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
        </div>
    </div>
</footer>

</body>
</html>

