<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/Requirements_Maintenance.css"/>

	<!-- Floating Button -->
	
	<div class="fixed-action-btn horizontal" style="position: absolute; margin-right: 620px; margin-bottom: 160px;">
	    <div class = "responsive">
	        <button name = "action" class="btn-floating btn-large red"><i class="large material-icons">add</i>
	        </button>
	        <ul>
	            <li><button name = "action" class="btn-floating modal-trigger black" href = "#modal2"><i class="material-icons">delete</i></button></li>
	            <li><button name = "action" class="btn-floating modal-trigger green darken-1" href = "#modal1"><i class="material-icons">mode_edit</i></button></li>
	        </ul>
	    </div>
	</div>
	
	
	<!-- Section -->
	
	<div class = "responsive col s12">
	    <div class = "row">
	        <div class = "col s7">
	            <h4>Requirement Maintenance</h4>
	            <!-- Create Requirement -->
	            <div class = "col s12">
	                <div class = "wrapper responsive aside aside z-depth-2">
	                    <div class = "header">
	                        <h4 style = "stroke: black; stroke-width: 10px;">Requirement Form</h4>
	                    </div>
	
	                    <form class = "col s6">
	                        <div class="row">
	                            <div class="input-field col s12">
	                                <input id="reqName" type="text" class="validate">
	                                <label for="reqName">Requirement Name</label>
	                            </div>
	                        </div>
	                    </form>
	
	                    <form class = "col s12">
	                        <div class="row">
	                            <div class="input-field col s12">
	                                <input id="reqDesc" type="text" class="validate">
	                                <label for="reqDesc">Requirement Description</label>
	                            </div>
	                        </div>
	                    </form>
	
	                </div>
	            </div>
	        </div>
	
	        <!-- Modal Update -->
	        <div id="modal1" class="modal">
	            <div class = "modal-header">
	                <h4>Update Block</h4>
	            </div>
	            <div class="modal-content">
	
	                <form class = "col s12">
	                    <div class="row">
	                        <!-- Select Requirement Name -->
	                        <div class = "col s6" style = "padding-left: 20px;">
	                            <label>Select Requirement Name to be changed</label>
	                            <select>
	                                <option value="" disabled selected>Requirement Name:</option>
	                                <option value="1">Requirement One</option>
	                                <option value="2">Requirement Two</option>
	                                <option value="3">Requirement Three</option>
	                            </select>
	                        </div>
	                    </div>
	                </form>
	
	                <div style = "padding-left: 10px;">
	                <div class = "col s6">
	                    <div class="input-field col s12">
	                        <input id="reqNameUpdate" type="text" class="validate">
	                        <label for="reqNameUpdate">New Requirement Name</label>
	                    </div>
	                </div>
	
	                <div class = "col s12">
	                    <div class="input-field col s12">
	                        <input id="reqDescUpdate" type="text" class="validate">
	                        <label for="reqDescUpdate">New Requirement Description</label>
	                    </div>
	                </div>
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
	                <h4>Deactivate Requirement</h4>
	            </div>
	            <div class="modal-content">
	                <form class = "col s12">
	                    <div class="row">
	                        <!-- Select Requirement Name -->
	                        <div class = "col s6" style = "padding-left: 20px;">
	                            <label>Select Requirement Name to be deactivated</label>
	                            <select>
	                                <option value="" disabled selected>Requirement Name:</option>
	                                <option value="1">Requirement One</option>
	                                <option value="2">Requirement Two</option>
	                                <option value="3">Requirement Three</option>
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
	                <div class = "responsive">
	
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
	            </div>
	
	            <br>
	            <br>
	            <br>
	            <br>
	            <br>
	
	            <div class = "aside z-depth-2" style = "margin-left: 60px; width: 450px; height: 340px; overflow: auto;">
	                <table class = "responsive highlight z-depth-3" style = "margin-top: 10px; margin-left: 0px; width: 100%; height: 200px;">
	
	
	                    <thead class = "fixed-header">
	                    <tr>
	                        <th data-field="id">Requirement name</th>
	                        <th data-field="name">Requirement Description</th>
	                    </tr>
	                    </thead>
	
	                    <tbody>
	                    <tr>
	                        <td>Requirement One</td>
	                        <td>Description One</td>
	                    </tr>
	
	                    <tr>
	                        <td>Requirement One</td>
	                        <td>Description One</td>
	                    </tr>
	
	                    <tr>
	                        <td>Requirement One</td>
	                        <td>Description One</td>
	                    </tr>
	
	                    <tr>
	                        <td>Requirement One</td>
	                        <td>Description One</td>
	                    </tr>
	
	                    <tr>
	                        <td>Requirement One</td>
	                        <td>Description One</td>
	                    </tr>
	                    <tr>
	                        <td>Requirement One</td>
	                        <td>Description One</td>
	                    </tr>
	                    <tr>
	                        <td>Requirement One</td>
	                        <td>Description One</td>
	                    </tr>
	                    </tbody>
	                </table>
	            </div>
	        </div>
	    </div>
	</div>