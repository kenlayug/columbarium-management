<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Services_Record_Form.css"/> 

<!-- Floating Button -->
<div class="fixed-action-btn horizontal" style="position: absolute; margin-right: 620px; margin-bottom: 80px;">
    <button name = "action" class="btn-floating btn-large red"><i class="large material-icons">add</i>
    </button>
    <ul>
        <li><button name = "action" class="modal-trigger btn-floating black" href = "#modal2"><i class="material-icons">delete</i></button></li>
        <li><button name = "action" class="modal-trigger btn-floating green darken-1" href = "#modal1"><i class="material-icons">mode_edit</i></button></li>
    </ul>
</div>

<!-- Section -->

<div class = "col s12" >
    <div class = "row">
        <div class = "col s7">
            <h2>Service Maintenance</h2>

            <!-- Create Service -->
            <div class = "col s12">
                <div class = "aside aside z-depth-3">
                <div class = "header">
                    <h4>Service Form</h4>
                </div>

                    <form class = "col s12">
                        <div class="row" style = "padding-left: 10px;">
                            <div class="input-field col s6">
                                <input id="serviceName" type="text" class="validate">
                                <label for="serviceName">Service Name:</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="servicePrice" type="text" class="validate">
                                <label for="servicePrice">Service Price:</label>
                            </div>
                        </div>
                    </form>

                    <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s12">
                                    <textarea id="serviceDesc" style = "color:red;" class = "materialize-textarea"></textarea>
                                    <label for="serviceDesc">Service Description:</label>
                                </div>
                            </div>
                        </form>

                        <button data-target = "modal3" class="waves-effect waves-light modal-trigger red left" style = "margin-left: 20px; width: 180px; height: 35px; color: white; margin-bottom: 50px; font-size: 14px;"></i>CHOOSE REQUIREMENTS</button>
                    </div>
                </div>
            </div>
            </div>

            <!-- Modal Requirements -->
            <div id="modal3" class="modal">
                <div class = "modal-header">
                    <h4>List of Requirements</h4>
                </div>
                <div class="modal-content">
                        <div class = "col s12">
                            <br>
                            <div class="row">
                                <div class = "col s6" >
                                    <form action="#">
                                        <h6>Columbary Vaults</h6>
                                        <p>
                                            <input type="checkbox" id="deathCertificate" />
                                            <label for="deathCertificate">Death Certificate</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="transferPermit" />
                                            <label for="transferPermit">Transfer Permit</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="cremation" />
                                            <label for="cremation">Cremation</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="informantID2" />
                                            <label for="informantID2">I.D. of Informant</label>
                                        </p>

                                        <br>


                                        <h6>Additional Requirements:</h6>
                                        <h1>(Authority to cremate if informant is:)</h1>
                                        <p>
                                            <input type="checkbox" id="marriageContract" />
                                            <label for="marriageContract">Husband/Wife - Marriage Certificate/ Marriage Contract</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="parentCertificate" />
                                            <label for="parentCertificate">Parent - Birth Certificate of Deceased (if none, Affidavit of Conformity)</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="bCertificate" />
                                            <label for="bCertificate">Brother/Sister - Birth Certificate Deceased & Siblings</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="affidavit" />
                                            <label for="affidavit">Relative - Affidavit of Conformity</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="informantID" />
                                            <label for="informantID">I.D of Informant</label>
                                        </p>
                                    </form>
                                </div>

                                <div class = "col s6">
                                    <form action="#">
                                        <h6>Full Body</h6>
                                        <p>
                                            <input type="checkbox" id="deathCertificate2" />
                                            <label for="deathCertificate2">Death Certificate</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="transferPermit2" />
                                            <label for="transferPermit2">Transfer Permit</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="burialPerson" />
                                            <label for="burialPerson">Burial Person</label>
                                        </p>
                                        <p>
                                            <input type="checkbox" id="buyerID" />
                                            <label for="buyerID">I.D. of Buyer</label>
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

                <div class="modal-footer">
                    <button name = "action" class="waves-effect waves-light btn red right" style = "margin-right: 0px; width: 130px;">CONFIRM</button>
                </div>
            </div>
        </div>


        <!-- Modal Update -->
        <div id="modal1" class="modal">
            <div class = "modal-header">
                <h4>Update Service</h4>
            </div>
            <div class="modal-content">

                <form class = "col s12">
                    <div class="row">
                        <div class = "col s6" style = "padding-left: 20px;">
                            <label>Select Service Name to Deactivate:</label>
                            <select>
                                <option value="" disabled selected>Service Name:</option>
                                <option value="1">Service One</option>
                                <option value="2">Service Two</option>
                                <option value="3">Service Three</option>
                            </select>
                        </div>
                    </div>
                </form>

                <form class = "col s12">
                    <div class="row" style = "padding-left: 10px;">
                        <div class="input-field col s6">
                            <input id="serviceNameUpdate" type="text" class="validate">
                            <label for="serviceNameUpdate">New Service Name</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="servicePriceUpdate" type="text" class="validate">
                            <label for="servicePriceUpdate">New Service Price</label>
                        </div>
                    </div>
                </form>

                <div class="row">
                    <form class="col s12">
                        <div class="row">
                            <div class="input-field col s12">
                                <textarea id="serviceDescUpdate" style = "color:red;" class = "materialize-textarea"></textarea>
                                <label for="serviceDescUpdate">New Service Description</label>
                            </div>
                        </div>
                    </form>

                    <button data-target = "modal3" class="waves-effect waves-light modal-trigger red left" style = "margin-left: 20px; width: 180px; height: 35px; color: white; margin-bottom: 50px; font-size: 14px;"></i>CHOOSE REQUIREMENTS</button>
                </div>
            </div>
            <div class="modal-footer">
                <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                <button name = "action" class="waves-effect waves-light btn red" href = "Blocks_Maintenance.html">Cancel</button>
            </div>
        </div>


        <!-- Modal Deactivate -->
        <div id="modal2" class="modal">
            <div class = "modal-header">
                <h4>Deactivate Service</h4>
            </div>
            <div class="modal-content">

                <form class = "col s12">
                    <div class="row">
                        <div class = "col s6" style = "padding-left: 20px;">
                            <label>Select Service Name to Deactivate:</label>
                            <select>
                                <option value="" disabled selected>Service Name:</option>
                                <option value="1">Service One</option>
                                <option value="2">Service Two</option>
                                <option value="3">Service Three</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; ">Confirm</button>
                <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
            </div>
        </div>


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
                </div>

                <br>
                <br>
                <br>
                <br>
                <br>

                <div class = "aside z-depth-2" style = "margin-left: 60px; width: 450px; height: 385px; overflow: auto;">
                    <table class = "highlight z-depth-3" style = "margin-top: 10px; margin-left: 0px; width: 100%; height: 200px;">

                        <thead class = "fixed-header">
                        <tr>
                            <th data-field="id">Building name</th>
                            <th data-field="name">No. of floors</th>
                            <th data-field="name">No. of blocks</th>
                            <th data-field="name">Block/s name</th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td>Building one</td>
                            <td>3</td>
                            <td>6</td>
                            <td>Block one, Block two, Block three, Block four, Block five, Block six</td>
                        </tr>

                        <tr>
                            <td>Building two</td>
                            <td>5</td>
                            <td>3</td>
                            <td>Block one, Block two, Block three</td>
                        </tr>

                        <tr>
                            <td>Building three</td>
                            <td>0</td>
                            <td>0</td>
                        </tr>

                        <tr>
                            <td>Building four</td>
                            <td>1</td>
                            <td>3</td>
                            <td>Block one, Block two, Block three</td>
                        </tr>

                        <tr>
                            <td>Building five</td>
                            <td>0</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td>Building six</td>
                            <td>3</td>
                            <td>2</td>
                            <td>Block one, Block two</td>
                        </tr>
                        <tr>
                            <td>Building seven</td>
                            <td>0</td>
                            <td>0</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
        </div>
    </div>
    
    <script>

	    $(document).ready(function(){
	        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
	        $('.modal-trigger').leanModal();
	    });

    
    </script>
    
    