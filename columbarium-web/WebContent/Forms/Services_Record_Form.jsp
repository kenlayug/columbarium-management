<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
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



    <meta name="description" content="Responsive Bootstrap Landing Page Template">
    <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="author" content="Grayrids">
    <title>SAD Forms</title>


    <!-- Import Fonts -->
    <style>
        @font-face { font-family: JuneBug; src: url('fonts/KGBlankSpaceSketch.ttf'); }
    </style>

    <!-- Import -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Services_Record_Form.js"></script>
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Services_Record_Form.css"/>


    <!-- Magic -->
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/fonts/font-awesome.min.css" type="text/css" media="screen">
    <!-- Include roboto.css to use the Roboto web font, material.css to include the theme and ripples.css to style the ripple effect -->
    <link href="<%=request.getContextPath()%>/css/ripples.min.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/css/responsive.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/animate.min.css" rel="stylesheet">
    <!-- Import CSS/JS -->
    <script type="text/javascript" src="js/Services_Record_Form.js"></script>
    <link rel = "stylesheet" href = "css/Services_Record_Form.css"/>
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
    <li><a href="Maintenance.html">Product</a></li>
    <li><a href="Employee-Maintenance.html">Employee</a></li>
    <li class="divider"></li>
    <li><a href="Customer-Maintenance.html">Customer</a></li>
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



<!-- Section -->
<h2>Service Maintenance</h2>
<form class = col s12 >
    <div class = "row">
        <div class = "col s8">
            <!-- Create Service -->
            <div class = "col s12">
                <div class = "aside aside z-depth-3" style = "height: 465px;">
                <div class = "header">
                <h4>Create Service</h4>
                    </div>

                    <form class = "col s12">
                        <div class="row" style = "padding-left: 10px;">
                            <div class="input-field col s6">
                                <input id="level" type="text" class="validate">
                                <label for="level">Service Name:</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="price" type="text" class="validate">
                                <label for="price">Service Price:</label>
                            </div>
                        </div>

                    </form>

                    <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s12">
                                    <textarea id="textarea1" style = "color:red;" class = "materialize-textarea"></textarea>
                                    <label for="textarea1">Service Description:</label>
                                </div>
                            </div>
                        </form>

                        <button data-target = "modal3" class="waves-effect waves-light modal-trigger black left" style = "margin-left: 20px; width: 180px; height: 35px; color: white; margin-top: 0px; font-size: 14px;"><i class="mdi-content-create left"></i>REQUIREMENTS</button>
                    </div>



                    <a class="waves-effect waves-light btn black right" style = "margin-right: 10px; width: 180px;  margin-top: 40px;"><i class="mdi-content-add-circle left"></i>Create</a>
                </div>
            </div>

            <!-- Modal Structure -->
            <div id="modal3" class="modal">
                <div class="modal-content">
                    <h3>Update Service</h3>
                    <br>
                    <form class = "col s12">

                        <div class = "col s12">
                            <div class="row">
                                <div class = col >
                                    <form action="#">
                                        <h6>Columbary Vaults</h6>
                                        <p>
                                            <input type="checkbox" id="test81" />
                                            <label for="test81">Death Certificate</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="test1111" />
                                            <label for="test1111">Transfer Permit</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="test1177" />
                                            <label for="test1177">Cremation</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="test1166" />
                                            <label for="test1166">I.D. of Informant</label>
                                        </p>

                                        <br>


                                        <h1>Additional Requirements:</h1>
                                        <h1>(Authority to cremate if informant is:)</h1>
                                        <p>
                                            <input type="checkbox" id="test811" />
                                            <label for="test811">Husband/Wife - Marriage Certificate/ Marriage Contract</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="test11111" />
                                            <label for="test11111">Parent - Birth Certificate of Deceased (if none, Affidavit of Conformity)</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="test11777" />
                                            <label for="test11777">Brother/Sister - Birth Certificate Deceased & Siblings</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="testt" />
                                            <label for="testt">Relative - Affidavit of Conformity</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="testtt" />
                                            <label for="testtt">I.D of Informant</label>
                                        </p>
                                    </form>
                                </div>
                                <br>
                                <br>
                                <div class = col>
                                    <form action="#">
                                        <br>
                                        <br>
                                        <h6>Full Body</h6>
                                        <p>
                                            <input type="checkbox" id="test0111" />
                                            <label for="test0111">Death Certificate</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="test122" />
                                            <label for="test122">Transfer Permit</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="test1233" />
                                            <label for="test1233">Burial Person</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="test19" />
                                            <label for="test19">I.D. of Buyer</label>
                                        </p>
                                    </form>
                                </div>
                            </div>
                        </div>
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



            <!-- Update Service -->
            <div class = "col s12">
                <div class = "aside aside z-depth-3" style = "margin-top: 50px;">
                    <div class = "header">
                        <h4>Update Service</h4>
                    </div>

                    <!-- Select Service Name -->
                    <br>
                    <div class = "col s6" style = "padding-left: 20px;">
                        <label>Select Service Name</label>
                        <select>
                            <option value="" disabled selected>Service Name:</option>
                            <option value="1">Service One</option>
                            <option value="2">Service Two</option>
                            <option value="3">Service Three</option>
                        </select>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>


                    <!-- Modal Structure -->
                    <div id="modal1" class="modal">
                        <div class = "modal-header fixed">
                            <h4 style = "padding-top: 10px;">Update Service</h4>
                        </div>
                        <div class="modal-content">
                            <form class = "col s12">
                                <div class="row">
                                    <br>
                                    <br>
                                    <div class="input-field col s4">
                                        <input id="name" type="text" class="validate">
                                        <label for="name">New service name:</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input id="price1" type="text" class="validate">
                                        <label for="price1">New service price:</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input id="desc" type="text" class="validate">
                                        <label for="desc">New building description:</label>
                                    </div>
                                </div>
                            </form>

                            <div class="row">
                                <form class="col s12">
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <textarea id="textarea2" style = "color:red;" class = "materialize-textarea"></textarea>
                                            <label for="textarea2">Service Description:</label>
                                        </div>
                                    </div>
                                </form>

                                <button data-target = "modal3" class="waves-effect waves-light modal-trigger black left" style = "margin-left: 10px; width: 180px; height: 35px; color: white; margin-top: 50px; font-size: 14px;"><i class="mdi-content-create left"></i>REQUIREMENTS</button>
                            </div>
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
                    <button data-target = "modal1" class="waves-effect waves-light modal-trigger black right" style = "margin-right: 10px; width: 180px; height: 35px; color: white; margin-top: 35px;"><i class="mdi-content-create left"></i>UPDATE</button>
                </div>
            </div>

            <!-- Deactivate Service -->
            <div class = "col s12">
                <div class = "aside aside z-depth-3"  style = "margin-top: 50px;">
                    <div class = "header">
                        <h4>Deactivate Service</h4>
                    </div>

                    <!-- Select Service Name -->
                    <br>
                    <div class = "col s6" style = "padding-left: 20px;">
                        <label>Select Service Name</label>
                        <select>
                            <option value="" disabled selected>Service Name:</option>
                            <option value="1">Service One</option>
                            <option value="2">Service Two</option>
                            <option value="3">Service Three</option>
                        </select>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>

                    <!-- Modal Structure -->
                    <div id="modal2" class="modal">
                        <div class = "header">
                            <h4>Deactivate Service</h4>
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
                    <button data-target = "modal2" class="waves-effect waves-light modal-trigger black right" style = "margin-right: 10px; width: 180px; height: 35px; color: white; margin-top: 35px;"><i class="mdi-communication-dnd-on left"></i>DEACTIVATE</button>
                </div>
            </div>
        </div>

        <!-- table -->
        <div class = "col s4">
            <table class = "striped z-depth-3" style = "margin-top: 20px; margin-left: 0px;">

                <thead>
                <tr>
                    <th data-field="id">Service Code</th>
                    <th data-field="name">Service Name</th>
                    <th data-field="name">Service Price</th>
                    <th data-field="name">Service Description</th>
                    <th data-field="name">Service Requirements</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                	<c:if test="${serviceList == null }">
                    	<td>No services available</td>
                	</c:if>
                	<c:if test="${serviceList != null }">
                		<c:forEach items="${serviceList }" var="service">
                			<td>${service.serviceId }</td>
		                    <td>${service.strServiceName }</td>
		                    <td>P ${service.dblPrice }</td>
		                    <td>${service.strServiceDesc }</td>
		                    <td>N/A</td>
                		</c:forEach>
                	</c:if>
                </tr>
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

