<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script type="text/javascript" src = "<%=request.getContextPath()%>/js/datepicker.js"></script>
    <link href="<%=request.getContextPath()%>/css/datepicker.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    
   <script>
        function showMe (box) {

            var chboxs = document.getElementsByName("c1");
            var vis = "none";
            for(var i=0;i<chboxs.length;i++) {
                if(chboxs[i].checked){
                    vis = "block";
                    break;
                }
            }
            document.getElementById(box).style.display = vis;
        }
    </script>
    
<div class = "col s12" >

    <div class = "row">
        <div class = "col s5" style="margin-top: 20px;">
            <div class = "col s12">
                <div class = "aside aside z-depth-3" style="height: 450px; overflow: auto">
                    <div class="modal-header">
                        <label style="font-size: x-large">Scheduling</label>
                    </div>
                    <form action="scheduling.html" method="post">
                        <div id="new" class="modal">
                            <div class="modal-header">
                                <label style="font-size: large">Add New Customer</label>
                            </div>
                            <form class="cmxform" id="newCustomer" action="Manage-Unit.html" method="get" autocomplete="off">
                                <div class="row">
                                    <div class="input-field col s2">
                                        <label>New Customer:</label>
                                    </div>
                                    <div class="input-field col s3">
                                        <input id="cfname" type="text" class="validate">
                                        <label for="cfname">First Name</label>
                                    </div>
                                    <div class="input-field col s3">
                                        <input id="cmname" type="text" class="validate">
                                        <label for="cmname">Middle Name</label>
                                    </div>
                                    <div class="input-field col s3">
                                        <input id="clname" type="text" class="validate">
                                        <label for="clname">Last Name</label>
                                    </div>
                                </div>
                                <div class="right row">
                                    <div class="input-field col s12">
                                        <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Save</button>
                                        <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div id="time" class=" responsive modal">
                                <div id="admin1" class="col s12"    >
                                    <div class="z-depth-2 card material-table">
                                        <div class="table-header" style="background-color: #00897b;">
                                            <label style="font-size: large; color: #ffffff; font-family: 'KG Blank Space Sketch'">Select Time</label>
                                            <button class="add-toggle btn-floating red nopadding" style = "margin-left: 510px;"><i class="material-icons" style="color: #ffffff">add</i></button>
                                        </div>

                                        <div id="addTime" style="display:none; background-color: rgba(10, 193, 232, 0.12); display: none; margin-top: 0;">
                                            <form class="modal-transfer"method="get" autocomplete="off">
                                                <div class="row">
                                                    <div class="input-field col s2">
                                                        <label>Add Time:</label>
                                                    </div>
                                                    <div class="input-field col s2">
                                                        <input id="sTime" type="text" class="validate">
                                                        <label for="sTime">Start Time</label>
                                                    </div>
                                                    <div class="input-field col s2">
                                                        <input id="eTime" type="text" class="validate">
                                                        <label for="eTime">End Time</label>
                                                    </div>
                                                    <div id="h" class="input-field col s1" style="visibility: hidden">
                                                        <p>hidden</p>
                                                    </div>
                                                    <div class="input-field col s5">
                                                        <a class="waves-effect red waves-light btn" style="text-align: center">Save</a>
                                                        <a class="waves-effect red waves-light btn" style="text-align: center">Cancel</a>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>

                                        <form class="cmxform" id="selectTime" method="get" autocomplete="off"   >
                                            <div class="row">
                                                <table id="datatable2" style="width: 100% !important; table-layout: fixed">
                                                    <thead>
                                                    <tr>
                                                        <th>Start Time</th>
                                                        <th>End Time</th>
                                                        <th>Status</th>
                                                        <th>Action</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td>9:00 AM</td>
                                                        <td>11:00 AM</td>
                                                        <td>Reserved</td>
                                                        <td><button class="waves-effect red waves-light btn" style="cursor: not-allowed;" disabled>Select</button></td>
                                                    </tr>
                                                    <tr>
                                                        <td>11:00 AM</td>
                                                        <td>1:00 PM</td>
                                                        <td>Available</td>
                                                        <td><button class="waves-effect red waves-light btn">Select</button></td>
                                                    </tr>
                                                    <tr>
                                                        <td>1:00 PM</td>
                                                        <td>3:00 PM</td>
                                                        <td>Reserved</td>
                                                        <td><button class="waves-effect red waves-light btn" style="cursor: not-allowed;" disabled>Select</button></td>
                                                    </tr>
                                                    <tr>
                                                        <td>3:00 PM</td>
                                                        <td>5:00 PM</td>
                                                        <td>Available</td>
                                                        <td><button class="waves-effect red waves-light btn">Select</button></td>
                                                    </tr>
                                                    <tr>
                                                        <td>5:00 PM</td>
                                                        <td>7:00 PM</td>
                                                        <td>Available</td>
                                                        <td><button class="waves-effect red waves-light btn">Select</button></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s3">
                                <label>Customer Name:</label>
                            </div>
                            <div class="input-field      col s6">
                                <input name="cname" id="cname" type="text" required="" aria-required="true" class="validate" list="nameList">
                                <label for="cname" data-error="No Existing Customer Found!">Customer Name</label>
                            </div>
                            <div class="input-field col s2">
                                <a class="waves-effect waves-light btn red modal-trigger" href="#new">New</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s2">
                                <label>Services:</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input type="checkbox" id="ser1" name="c1" onclick="showMe('div1')"/>
                                <label for="ser1">Service 1</label>
                                <div id="div1" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px;">
                                    <div class="row">
                                        <div class="input-field col s3">
                                            <label>Date:</label>
                                        </div>
                                        <div class="input-field col s9">
                                            <input type="date" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s7">
                                            <label>Schedule Time:</label>
                                        </div>
                                        <div class="input-field col s5">
                                            <input type="text" class="time"/>
                                        </div>
                                        <div class="input-field col s12">
                                            <a class="waves-effect waves-light btn red modal-trigger" href="#time" style="width: 100%">Select Time</a>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <input type="checkbox" id="ser2" name="c1" onclick="showMe('div2')"/>
                                <label for="ser2">Service 2</label>
                                <div id="div2" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px;">
                                    <div class="row">
                                        <div class="input-field col s3">
                                            <label>Date:</label>
                                        </div>
                                        <div class="input-field col s9">
                                            <input type="date" class="datepicker">
                                        </div>
                                    </div>
                                        <div class="row">
                                        <div class="input-field col s7">
                                            <label>Schedule Time:</label>
                                        </div>
                                        <div class="input-field col s5">
                                            <input type="text" class="time"/>
                                        </div>
                                        <div class="input-field col s12">
                                            <a class="waves-effect waves-light btn red modal-trigger" href="#time" style="width: 100%">Select Time</a>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <input type="checkbox" id="ser3" name="c1" onclick="showMe('div3')"/>
                                <label for="ser3">Service 3</label>
                                <div id="div3" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px;">
                                    <div class="row">
                                        <div class="input-field col s3">
                                            <label>Date:</label>
                                        </div>
                                        <div class="input-field col s9">
                                            <input type="date" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s7">
                                            <label>Schedule Time:</label>
                                        </div>
                                        <div class="input-field col s5">
                                            <input type="text" class="time"/>
                                        </div>
                                        <div class="input-field col s12">
                                            <a class="waves-effect waves-light btn red modal-trigger" href="#time" style="width: 100%">Select Time</a>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <input type="checkbox" id="ser4" name="c1" onclick="showMe('div4')"/>
                                <label for="ser4">Service 4</label>
                                <div id="div4" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px;">
                                    <div class="row">
                                        <div class="input-field col s3">
                                            <label>Date:</label>
                                        </div>
                                        <div class="input-field col s9">
                                            <input type="date" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s7">
                                            <label>Schedule Time:</label>
                                        </div>
                                        <div class="input-field col s5">
                                            <input type="text" class="time"/>
                                        </div>
                                        <div class="input-field col s12">
                                            <a class="waves-effect waves-light btn red modal-trigger" href="#time" style="width: 100%">Select Time</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="input-field col s6">
                                <input type="checkbox" id="ser5" name="c1" onclick="showMe('div5')"/>
                                <label for="ser5">Service 5</label>
                                <div id="div5" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px;">
                                    <div class="row">
                                        <div class="input-field col s3">
                                            <label>Date:</label>
                                        </div>
                                        <div class="input-field col s9">
                                            <input type="date" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s7">
                                            <label>Schedule Time:</label>
                                        </div>
                                        <div class="input-field col s5">
                                            <input type="text" class="time"/>
                                        </div>
                                        <div class="input-field col s12">
                                            <a class="waves-effect waves-light btn red modal-trigger" href="#time" style="width: 100%">Select Time</a>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <input type="checkbox" id="ser6" name="c1" onclick="showMe('div6')"/>
                                <label for="ser6">Service 6</label>
                                <div id="div6" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px;">
                                    <div class="row">
                                        <div class="input-field col s3">
                                            <label>Date:</label>
                                        </div>
                                        <div class="input-field col s9">
                                            <input type="date" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s7">
                                            <label>Schedule Time:</label>
                                        </div>
                                        <div class="input-field col s5">
                                            <input type="text" class="time"/>
                                        </div>
                                        <div class="input-field col s12">
                                            <a class="waves-effect waves-light btn red modal-trigger" href="#time" style="width: 100%">Select Time</a>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <input type="checkbox" id="ser7" name="c1" onclick="showMe('div7')"/>
                                <label for="ser7">Service 7</label>
                                <div id="div7" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px;">
                                    <div class="row">
                                        <div class="input-field col s3">
                                            <label>Date:</label>
                                        </div>
                                        <div class="input-field col s9">
                                            <input type="date" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s7">
                                            <label>Schedule Time:</label>
                                        </div>
                                        <div class="input-field col s5">
                                            <input type="text" class="time"/>
                                        </div>
                                        <div class="input-field col s12">
                                            <a class="waves-effect waves-light btn red modal-trigger" href="#time" style="width: 100%">Select Time</a>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <input type="checkbox" id="ser8" name="c1" onclick="showMe('div8')"/>
                                <label for="ser8">Service 8</label>
                                <div id="div8" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px;">
                                    <div class="row">
                                        <div class="input-field col s3">
                                            <label>Date:</label>
                                        </div>
                                        <div class="input-field col s9">
                                            <input type="date" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s7">
                                            <label>Schedule Time:</label>
                                        </div>
                                        <div class="input-field col s5">
                                            <input type="text" class="time"/>
                                        </div>
                                        <div class="input-field col s12">
                                            <a class="waves-effect waves-light btn red modal-trigger" href="#time" style="width: 100%">Select Time</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="right modal-footer" style="margin-right: 20px">
                            <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Confirm</button>
                            <button name = "action" class="waves-effect waves-light btn red" style="margin-right: 10px;">Cancel</button>
                        </div>
                        <datalist id="nameList">
                            <option value="Monkey D. Luffy">
                            <option value="Roronoa Zoro">
                            <option value="Vinsmoke Sanji">
                            <option value="Tony Tony Chopper">
                            <option value="Nico Robin">
                        </datalist>
                    </form>
                </div>
            </div>
        </div>
        <div class = "col s7">
            <div class="row">
                <div id="admin" class="col s12" style="margin-top: 13px">
                    <div class="z-depth-2 card material-table">
                        <div class="table-header" style="background-color: #00897b;">
                            <span class="table-title" style="color:#ffffff; font-family: 'KG Blank Space Sketch';">Scheduling Data Table</span>
                            <div class="actions">
                                <a href="#" class="right search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                            </div>
                        </div>
                        <table id="datatable">
                            <thead>
                            <tr>
                                <th>Service</th>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Status</th>
                                <th>Customer</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Service 1</td>
                                <td>03/11/16</td>
                                <td>9:00 AM - 11:00 AM</td>
                                <td>Reserved</td>
                                <td>Alvin Alba</td>
                            </tr>
                            <tr>
                                <td>Service 1</td>
                                <td>03/11/16</td>
                                <td>9:00 AM - 11:00 AM</td>
                                <td>Reserved</td>
                                <td>Alvin Alba</td>
                            </tr>
                            <tr>
                                <td>Service 1</td>
                                <td>03/11/16</td>
                                <td>9:00 AM - 11:00 AM</td>
                                <td>Reserved</td>
                                <td>Alvin Alba</td>
                            </tr>
                            <tr>
                                <td>Service 1</td>
                                <td>03/11/16</td>
                                <td>9:00 AM - 11:00 AM</td>
                                <td>Reserved</td>
                                <td>Alvin Alba</td>
                            </tr>
                            <tr>
                                <td>Service 1</td>
                                <td>03/11/16</td>
                                <td>9:00 AM - 11:00 AM</td>
                                <td>Reserved</td>
                                <td>Alvin Alba</td>
                            </tr>
                            <tr>
                                <td>Service 1</td>
                                <td>03/11/16</td>
                                <td>9:00 AM - 11:00 AM</td>
                                <td>Reserved</td>
                                <td>Alvin Alba</td>
                            </tr><tr>
                                <td>Service 1</td>
                                <td>03/11/16</td>
                                <td>9:00 AM - 11:00 AM</td>
                                <td>Reserved</td>
                                <td>Alvin Alba</td>
                            </tr>
                            <tr>
                                <td>Service 1</td>
                                <td>03/11/16</td>
                                <td>9:00 AM - 11:00 AM</td>
                                <td>Reserved</td>
                                <td>Alvin Alba</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js'></script>
            <script src='http://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js'></script>
            <script type="text/javascript" src = "../js/index.js"></script>
        </div>
    </div>
</div>
