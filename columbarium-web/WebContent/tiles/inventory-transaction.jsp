<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <link href="<%=request.getContextPath()%>/css/CustomerCSS.css" rel="stylesheet" type="text/css"/>
    
<div class = "col s12" >
    <div class = "row">
        <div class = "col s5" style="margin-top: 20px;">
            <div class = "col s12">
                <div class = "aside aside z-depth-3">
                    <div class="modal-header">
                        <label style="font-size: x-large">Inventory</label>
                    </div>
                    <div action="inventory.html" method="post">
                        <div class="row">
                            <div class="input-field col s3">
                                <label>Item Name:</label>
                            </div>
                            <div class="input-field col s9">
                                <input name="iname" id="iname" type="text" required="" aria-required="true" data-error="No Customer Name Found!" class="validate" list="itemList">
                                <label for="iname" data-error="No Item Found!">Item Name</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s3">
                                <label>Quantity:</label>
                            </div>
                            <div class="input-field col s4">
                                <input id="quantity" type="number" required="" aria-required="true" class="validate" min="1" max="9999" length="4">
                                <label for="quantity" data-error="Range From 1 - 9999">Item Quantity</label>
                            </div>
                            <br>
                        </div>
                        <br><br><br>
                        <datalist id="itemList">
                            <option value="Columbary Vaults">
                            <option value="FB Crypys">
                            <option value="Urns">
                        </datalist>
                        <div class="left row" style="margin-bottom: 20px; margin-left:200px;"><br>
                            <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 150px; margin-right: 10px; margin-top: -80px;">Confirm</button>
                    </div>
                </div>
                </div>
            </div>
         </div>
        <div class = "col s7">
            <div class="row">
                <div id="admin" class="col s12" style="margin-top: 13px">
                    <div class="z-depth-2 card material-table">
                        <div class="table-header" style="background-color: #00897b;">
                            <h4 style = "font-size: 30px; color: white; padding-left: 0px;">Inventory Data Grid</h4>
                            <div class="actions">
                                <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                            </div>
                        </div>
                        <table id="datatable">
                            <thead>
                            <tr>
                                <th>Category</th>
                                <th>Name</th>
                                <th>Description</th>
                                <th>Quantity</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>FullBody Crypts</td>
                                <td>Candle Holder</td>
                                <td></td>
                                <td>90</td>
                            </tr>
                            <tr>
                                <td>Columbary Vault</td>
                                <td>Customize Urn</td>
                                <td>Lalagyanan ng abo</td>
                                <td>52</td>
                            </tr>
                            <tr>
                                <td>Columbary Vault</td>
                                <td>Pouch</td>
                                <td></td>
                                <td>1002</td>
                            </tr>
                            <tr>
                                <td>FullBody Crypts</td>
                                <td>Wood</td>
                                <td>For coffin</td>
                                <td>87</td>
                            </tr>
                            <tr>
                                <td>Columbary Vault</td>
                                <td>Urn</td>
                                <td>Lalagyanan ng abo</td>
                                <td>902</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <script type="text/javascript" src = "../js/index.js"></script>
        </div>
</div>