<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Collection_Transaction.js"></script>

    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/style.css"/>
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Collection_Transaction.css"/>
    <style>
        tr, th, td{
            text-align: center;
        }
    </style>
    
<div class = "col s12" >
    <div class = "row">
        <div class = "col s5" style="margin-top: 12px;">
            <div class="row">
                <div id="admin1" class="col s12">
                    <div class="z-depth-2 card material-table">
                        <div class="table-header" style="background-color: #00897b;">
                            <h4 style = "font-size: 20px; color: white; padding-left: 0px;">Customer with Overdue Dates</h4>
                            <div class="actions">
                                <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                            </div>
                        </div>
                        <table id="datatable2">
                            <thead>
                            <tr>
                                <th>Customer Name</th>
                                <th>Unit Code</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Aaron Clyde Garil</td>
                                <td>A1</td> </tr>
                            <tr>
                                <td>John Ezekiel Martinez</td>
                                <td>H12</td></tr>
                            <tr>
                                <td>Aila Bianca Jacalne</td>
                                <td>C6</td></tr>
                            <tr>
                                <td>Tiffany Banzuela</td>
                                <td>B9</td></tr>
                            <tr>
                                <td>Alvin John Perez</td>
                                <td>C13</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div id="modal1" class="modal modal-fixed">
            <div class="cmxform" id="ownershipForm" action="Collection_Transaction.html" method="get" autocomplete="off">
                <div class="row">
                    <div id="admin2" class="col s12" style="margin: 0;">
                        <div class="card material-table">
                            <div class="table-header" style="background-color: #00897b;">
                                <h4 style = "font-size: 20px; color: white; padding-left: 0px;">Customer Collection History</h4>
                                <div class="actions">
                                    <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                                </div>
                            </div>
                            <table id="datatable3">
                                <thead>
                                <tr>
                                    <th>Code</th>
                                    <th>Date</th>
                                    <th>Amount</th>
                                    <th>Balance</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th>C001</th>
                                    <th>01/03/16</th>
                                    <th>5,000</th>
                                    <th>49,0000</th>
                                </tr>
                                <tr>
                                    <th>C011</th>
                                    <th>01/21/16</th>
                                    <th>10,000</th>
                                    <th>39,000</th>
                                </tr>
                                <tr>
                                    <th>C043</th>
                                    <th>01/29/16</th>
                                    <th>4,000</th>
                                    <th>35,000</th>
                                </tr>
                                <tr>
                                    <th>C062</th>
                                    <th>02/08/16</th>
                                    <th>7,000</th>
                                    <th>32,000</th>
                                </tr>
                                <tr>
                                    <th>C072</th>
                                    <th>02/18/16</th>
                                    <th>8,500</th>
                                    <th>31,500</th>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="modal2" class="modal modal-fixed" style="width: 35%;height: 60%;">
            <div class="modal-header">
                <h4 style = "font-size: 20px; color: white; padding-left: 15px; padding-top: 15px;">Collection</h4>
            </div>
            <div class="cmxform" id="collect" action="Collection_Transaction.html" method="get" autocomplete="off">
                <div class="row" style="text-align: left;">
                    <div class = "col s8" style = "padding-left: 20px; text-align: left">
                        <legend style="font-size: 15px; text-align: center">Collection Info:</legend>
                        <label style="font-size: 15px;">Balance: <span style="color: green">P54,000</span></label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s5">
                        <label>Mode of Payment:</label>
                    </div>
                    <div class="input-field col s6">
                        <input name="mode" id="mode" type="text" required="" aria-required="true" class="validate" list="modePayment">
                        <label for="mode" data-error="No Existing Customer Found!">Payment Name</label>
                    </div>
                    <div class="input-field col s2">
                        <!-- <a class="btn-floating btn-medium waves-effect waves-light red" id="btnNew" href="javascript:toggle();"><i class="material-icons" style="color: #ffffff">new</i></a> -->
                    </div>
                    <datalist id="modePayment">
                        <option value="Cash">
                        <option value="Cheque">
                    </datalist>
                </div>
                <!--
                <div id="newModePayment" style="display: none">
                    <form class="modal-modePayment"method="get" autocomplete="off">
                        <div class="row">
                            <div class="input-field col s12">
                                <label>New Mode of Payment Name:</label>
                                <input name="mpname" id="mpname" type="text" required="" aria-required="true" class="validate">
                            </div>
                            <div class="right row">
                                <div class="input-field col s12">
                                    <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Confirm</button>
                                    <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div> -->
                <div class="row">
                    <div class="input-field col s5">
                        <label>Enter Amount: </label>
                    </div>
                    <div class="input-field col s5  ">
                        <input id="amount" type="text" class="validate">
                        <label for="amount">######</label>
                    </div>
                </div>
                <div class="right row">
                    <div class="input-field col s12">
                        <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Save</button>
                        <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
                    </div>
                </div>
            </div>
        </div>

        <div class = "col s7" style="margin-top: 13px;">
            <div class="row">
                <div id="admin" class="col s12">
                    <div class="z-depth-2 card material-table">
                        <div class="table-header" style="background-color: #00897b;">
                            <h4 style = "font-size: 20px; color: white; padding-left: 0px;">Collection</h4>
                            <div class="actions">
                                <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                            </div>
                        </div>
                        <table id="datatable">
                            <thead>
                            <tr>
                                <th>Code</th>
                                <th>Customer Name</th>
                                <th>Unit Code</th>
                                <th>History</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>C001</td>
                                <td>Aaron Clyde Garil</td>
                                <td>A1</td>
                                <td><button data-target="modal1" class="waves-effect waves-light btn red modal-trigger" href="#modal1" style = "margin-left: 10px; margin-right: 10px">View</button></td>
                                <td><button data-target="modal2" class="waves-effect waves-light btn red modal-trigger" href="#modal2" style = "margin-left: 10px; margin-right: 10px">Collect</button></td>
                            </tr>
                            <tr>
                                <td>C002</td>
                                <td>John Ezekiel Martinez</td>
                                <td>H12</td>
                                <td><button data-target="modal1" class="waves-effect waves-light btn red modal-trigger" href="#modal1" style = "margin-left: 10px; margin-right: 10px">View</button></td>
                                <td><button data-target="modal2" class="waves-effect waves-light btn red modal-trigger" href="#modal2" style = "margin-left: 10px; margin-right: 10px">Collect</button></td>
                            </tr>
                            <tr>
                                <td>C003</td>
                                <td>Aila Bianca Jacalne</td>
                                <td>C6</td>
                                <td><button data-target="modal1" class="waves-effect waves-light btn red modal-trigger" href="#modal1" style = "margin-left: 10px; margin-right: 10px">View</button></td>
                                <td><button data-target="modal2" class="waves-effect waves-light btn red modal-trigger" href="#modal2" style = "margin-left: 10px; margin-right: 10px">Collect</button></td>
                            </tr>
                            <tr>
                                <td>C004</td>
                                <td>Tiffany Banzuela</td>
                                <td>B9</td>
                                <td><button data-target="modal1" class="waves-effect waves-light btn red modal-trigger" href="#modal1" style = "margin-left: 10px; margin-right: 10px">View</button></td>
                                <td><button data-target="modal2" class="waves-effect waves-light btn red modal-trigger" href="#modal2" style = "margin-left: 10px; margin-right: 10px">Collect</button></td>
                            </tr>
                            <tr>
                                <td>C005</td>
                                <td>Alvin John Perez</td>
                                <td>C13</td>
                                <td><button data-target="modal1" class="waves-effect waves-light btn red modal-trigger" href="#modal1" style = "margin-left: 10px; margin-right: 10px">View</button></td>
                                <td><button data-target="modal2" class="waves-effect waves-light btn red modal-trigger" href="#modal2" style = "margin-left: 10px; margin-right: 10px">Collect</button></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <script type="text/javascript" src = "../js/index.js"></script>
        </div>
    </div>
    