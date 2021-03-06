<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html lang="en">
<head>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

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



    <meta name="description" content="Responsive Bootstrap Landing Page Template">
    <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="author" content="Grayrids">
    <title>SAD Forms</title>


    <!-- Import Fonts -->
    <style>
        @font-face { font-family: JuneBug; src: url('../fonts/KGBlankSpaceSketch.ttf'); }
    </style>

    <!-- Import -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Inventory_Form.js"></script>
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Inventory_Form.css"/>


    <!-- Magic -->
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/fonts/font-awesome.min.css" type="text/css" media="screen">
    <!-- Include roboto.css to use the Roboto web font, material.css to include the theme and ripples.css to style the ripple effect -->
    <link href="<%=request.getContextPath()%>/css/ripples.min.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/css/responsive.css" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
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
    <li><a href="Inventory_Form.html">Inventory</a></li>
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
    <li><a href="Maintenance.html">Product</a></li>
    <li><a href="Employee-Maintenance.html">Employee</a></li>
    <li class="divider"></li>
    <li><a href="Customer-Maintenance.html">Customer</a></li>
</ul>

<!-- Dropdown Reports -->
<ul id="dropdown4" class="dropdown-content">
    <li><a href="Reservation-Report.html">Reservation Record</a></li>
    <li><a href="Employee-Maintenance.html">Scheduling Record</a></li>
    <li class="divider"></li>
    <li><a href="Collection-Report.html">Collection Record</a></li>
    <li><a href="Customer-Maintenance.html">Transferring Record</a></li>
</ul>

<!-- Dropdown Utilities -->
<ul id="dropdown5" class="dropdown-content">
    <li><a href="Employee.html">Employee</a></li>
    <li class="divider"></li>
</ul>


<!-- Section -->
<h2>Inventory Maintenance</h2>
<form class = col s12 >
    <div class = "row">
        <div class = "col s8">

            <!-- Create Inventory -->
            <div class = "col s12">
                <div class = "aside aside z-depth-3" style = "height: 380px;">
                    <div class = "header">
                        <h4>Create Inventory</h4>
                    </div>


                    <form class = "col s12" action="create" method="post">
                        <div class="row" style = "padding-left: 10px;">
                            <div class="input-field col s6">
                                <input id="level" type="text" class="validate" name="item.strItemName">
                                <label for="level" data-error = "wrong" data-success = "right">Item name:</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="qty" type="text" class="validate" name="item.dblPrice">
                                <label for="qty">Item Price:</label>
                            </div>
                        </div>
                    </form>
                    <form class = "col s12">
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="desc" type="text" class="validate" name="item.strItemDesc">
                                <label for="desc">Item description:</label>
                            </div>
                        </div>
                    </form>
                    <a class="waves-effect waves-light btn black right" style = "margin-right: 10px; width: 180px;  margin-top: 60px;"><i class="mdi-content-add-circle left"></i>Create</a>
                </div>
            </div>



            <!-- Update Inventory -->
            <div class = "col s12">
                <div class = "aside aside z-depth-3" style = "margin-top: 50px;">
                    <div class = "header">
                        <h4>Update Inventory</h4>
                    </div>
                        <!-- Select Item Name -->
                        <br>
                        <div class = "col s6" style = "padding-left: 20px;">
                            <label>Select Item Name</label>
                            <select>
                                <option value="" disabled selected>Item Name:</option>
                                <option value="1">Item One</option>
                                <option value="2">Item Two</option>
                                <option value="3">Item Three</option>
                            </select>
                        </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>




                    <!-- Modal Structure -->
                    <div id="modal1" class="modal">
                        <div class = "modal-header">
                            <h4>Update Inventory</h4>
                        </div>
                        <div class="modal-content">

                            <form class = "col s12">
                                <div class="row">
                                    <div class="input-field col s4">
                                        <input id="name" type="text" class="validate">
                                        <label for="name">Input new item name:</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input id="qty1" type="text" class="validate">
                                        <label for="qty1">Input new item quantity:</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input id="desc1" type="text" class="validate">
                                        <label for="desc1">Input new item description:</label>
                                    </div>
                                </div>
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
                            <br>
                            <br>
                            <br>
                            <br>

                        </div>
                        <div class="modal-footer">
                            <a class="waves-effect waves-light btn black right" style = "margin-right: 10px; width: 180px;"><i class="mdi-content-add-circle left"></i>Update</a>
                        </div>
                    </div>
                    <button data-target = "modal1" class="waves-effect waves-light modal-trigger black right" style = "margin-right: 10px; width: 180px; height: 35px; color: white; margin-top: 20px;"><i class="mdi-content-create left"></i>UPDATE</button>
                </div>
            </div>

            <!-- Deactivate Item -->
            <div class = "col s12">
                <div class = "aside aside z-depth-3" style = "margin-top: 50px;">
                    <div class = "header">
                        <h4>Deactivate Inventory</h4>
                    </div>

                    <!-- Select Item Name -->
                    <br>
                    <div class = "col s6" style = "padding-left: 20px;">
                        <label>Select Item Name</label>
                        <select>
                            <option value="" disabled selected>Item Name:</option>
                            <option value="1">Item One</option>
                            <option value="2">Item Two</option>
                            <option value="3">Item Three</option>
                        </select>
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
                            <h4>Deactivate Item</h4>
                        </div>
                        <div class="modal-content">

                            <br>
                            <br>
                            <h4>Item Details:</h4>
                            <form action="#">
                                <p>
                                    <input type="checkbox" id="test4" />
                                    <label for="test4">Wooden urn</label>
                                </p>
                                <p>
                                    <input type="checkbox" id="test5" />
                                    <label for="test5">Metal urn</label>
                                </p>
                                <p>
                                    <input type="checkbox" id="test7" />
                                    <label for="test7">Porcelain</label>
                                </p>
                                <p>
                                    <input type="checkbox" id="test6" />
                                    <label for="test6">Pouch</label>
                                </p>
                            </form>
                            <br>
                            <br>
                        </div>
                        <div class="modal-footer">
                            <a class="waves-effect waves-light btn black right" style = "margin-right: 10px; width: 180px;"><i class="mdi-content-add-circle left"></i>DEACTIVATE</a>
                        </div>
                    </div>
                    <button data-target = "modal2" class="waves-effect waves-light modal-trigger black right" style = "margin-right: 10px; width: 180px; height: 35px; color: white; margin-top: 20px;"><i class="mdi-communication-dnd-on left"></i>DEACTIVATE</button>
                </div>
            </div>
        </div>

        <!-- table -->
        <div class = "col s4">
            <table class = "striped z-depth-3" style = "width: 100%;">

                <thead>
                <tr>
                    <th data-field="id">Item Code</th>
                    <th data-field="name">Item Name</th>
                    <th data-field="name">Item Quantity</th>
                    <th data-field="name">Item Description</th>

                </tr>
                </thead>

                <tbody>
                <c:if test="${itemList  == null }">
                	<tr>
                		<td>N/A</td>
                	</tr>
                
                </c:if>
                <c:if test="${itemList != null}">
                	<c:forEach items="${itemList }" var="item">
                		<tr>
		                    <td>${item.itemId }</td>
		                    <td>${item.strItemName }</td>
		                    <td>${item.dblPrice }</td>
		                    <td>${item.strItemDesc }</td>
	                	</tr>
                	</c:forEach>
                </c:if>

                </tbody>
            </table>
        </div>


    </div>
</form>

<!-- Footer -->
<footer class="page-footer" style = "background-color: darkred;">
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

