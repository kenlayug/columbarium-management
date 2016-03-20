<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Section -->

		<script type="text/javascript" src="<%=request.getContextPath()%>/js/Blocks_Record_Form.js"></script>
	    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Blocks_Record_Form.css"/>
	
	    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
	    <script type="text/javascript" src = "<%=request.getContextPath()%>/js/index.js"></script>
	    <style>
	        tr, th, td{
	            text-align: center;
	        }
	    </style>
<div class = "responsive col s12">

    <div class = "row">

        <!-- Data Grid -->
        <div class = "col s8" style="margin-top: 13px; margin-left: 16%">
            <div class="row">
                <div id="admin" class="col s12">
                    <div class="row">
                        <div class="input-field col s2">
                            <label>Due Date This:</label>
                        </div>
                        <div class = "col s3" style = "padding-left: 20px;">
                            <select id="building">
                                <option value="0" disabled selected> Select Option:</option>
                                <option value="1">Day</option>
                                <option value="2">Week</option>
                                <option value="3">Month</option>
                            </select>
                        </div>
                    </div>
                    <div class="z-depth-2 card material-table">
                        <div class="table-header" style="background-color: #00897b;">
                            <h4 style = "font-size: 30px; color: white; padding-left: 0px;">Notification</h4>
                            <div class="actions">
                                <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                            </div>
                        </div>
                        <table id="datatable">
                            <thead>
                            <tr>
                                <th>Customer Name</th>
                                <th>Item</th>
                                <th>Service</th>
                                <th>Balance</th>
                                <th>Collection</th>
                                <th>Due Date</th>
                                <th>Notify</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Elizabeth Chu</td>
                                <td></td>
                                <td>Cremation</td>
                                <td>45,000</td>
                                <td>5,000</td>
                                <td>03/18/16</td>
                                <td><button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Notify</button></td>
                            </tr>
                            <tr>
                                <td>Elizabeth Chu</td>
                                <td></td>
                                <td>Cremation</td>
                                <td>45,000</td>
                                <td>5,000</td>
                                <td>03/18/16</td>
                                <td><button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Notify</button></td>
                            </tr>
                            <tr>
                                <td>Elizabeth Chu</td>
                                <td></td>
                                <td>Cremation</td>
                                <td>45,000</td>
                                <td>5,000</td>
                                <td>03/18/16</td>
                                <td><button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Notify</button></td>
                            </tr><tr>
                                <td>Elizabeth Chu</td>
                                <td></td>
                                <td>Cremation</td>
                                <td>45,000</td>
                                <td>5,000</td>
                                <td>03/18/16</td>
                                <td><button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Notify</button></td>
                            </tr>
                            <tr>
                                <td>Elizabeth Chu</td>
                                <td></td>
                                <td>Cremation</td>
                                <td>45,000</td>
                                <td>5,000</td>
                                <td>03/18/16</td>
                                <td><button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Notify</button></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <script type="text/javascript" src = "../js/index.js"></script>
        </div>
    </div>
</div>