<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script type="text/javascript" src = "<%=request.getContextPath()%>/js/datepicker.js"></script>
    <link href="<%=request.getContextPath()%>/css/datepicker.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <style>
        th, td{
            text-align: center;
        }
    </style>
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
                <div class = "aside aside z-depth-3" style="height: 415px; overflow: auto">
                    <div class="modal-header">
                        <label style="font-size: x-large">Avail Item/Package</label>
                    </div>
                    <form action="buy.html" method="post">
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
                        <div class="row">
                            <div class="input-field col s3">
                                <label>Customer Name:</label>
                            </div>
                            <div class="input-field      col s6">
                                <input name="cname" id="cname" type="text" required="" aria-required="true" class="validate" list="nameList">
                                <label for="cname" data-error="No Existing Customer Found!">Name</label>
                            </div>
                            <div class="input-field col s2">
                                <a class="waves-effect waves-light btn red modal-trigger" href="#new">New</a>
                            </div>
                        </div>
                        <div class="row" style="overflow-x: hidden">
                            <center>
                                <input type="radio" id="ser1" name="c1" onclick="showMe('div1')"/>
                                <label for="ser1">Item</label>
                                <input type="radio" id="ser2" name="c1" onclick="showMe('div2')"/>
                                <label for="ser2">Package</label>
                            </center>

                            <div id="div1" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px; overflow-x: hidden">
                                <div class="col s3">
                                    <input type="checkbox" id="sv1" name="c1" onclick="showMe('item11')"/>
                                    <label for="sv1">item1</label>
                                    <input type="checkbox" id="sv2" name="c1" onclick="showMe('item12')"/>
                                    <label for="sv2">item2</label>
                                    <input type="checkbox" id="sv3" name="c1" onclick="showMe('item13')"/>
                                    <label for="sv3">item3</label>
                                </div>
                                <div class="col s3">
                                    <input type="checkbox" id="sv4" name="c1" onclick="showMe('item21')"/>
                                    <label for="sv4">item3</label>
                                    <input type="checkbox" id="sv5" name="c1" onclick="showMe('item22')"/>
                                    <label for="sv5">item4</label>
                                    <input type="checkbox" id="sv6" name="c1" onclick="showMe('item12')"/>
                                    <label for="sv6">item2</label>
                                </div>
                                <div class="col s3">
                                    <input type="checkbox" id="ser7" name="c1" onclick="showMe('item31')"/>
                                    <label for="ser7">item5</label>
                                    <input type="checkbox" id="ser8" name="c1" onclick="showMe('item32')"/>
                                    <label for="ser8">item6</label>
                                    <input type="checkbox" id="ser9" name="c1" onclick="showMe('item32')"/>
                                    <label for="ser9">item6</label>
                                </div>
                                <div class="cols3">
                                    <input type="checkbox" id="sv10" name="c1" onclick="showMe('item11')"/>
                                    <label for="sv10">item1</label>
                                    <input type="checkbox" id="sv11" name="c1" onclick="showMe('item12')"/>
                                    <label for="sv11">item2</label>
                                    <input type="checkbox" id="sv12" name="c1" onclick="showMe('item13')"/>
                                    <label for="sv12">item3</label>
                                </div>

                            </div>
                            <div id="div2" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px; overflow-x: hidden">
                                <div class="col s3">
                                    <input type="checkbox" id="pk1" name="c1" onclick="showMe('item11')"/>
                                    <label for="pk1">package1</label>
                                    <input type="checkbox" id="pk2" name="c1" onclick="showMe('item12')"/>
                                    <label for="pk2">package2</label>
                                    <input type="checkbox" id="pk3" name="c1" onclick="showMe('item13')"/>
                                    <label for="pk3">package3</label>
                                </div>
                                <div class="col s3">
                                    <input type="checkbox" id="pk4" name="c1" onclick="showMe('item21')"/>
                                    <label for="pk4">package4</label>
                                    <input type="checkbox" id="pk5" name="c1" onclick="showMe('item22')"/>
                                    <label for="pk5">package5</label>
                                    <input type="checkbox" id="pk6" name="c1" onclick="showMe('item12')"/>
                                    <label for="pk6">package6</label>
                                </div>
                                <div class="col s3">
                                    <input type="checkbox" id="pk7" name="c1" onclick="showMe('item31')"/>
                                    <label for="pk7">package7</label>
                                    <input type="checkbox" id="pk8" name="c1" onclick="showMe('item32')"/>
                                    <label for="pk8">package8</label>
                                    <input type="checkbox" id="pk9" name="c1" onclick="showMe('item32')"/>
                                    <label for="pk9">package9</label>
                                </div>
                                <div class="cols3">
                                    <input type="checkbox" id="pk10" name="c1" onclick="showMe('item11')"/>
                                    <label for="pk10">package10</label>
                                    <input type="checkbox" id="pk11" name="c1" onclick="showMe('item12')"/>
                                    <label for="pk11">package11</label>
                                    <input type="checkbox" id="pk12" name="c1" onclick="showMe('item13')"/>
                                    <label for="pk12">package12</label>
                                </div>
                            </div>

                            <!--
                            <div id="div2" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px; overflow-x: hidden">
                                <div class="row">
                                    <div class="input-field col s3">
                                        <label>Package:</label>
                                    </div>
                                    <div class = "col s9" style = "padding-left: 20px;">
                                        <select id="package">
                                            <option value="0" disabled selected> Select Package:</option>
                                            <option value="1">Package 1</option>
                                            <option value="2">Package 2</option>
                                            <option value="3">Package 3</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s3">
                                        <label>Quantity:</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input id="quantity" type="number" required="" aria-required="true" class="validate" min="1" max="999" length="3">
                                        <label for="quantity" data-error="Range From 1 - 999">Item Quantity</label>
                                    </div>
                                </div>
                            </div> -->
                            <div class="right col s10"><br>
                                <button name = "action" class="waves-effect waves-light btn red">Confirm</button>
                                <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
                            </div>
                        </div>
                        <br>
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
                            <span class="table-title" style="color:#ffffff; font-family: 'KG Blank Space Sketch';">Item and Package Details</span>
                            <div class="actions">
                                <a href="#" class="right search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                            </div>
                        </div>
                        <table id="datatable">
                            <thead>
                            <tr>
                                <th>Type</th>
                                <th>Name</th>
                                <th>Description</th>
                                <th>Quantity</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Package</td>
                                <td>Package 1</td>
                                <td>Item 1, Service 3</td>
                                <td>632</td>
                            </tr>
                            <tr>
                                <td>Package</td>
                                <td>Package 5</td>
                                <td>Service 2, Service 3</td>
                                <td>132</td>
                            </tr>
                            <tr>
                                <td>Item</td>
                                <td>Item 101</td>
                                <td></td>
                                <td>9231</td>
                            </tr>
                            <tr>
                                <td>Item</td>
                                <td>Item 33</td>
                                <td></td>
                                <td>56</td>
                            </tr>
                            <tr>
                                <td>Package</td>
                                <td>Package 15</td>
                                <td>Item 4, Service 1</td>
                                <td>67</td>
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
