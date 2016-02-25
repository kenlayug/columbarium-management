
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
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Inventory_Form.css"/>


</head>
<body>

<!-- Navbar -->
<div class="navbar-fixed navbar-leo">
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

<!-- Dropdown Maintenance-->
<ul id="dropdown1" class="dropdown-content">
    <li><a href="Inventory.html">Inventory</a></li>
    <li><a href="Services_Record_Form.html">Service</a></li>
    <li class="divider"></li>
    <li><a href="Package_Record_Form.html">Package</a></li>
    <li><a href="Building_Record_Form.html">Building</a></li>
    <li><a href="Floor_Record_Form.html">Floor</a></li>
    <li><a href="Blocks_Record_Form.html">Block</a></li>
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
    <li><a href="Reservation-Report.html">Reservation Record</a></li>
    <li><a href="scheduling-report.html">Scheduling Record</a></li>
    <li class="divider"></li>
    <li><a href="Collection-Report.html">Collection Record</a></li>
    <li><a href="transferring-report.html">Transferring Record</a></li>
</ul>

<!-- Dropdown Utilities -->
<ul id="dropdown5" class="dropdown-content">
    <li><a href="Employee.html">Employee</a></li>
    <li class="divider"></li>
</ul>

<!-- Floating Button -->
<div class="fixed-action-btn horizontal" style="position: absolute; margin-right: 550px; margin-bottom: 155px;">
    <button name = "action" class="btn-floating btn-large red"><i class="large material-icons">add</i>
    </button>
    <ul>
        <li><button name = "action" class="btn-floating black"><i class="material-icons">delete</i></button></li>
        <li><button name = "action" class="btn-floating green darken-1"><i class="material-icons">mode_edit</i></button></li>
    </ul>
</div>

<!-- Section -->
<<<<<<< HEAD:columbarium-web/WebContent/Forms/Inventory.jsp
<h2>Item Maintenance</h2>
=======
<div class = col s12 >
>>>>>>> 9cc96c6425c0b296418c271d94a19d6dd1c13e43:columbarium-web/WebContent/Forms/Inventory.html
    <div class = "row">
        <div class = "col s7">
            <h4>Item Maintenance</h4>

            <!-- Create Inventory -->
            <div class = "col s12">
                <div class = "aside aside z-depth-3">
                    <div class = "header">
<<<<<<< HEAD:columbarium-web/WebContent/Forms/Inventory.jsp
                        <h4>Create Item</h4>
=======
                        <h4>Item Form</h4>
>>>>>>> 9cc96c6425c0b296418c271d94a19d6dd1c13e43:columbarium-web/WebContent/Forms/Inventory.html
                    </div>


                     <form class = "col s12" action="create" method="post">
                        <div class="row" style = "padding-left: 10px;">
                            <div class="input-field col s12">
                                <input id="level" type="text" class="validate" name="item.strItemName">
                                <label for="level" data-error = "wrong" data-success = "right">Item Name</label>
                            </div>
                        </div>
<<<<<<< HEAD:columbarium-web/WebContent/Forms/Inventory.jsp
=======
                    </form>

                    <form class = "col s12">
>>>>>>> 9cc96c6425c0b296418c271d94a19d6dd1c13e43:columbarium-web/WebContent/Forms/Inventory.html
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="desc" type="text" class="validate" name="item.strItemDesc">
                                <label for="desc">Item Description</label>
                            </div>
                        </div>
<<<<<<< HEAD:columbarium-web/WebContent/Forms/Inventory.jsp
                    <!-- <a class="waves-effect waves-light btn black right" style = "margin-right: 10px; width: 180px;  margin-top: 60px;"><i class="mdi-content-add-circle left"></i>Create</a>
                   -->
                   <button class="btn-large waves-effect waves-light" type="submit" name="action">SUBMIT
                   </form> 
                   
                </div>
            </div>



            <!-- Update Inventory -->
            <div class = "col s12">
                <div class = "aside aside z-depth-3" style = "margin-top: 50px;">
                    <div class = "header">
                        <h4>Update Item</h4>
                    </div>
                    <!-- Select Item Name -->
                    <br>
                    <div class = "col s6" style = "padding-left: 20px;">
                        <form action="update" method="post">
                        <label>Select Item Name</label>
                        <select name="strItemName">
                        	<c:if test="${itemList == null }">
                        		<option value="" disabled selected>No items available</option>
                        	</c:if>
                        	<c:if test="${itemList != null }">
	                        	<option value="" disabled selected>Item Name:</option>
                        		<c:forEach items="${itemList }" var="item">
		                            <option value="${item.strItemName }">${item.strItemName }</option>
                        		</c:forEach>
                        	</c:if>
                        </select>
                         
                                    <div class="input-field col s4">
                                        <input id="name" type="text" class="validate" name="item.strItemName">
                                        <label for="name">Input new item name:</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input id="qty1" type="text" class="validate" name="item.dblPrice">
                                        <label for="qty1">Input new item Price:</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input id="desc1" type="text" class="validate" name="item.strItemDesc">
                                        <label for="desc1">Input new item description:</label>
                                    </div>
                                <button class="btn-large waves-effect waves-light" type="submit" name="action">SUBMIT
                            </form>
                        
                        
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>





                    <!-- Modal Structure -->
                     <div id="modal1" class="modal">
                        <div class = "modal-header">
                            <h4 style = "padding-top: 10px;">Update Item</h4>
                        </div>
                        <div class="modal-content">

                            <form class = "col s12" action="update" method="post">
                                <div class="row">
                                    <div class="input-field col s4">
                                        <input id="name" type="text" class="validate" name="item.strItemName">
                                        <label for="name">Input new item name:</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input id="qty1" type="text" class="validate" name="item.dblItemPrice">
                                        <label for="qty1">Input new item Price:</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input id="desc1" type="text" class="validate" name="item.stItemDesc">
                                        <label for="desc1">Input new item description:</label>
                                    </div>
                                </div>
                                <button class="btn-large waves-effect waves-light" type="submit" name="action">SUBMIT
                            </form>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>

                        </div> 
                        <!--  <div class="modal-footer">
                            <a class="waves-effect waves-light btn black right" style = "margin-right: 10px; width: 180px;"><i class="mdi-content-add-circle left"></i>Update</a>
                        </div>-->
                    </div><!-- 
                    <button data-target = "modal1" class="waves-effect waves-light modal-trigger black right" style = "margin-right: 10px; width: 180px; height: 35px; color: white; margin-top: 20px;"><i class="mdi-content-create left"></i>UPDATE</button>
               	 -->
=======
                    </form>

>>>>>>> 9cc96c6425c0b296418c271d94a19d6dd1c13e43:columbarium-web/WebContent/Forms/Inventory.html
                </div>
            </div>
        </div>

<<<<<<< HEAD:columbarium-web/WebContent/Forms/Inventory.jsp
            <!-- Deactivate Item -->
            <div class = "col s12">
                <div class = "aside aside z-depth-3" style = "margin-top: 50px;">
                    <div class = "header">
                        <h4>Deactivate Item</h4>
                    </div>

                    <!-- Select Item Name -->
                    <br>
                    <div class = "col s6" style = "padding-left: 20px;">
                    <form action="deactivate" method="post">
                        <label>Select Item Name</label>
                        <select name="strItemName">
                            <c:if test="${itemList == null }">
                        		<option value="" disabled selected>No items available</option>
                        	</c:if>
                        	<c:if test="${itemList != null }">
	                        	<option value="" disabled selected>Item Name:</option>
                        		<c:forEach items="${itemList }" var="item">
		                            <option value="${item.strItemName }">${item.strItemName }</option>
                        		</c:forEach>
                        	</c:if>
                        </select>
                        <button class="btn-large waves-effect waves-light" type="submit" name="action">Deactivate
                        </form>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>

                    <!-- Modal Structure -->
                    <div id="modal2" class="modal">
                        <div class = "modal-header">
                            <h4 style = "padding-top: 10px;">Deactivate Item</h4>
                        </div>
                        <div class="modal-content">
                            <h6>Are you sure you want to deactivate block?</h6>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                        </div>
                        <div class="modal-footer">
                            <a class="waves-effect waves-light btn black right" style = "margin-right: 10px; width: 180px;color:white;"><i class="mdi-content-add-circle left"></i>Confirm</a>
                        </div>
                    </div>
                   <!--  <button data-target = "modal2" class="waves-effect waves-light modal-trigger black right" style = "margin-right: 10px; width: 180px; height: 35px; color: white; margin-top: 20px;"><i class="mdi-communication-dnd-on left"></i>DEACTIVATE</button>
                	 -->
                </div>
=======
        <!-- Data Grid -->
        <div class = "col s5">
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
>>>>>>> 9cc96c6425c0b296418c271d94a19d6dd1c13e43:columbarium-web/WebContent/Forms/Inventory.html
            </div>

<<<<<<< HEAD:columbarium-web/WebContent/Forms/Inventory.jsp
        <!-- table -->
        <div class = "col s4">
            <table class = "striped z-depth-3" style = "width: 100%;">

                <thead>
                <tr>
                    <th data-field="id">Item Code</th>
                    <th data-field="name">Item Name</th>
                    <th data-field="name">Item Price</th>
                    <th data-field="name">Item Description</th>

                </tr>
                </thead>
                <tbody>
                		<c:if test="${itemList == null }">
                        	<td>No items available</td>
                        </c:if>
                        <c:if test="${itemList != null }">
                       		<c:forEach items="${itemList }" var="item">
                       		<tr>
	                            <td>${item.itemId }</td>
	                            <td>${item.strItemName }</td>
	                            <td>P ${item.dblPrice }</td>
	                            <td>${item.strItemDesc }</td>
                			</tr>
                       		</c:forEach>
                        </c:if>
                </tbody>
            </table>
=======
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
                        <th data-field="name">Item Description</th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr>
                        <td>Item One</td>
                        <td>Description One</td>
                    </tr>

                    <tr>
                        <td>Item Two</td>
                        <td>Description One</td>
                    </tr>

                    <tr>
                        <td>Item Three</td>
                        <td>Description One</td>
                    </tr>

                    <tr>
                        <td>Item Four</td>
                        <td>Description One</td>
                    </tr>

                    <tr>
                        <td>Item Five</td>
                        <td>Description One</td>
                    </tr>
                    <tr>
                        <td>Item Six</td>
                        <td>Description One</td>
                    </tr>
                    <tr>
                        <td>Item Seven</td>
                        <td>Description One</td>
                    </tr>
                    </tbody>
                </table>
            </div>
>>>>>>> 9cc96c6425c0b296418c271d94a19d6dd1c13e43:columbarium-web/WebContent/Forms/Inventory.html
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

