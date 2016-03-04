<!-- Section -->
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Blocks_Record_Form.css"/>

	<link rel="stylesheet" href="../css/style.css">
    <script type="text/javascript" src = "../js/index.js"></script>

<div class = "col s12" >
    <div class = "row">
        <div class = "responsive">

            <div class = "col s4">
                <h2 style = "padding-left: 40px; font-size: 30px; margin-top: 20px;">Block Maintenance</h2>

                <div style = "overflow: auto;height: 370px;">
                    <div class = "col s12">
                        <div class = "aside aside ">

                            <ul class="collapsible" data-collapsible="collapsible">
                                <li>
                                    <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
                                        <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building One</label>
                                    </div>
                                    <div class="collapsible-body">
                                        <div class="row">
                                            <div class="col s12 m12">
                                                <ul class="collapsible popout" data-collapsible="expandable">
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">work</i>Ground Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Administrator Office</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">view_module</i>First Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Block One
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                        <div class="collapsible-body">
                                                            <p>Block Two
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">view_module</i>Second Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Block Two
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
                                        <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building Two</label>
                                    </div>
                                    <div class="collapsible-body">
                                        <div class="row">
                                            <div class="col s12 m12">
                                                <ul class="collapsible popout" data-collapsible="expandable">
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">work</i>Ground Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Administrator Office</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">view_module</i>First Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Block One
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                        <div class="collapsible-body">
                                                            <p>Block Two
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">view_module</i>Second Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Block Two
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
                                        <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building Three</label>
                                    </div>
                                    <div class="collapsible-body">
                                        <div class="row">
                                            <div class="col s12 m12">
                                                <ul class="collapsible popout" data-collapsible="expandable">
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">work</i>Ground Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Administrator Office</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="collapsible-header">
                                                            <i class="material-icons">view_module</i>First Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Block One
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not-interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                        <div class="collapsible-body">
                                                            <p>Block Two
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">view_module</i>Second Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Block Two
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
                                        <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building Four</label>
                                    </div>
                                    <div class="collapsible-body">
                                        <div class="row">
                                            <div class="col s12 m12">
                                                <ul class="collapsible popout" data-collapsible="expandable">
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">work</i>Ground Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Administrator Office</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">view_module</i>First Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Block One
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                        <div class="collapsible-body">
                                                            <p>Block Two
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">view_module</i>Second Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Block Two
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
                                        <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building Five</label>
                                    </div>
                                    <div class="collapsible-body">
                                        <div class="row">
                                            <div class="col s12 m12">
                                                <ul class="collapsible popout" data-collapsible="expandable">
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">work</i>Ground Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Administrator Office</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">view_module</i>First Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Block One
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                        <div class="collapsible-body">
                                                            <p>Block Two
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">view_module</i>Second Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Block Two
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="collapsible-header" style = "background-color: #00897b"><i class="medium material-icons">business</i>
                                        <label style = "font-family: myFirstFont; font-size: 20px; color: white;">Building Six</label>
                                    </div>
                                    <div class="collapsible-body">
                                        <div class="row">
                                            <div class="col s12 m12">
                                                <ul class="collapsible popout" data-collapsible="expandable">
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">work</i>Ground Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Administrator Office</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">view_module</i>First Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Block One
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                        <div class="collapsible-body">
                                                            <p>Block Two
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="collapsible-header" style = "background-color: #ffa726">
                                                            <i class="material-icons">view_module</i>Second Floor</div>
                                                        <div class="collapsible-body">
                                                            <p>Block Two
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating red right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor price is not yet configured."  style = "margin-left: 5px;" href = "#modalDeactivateBlock"><i class="material-icons">not_interested</i></button>
                                                                <button name = "action" class="btn tooltipped modal-trigger btn-floating green right" data-position = "bottom" data-delay = "30" data-tooltip = "Floor is not yet configured." style = "margin-left: 5px;" href = "#modalUpdateBlock"><i class="material-icons">mode_edit</i></button>
                                                            </p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Modal Create -->
            <div id="modalCreateBlock" class="modal" style = "width: 600px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "font-size: 30px; padding-left: 20px;">Create Block</h4>
                </div>
                <form class="modal-content">

                    <div class = "col s12">
                        <div class="row">
                            <div class="input-field col s6">
                                <select>
                                    <option value="" disabled selected>Building Name</option>
                                    <option value="1">Building One</option>
                                    <option value="2">Building Two</option>
                                    <option value="3">Building Three</option>
                                </select>
                                <label>Select Building Name</label>
                            </div>
                            <div class="input-field col s6">
                                <select>
                                    <option value="" disabled selected>Floor Level</option>
                                    <option value="1">Option 1</option>
                                    <option value="2">Option 2</option>
                                    <option value="3">Option 3</option>
                                </select>
                                <label>Select Floor level</label>
                            </div>
                        </div>
                    </div>

                        <div style = "padding-left: 10px;">
                            <div class="input-field col s6">
                                <input id="blockName" type="text" class="validate" required = "" aria-required="true" length = "20">
                                <label for="blockName" data-error = "Invalid format." data-success = "">Block Name<span style = "color: red;">*</span></label>
                            </div>
                        </div>

                    <br><br><br><br><br><br><br><br><br>
                    <i class = "left" style = "margin-bottom: 0px; padding-left: 30px; color: red;">*Required Fields</i>

                    <div class="modal-footer">
                        <button type = "submit" name = "action" class="btn red" style = "margin-top: 20px; margin-left: 20px; ">Confirm</button>
                        <button name = "action" class="btn red modal-close" style = "margin-top: 20px;">Cancel</button>
                    </div>
                </form>

            </div>

            <!-- Modal Update -->
            <form id="modalUpdateBlock" class="modal" style = "width: 400px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "padding-left: 20px; font-size: 30px;">Update Block</h4>
                </div>
                <div class="modal-content">
                    <div style = "padding-left: 10px;">
                        <div class="input-field col s12">
                            <input id="newBlockName" type="text" class="validate" required = "" aria-required = "true" length = "20">
                            <label class = "active" for="newBlockName" data-error = "Invalid format." data-success = "">New Block Name <span style = "color: red;">*</span></label>
                        </div>
                    </div>
                    <i class = "left" style = "margin-bottom: 0px; padding-left: 20px; color: red;">*Required Fields</i>
                </div>
                <br><br><br><br>
                <div class="modal-footer">
                    <button type = "submit" name = "action" class="btn red" style = "margin-left: 10px; ">Confirm</button>
                    <button name = "action" class="btn red modal-close">Cancel</button>
                </div>
            </form>

            <!-- Modal Deactivate -->
            <div id="modalDeactivateBlock" class="modal" style = "width: 400px;">
                <div class = "modal-header" style = "height: 55px;">
                    <h4 style = "padding-left: 20px; font-size: 30px;">Deactivate Block</h4>
                </div>
                <div class="modal-content">
                    <p style = "padding-left: 20px; font-size: 15px;">Are you sure you want to deactivate this block?</p>
                </div>

                <div class="modal-footer">
                    <button name = "action" class="btn red" style = "margin-left: 10px; ">Confirm</button>
                    <button name = "action" class="btn red modal-close">Cancel</button>
                </div>
            </div>

            <!-- Modal List of Deactivated Blocks -->
            <div id="modalListOfDeactivatedBlock" class="modal" style = "height: 1200px; width: 600px;">
                <div class="modal-content">
                    <!-- Data Grid Deactivated Block/s-->
                            <div id="admin2" class="col s12" style="margin-top: 0px">
                                <div class="z-depth-2 card material-table" style="margin-top: 0px">
                                    <div class="table-header" style="height: 55px; background-color: #00897b;">
                                        <h4 style = "padding-top: 10px; font-size: 30px; color: white; padding-left: 0px;">Deactivated Block/s</h4>
                                    </div>
                                    <table id="datatable2">
                                        <thead>
                                        <tr>
                                            <th>Block Name</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Block One</td>
                                            <td>
                                                <button name = "action" class="btn red modal-close">Activate</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Block Two</td>
                                            <td>
                                                <button name = "action" class="btn red modal-close">Activate</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Block Three</td>
                                            <td>
                                                <button name = "action" class="btn red modal-close">Activate</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Block Four</td>
                                            <td>
                                                <button name = "action" class="btn red modal-close">Activate</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Block Five</td>
                                            <td>
                                                <button name = "action" class="btn red modal-close">Activate</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Block Six</td>
                                            <td>
                                                <button name = "action" class="btn red modal-close">Activate</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Block Seven</td>
                                            <td>
                                                <button name = "action" class="btn red modal-close">Activate</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Block Eight</td>
                                            <td>
                                                <button name = "action" class="btn red modal-close">Activate</button>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                <button name = "action" class="btn red modal-close right" style = "margin-bottom: 10px; margin-right: 30px;">DONE</button>
            </div>

            <!-- Data Grid -->
            <div class = "col s8">
                <div class="row">
                    <div id="admin" class="col s12" style="margin-top: 20px">
                        <div class="z-depth-2 card material-table">
                            <div class="table-header" style="background-color: #00897b;">
                                <h4 style = "font-size: 30px; color: white; padding-left: 0px;">Block Data Grid</h4>
                                <div class="actions">
                                    <button name = "action" class="modal-trigger btn-floating yellow" style = "margin-right: 10px;" href = "#modalCreateBlock"><i class="material-icons">add</i></button>
                                    <button name = "action" class="modal-trigger btn-floating black" style = "margin-right: 10px;" href = "#modalListOfDeactivatedBlock"><i class="material-icons" style = "color: white">delete</i></button>
                                    <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                                </div>
                            </div>
                            <table id="datatable">
                                <thead>
                                <tr>
                                    <th>Block Name</th>
                                    <th>Block Type</th>
                                    <th>Building Name</th>
                                    <th>Floor number</th>
                                    <th>Block Row/s</th>
                                    <th>Block Column/s</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Block One</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Two</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Three</td>
                                    <td>Columbary Vault</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Four</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Five</td>
                                    <td>Columbary Vault</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Six</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Seven</td>
                                    <td>Columbary Vault</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Eight</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Nine</td>
                                    <td>Columbary Vault</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Ten</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Eleven</td>
                                    <td>Columbary Vault</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Twelve</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Thirteen</td>
                                    <td>Full Body</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>Block Fourteen</td>
                                    <td>Columbary Vault</td>
                                    <td>Building One</td>
                                    <td>First Floor</td>
                                    <td>5</td>
                                    <td>6</td>
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
</div>

<script>

	$(document).ready(function(){
	    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
	    $('.modal-trigger').leanModal();
	});
	
	$(document).ready(function() {
	    $('input#input_text, textarea#textarea1').characterCounter();
	});

</script>