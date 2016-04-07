<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script type="text/javascript" src = "<%=request.getContextPath()%>/js/datepicker.js"></script>
    <link href="<%=request.getContextPath()%>/css/vaults.css" rel="stylesheet" type="text/css"/>
    
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
    <script>
        function switchVisible() {
            if (document.getElementById('tableUnit') !== undefined) {

                if (document.getElementById('tableUnit').style.display == 'block') {
                    document.getElementById('tableUnit').style.display = 'none';
                    document.getElementById('tableStart').style.display = 'block';
                } else {
                    document.getElementById('tableUnit').style.display = 'block';
                    document.getElementById('tableStart').style.display = 'none';
                }
            }
        }
    </script>
    
<div class = col s12 >
    <div class = "row">
        <div class = "col s4">
            <h2 style = "padding-left: 40px; font-size: 30px; margin-top: 20px; font-family: 'KG Blank Space Sketch'">Manage Unit</h2>

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
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
                                                        </p>
                                                    </div>
                                                    <div class="collapsible-body">
                                                        <p>Block Two
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="collapsible-header" style = "background-color: #ffa726">
                                                        <i class="material-icons">view_module</i>Second Floor</div>
                                                    <div class="collapsible-body">
                                                        <p>Block Two
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
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
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
                                                        </p>
                                                    </div>
                                                    <div class="collapsible-body">
                                                        <p>Block Two
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="collapsible-header" style = "background-color: #ffa726">
                                                        <i class="material-icons">view_module</i>Second Floor</div>
                                                    <div class="collapsible-body">
                                                        <p>Block Two
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
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
                                                    <div class="collapsible-header" style = "background-color: #ffa726">
                                                        <i class="material-icons">view_module</i>First Floor</div>
                                                    <div class="collapsible-body">
                                                        <p>Block One
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
                                                        </p>
                                                    </div>
                                                    <div class="collapsible-body">
                                                        <p>Block Two
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="collapsible-header" style = "background-color: #ffa726">
                                                        <i class="material-icons">view_module</i>Second Floor</div>
                                                    <div class="collapsible-body">
                                                        <p>Block Two
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
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
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
                                                        </p>
                                                    </div>
                                                    <div class="collapsible-body">
                                                        <p>Block Two
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="collapsible-header" style = "background-color: #ffa726">
                                                        <i class="material-icons">view_module</i>Second Floor</div>
                                                    <div class="collapsible-body">
                                                        <p>Block Two
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
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
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
                                                        </p>
                                                    </div>
                                                    <div class="collapsible-body">
                                                        <p>Block Two
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="collapsible-header" style = "background-color: #ffa726">
                                                        <i class="material-icons">view_module</i>Second Floor</div>
                                                    <div class="collapsible-body">
                                                        <p>Block Two
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
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
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
                                                        </p>
                                                    </div>
                                                    <div class="collapsible-body">
                                                        <p>Block Two
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="collapsible-header" style = "background-color: #ffa726">
                                                        <i class="material-icons">view_module</i>Second Floor</div>
                                                    <div class="collapsible-body">
                                                        <p>Block Two
                                                            <button id="Button1" class="right btn red" type="button" onclick="javascript:switchVisible();">View</button>
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


        <div class = "col s8">
            <div class = "col s4 z-depth-2 " style = "margin-top: 20px; width: 100%;">
                <div id="tableStart">
                    <div class = "col s12">
                        <div class = "aside aside z-depth-3">
                            <div class="center vaults-content">
                                <table style="font-size: small; margin-bottom: 25px;margin-top: 25px">
                                    <tbody>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1"></a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="responsive" id="tableUnit" style="display: none">
                    <div class = "col s12">
                        <div class = "aside aside z-depth-3">
                            <div class="center vaults-content">
                                <table style="font-size: small; margin-bottom: 25px;margin-top: 25px">
                                    <tbody>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J1</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J2</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J3</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J4</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J5</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J6</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J7</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J8</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J9</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J10</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J11</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J12</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J13</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J14</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">J15</a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I1</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I2</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I3</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I4</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I5</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I6</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I7</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I8</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I9</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I10</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I11</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I12</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I13</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I14</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">I15</a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H1</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H2</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H3</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H4</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H5</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H6</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H7</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H8</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H9</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H10</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H11</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H12</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H13</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H14</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">H15</a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G1</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G2</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G3</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G4</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G5</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G6</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G7</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G8</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G9</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G10</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G11</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G12</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G13</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G14</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">G15</a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F1</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F2</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F3</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F4</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F5</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F6</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F7</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F8</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F9</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F10</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F11</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F12</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F13</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F14</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">F15</a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E1</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E2</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E3</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E4</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E5</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E6</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E7</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E8</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E9</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E10</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E11</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E12</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E13</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E14</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">E15</a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D1</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D2</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D3</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D4</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D5</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D6</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D7</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D8</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D9</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D10</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D11</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D12</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D13</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D14</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">D15</a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C1</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C2</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C3</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C4</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C5</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C6</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C7</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C8</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C9</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C10</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C11</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C12</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C13</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C14</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">C15</a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B1</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B2</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B3</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B4</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B5</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B6</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B7</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B8</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B9</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B10</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B11</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B12</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B13</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B14</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">B15</a></td>
                                    </tr>
                                    <tr>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A1</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A2</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A3</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A4</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A5</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A6</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A7</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A8</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A9</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A10</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A11</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A12</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A13</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A14</a></td>
                                        <td><a data-target="modal1" class="waves-effect waves-light modal-trigger" href="#modal1">A15</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <!-- Modal Structure -->
                                <div id="modal1" class="modal modal-fixed">
                                    <div class="modal-header">
                                        <label style="font-size: large">MANAGE UNIT</label>
                                    </div>
                                    <div class="cmxform" id="ownershipForm" action="Manage-Unit.html" method="get" autocomplete="off">
                                        <div class="row">
                                            <div class="input-field col s2">
                                                <label style="font-size: large"><b>Owner Name:</b></label>
                                            </div>
                                            <div class="input-field col s6">
                                                <label style="font-size: large">  <u>LastName, FirstName Middle Name</u></label>
                                            </div>
                                            <div class="input-field col s4">
                                                <a class="btn-floating btn-medium waves-effect waves-light green" id="tOwnership" href="javascript:toggle1();"><i class="material-icons" style="color: #ffffff;">mode_edit</i></a>
                                                <a class="btn-floating btn-medium waves-effect waves-light red" id="pOwnership" href="javascript:toggle();"><i class="material-icons" style="color: #ffffff">not_interested</i></a>
                                            </div>
                                        </div>
                                        <script language="javascript">
                                            function toggle() {
                                                var ele = document.getElementById("pullOutOwnership");
                                                var text = document.getElementById("pOwnership");
                                                if(ele.style.display == "block") {
                                                    ele.style.display = "none";
                                                }
                                                else {
                                                    ele.style.display = "block";
                                                }
                                            }
                                        </script>

                                        <script language="javascript">
                                            function toggle1() {
                                                var ele = document.getElementById("transferOwnership");
                                                var text = document.getElementById("tOwnership");
                                                if(ele.style.display == "block") {
                                                    ele.style.display = "none";
                                                }
                                                else {
                                                    ele.style.display = "block";
                                                }
                                            }
                                        </script>

                                        <script language="javascript">
                                            function toggle2() {
                                                var ele = document.getElementById("newCustomer");
                                                var text = document.getElementById("new");
                                                if(ele.style.display == "block") {
                                                    ele.style.display = "none";
                                                }
                                                else {
                                                    ele.style.display = "block";
                                                }
                                            }
                                        </script>

                                        <div class = "aside aside z-depth-3 col s12">
                                            <input type="radio" id="ser1" name="c1" onclick="showMe('div1')"/>
                                            <label for="ser1">Transfer Deceased</label>

                                            <input type="radio" id="ser2" name="c1" onclick="showMe('div2')"/>
                                            <label for="ser2">Pull Out Deceased</label>

                                            <div id="div1" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px;">
                                                <div id="update-deceased">
                                                    <br>
                                                    <div class="row">
                                                        <div class="input-field col s3">
                                                            <h6 style="color: #000000;">Deceased Name/s:</h6>
                                                            <p>
                                                                <input type="checkbox" id="dn11" checked="checked"/>
                                                                <label for="dn11" style="font-family: Arial">Name 1</label>
                                                            </p>
                                                            <p>
                                                                <input type="checkbox" id="dn21"/>
                                                                <label for="dn21" style="font-family: Arial">Name 2</label>
                                                            </p>
                                                            <p>
                                                                <input type="checkbox" id="dn31"/>
                                                                <label for="dn31" style="font-family: Arial">Name 3</label>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="input-field col s3">
                                                            <label>Building No:</label>
                                                        </div>
                                                        <div class = "col s9" style = "padding-left: 20px;">
                                                            <select>
                                                                <option value="" disabled selected> Select Building No:</option>
                                                                <option value="1">Building 1</option>
                                                                <option value="2">Building 2</option>
                                                                <option value="3">Building 3</option>
                                                            </select>

                                                        </div>
                                                        <div class="input-field col s3">
                                                            <label>Floor No:</label>
                                                        </div>
                                                        <div class = "col s9" style = "padding-left: 20px;">
                                                            <select>
                                                                <option value="" disabled selected> Select Floor No:</option>
                                                                <option value="1">Floor 1</option>
                                                                <option value="2">Floor 2</option>
                                                                <option value="3">Floor 3</option>
                                                            </select>
                                                        </div>
                                                        <div class="input-field col s3">
                                                            <label>Block Name:</label>
                                                        </div>
                                                        <div class = "col s9" style = "padding-left: 20px;">
                                                            <select>
                                                                <option value="" disabled selected> Select Block Name:</option>
                                                                <option value="1">Block A</option>
                                                                <option value="2">Block B</option>
                                                                <option value="3">Block C</option>
                                                            </select>
                                                        </div>
                                                        <div class="input-field col s3">
                                                            <label>Unit Code:</label>
                                                        </div>
                                                        <div class="input-field col s3">
                                                            <input id="ucode" type="text" class="validate">
                                                            <label for="ucode">Unit Code</label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="left input-field col s12">
                                                            <left>
                                                                <input type="checkbox" id="safeBox" name="c1" onclick="showMe('safeBox')"/>
                                                                <label for="safeBox">Transfer To Safe Box</label>
                                                            </left>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="input-field col s6" style="margin-bottom: 20px; visibility: hidden">

                                                        </div>
                                                        <div class="input-field col s6" style="margin-bottom: 20px;">
                                                            <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Confirm</button>
                                                            <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div id="div2" style="display:none; background-color: rgba(10, 193, 232, 0.12); margin: 13px;">
                                                <div id="pullOutDeceased">
                                                    <br>
                                                    <div class="row">
                                                        <div class="input-field col s3">
                                                            <h6 style="color: #000000;">Deceased Name/s:</h6>
                                                            <p>
                                                                <input type="checkbox" id="dn11" checked="checked"/>
                                                                <label for="dn11" style="font-family: Arial">Name 1</label>
                                                            </p>
                                                            <p>
                                                                <input type="checkbox" id="dn21"/>
                                                                <label for="dn21" style="font-family: Arial">Name 2</label>
                                                            </p>
                                                            <p>
                                                                <input type="checkbox" id="dn31"/>
                                                                <label for="dn31" style="font-family: Arial">Name 3</label>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="input-field col s6" style="margin-bottom: 20px; visibility: hidden">

                                                        </div>
                                                        <div class="input-field col s6" style="margin-bottom: 20px;">
                                                            <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Confirm</button>
                                                            <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div id="pullOutOwnership" style="display: none">
                                                <div class="modal-header">
                                                    <label style="font-size: large">Pull Out Ownership</label>
                                                </div>
                                                <form class="modal-transfer"method="get" autocomplete="off">
                                                    <div class="row">
                                                        <div class="input-field col s6">
                                                            <label>Are You Sure You Want to Pull Out Ownership?</label>
                                                        </div>
                                                        <div class="input-field col s5">
                                                            <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Confirm</button>
                                                            <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>

                                            <div id="newCustomer" style="display: none">
                                                <div class="modal-header">
                                                    <label style="font-size: large; text-align: center">Add New Customer</label>
                                                </div>
                                                <form class="cmxform" action="Manage-Unit.html" method="get" autocomplete="off">
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
                                            <br><br><br>

                                            <div id="transferOwnership" style="display: none">
                                                <div class="modal-header">
                                                    <label style="font-size: large">Transfer Ownership</label>
                                                </div>
                                                <form class="modal-transfer"method="get" autocomplete="off">
                                                    <div class="row">
                                                        <div class="input-field col s3">
                                                            <label>New Owner Name:</label>
                                                        </div>
                                                        <div class="input-field      col s6">
                                                            <input name="cname" id="cname" type="text" required="" aria-required="true" class="validate" list="nameList">
                                                            <label for="cname">Customer Name</label>
                                                        </div>
                                                        <div class="input-field col s2">
                                                            <a class="btn-floating btn-medium waves-effect waves-light red" id="new" href="javascript:toggle2();">New</a>
                                                        </div>
                                                        <div class="right row">
                                                            <div class="input-field col s12">
                                                                <button name = "action" class="waves-effect waves-light btn red" style = "margin-left: 10px; margin-right: 10px">Confirm</button>
                                                                <button name = "action" class="waves-effect waves-light btn red">Cancel</button>
                                                            </div>
                                                        </div>
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>