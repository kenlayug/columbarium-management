<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/style.css"/>
<link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/datepicker.css"/>
<link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/CustomerCSS.css"/>

<div class = "col s12">
    <div class = "row">
        <div class = "col s5" style="margin-top: 13px;">

            <!-- Create Customer -->
            <div class = "col s12" id="formCreate">
                <div class = "aside aside z-depth-3">
                    <div class="table-header" style="background-color: #00897b;">
                        <h4 style = "font-size: 20px; font-family: myFirstFont2; color: white; padding: 20px;">Add Customer</h4>
                    </div>
                    <form class="cmxform" action="Customer.html" method="get" autocomplete="off">
                        <div class="row">
                            <div class="input-field col s4">
                                <input id="cFirstName" type="text" required="" aria-required="true" class="validate" minlength = "1" maxlength="20" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,20}">
                                <label for="cFirstName">First Name<span style = "color: red;">*</span></label>
                            </div>
                            <div class="input-field col s4">
                                <input id="cMidName" type="text" class="validate" minlength = "1" maxlength="20" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,20}">
                                <label for="cMidName">Middle Name</label>
                            </div>
                            <div class="input-field col s4">
                                <input id="cLastName" type="text" required="" aria-required="true" class="validate" minlength = "1" maxlength="20" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,20}">
                                <label for="cLastName">Last Name<span style = "color: red;">*</span></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s8">
                                <input id="address" type="text" required="" aria-required="true" class="validate" minlength = "1" maxlength="100" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,100}">
                                <label for="address">Address<span style = "color: red;">*</span></label>
                            </div>
                            <div class="input-field col s4">
                                <input id="cNo" type="text" required="" aria-required="true" class="validate" pattern="\d{4}[\-, ., ]\d{3}[\-, ., ]\d{4}">
                                <label for="cNo" data-error="Format: XXXX-XXX-XXXX">Contact Number<span style = "color: red;">*</span></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s4">
                                <input id="dateOfBirth" type="date" required="" aria-required="true" class="datepicker">
                                <label for="dateOfBirth">Date of Birth:</label>
                            </div>
                            <div class="input-field col s2">
                                <label>Gender:</label>
                            </div>
                            <div class="input-field col s5">
                                <p>
                                    <input name="cGender" type="radio" id="cMale" checked="checked"/>
                                    <label for="cMale">Male</label>
                                    <input name="cGender" type="radio" id="cFemale" />
                                    <label for="cFemale">Female</label>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s3">
                                <label>Civil Status:</label>
                            </div>
                            <div class="input-field col s8">
                                <p>
                                    <input name="cStatus" type="radio" id="single" checked="checked"/>
                                    <label for="single">Single</label>
                                    <input name="cStatus" type="radio" id="married" />
                                    <label for="married">Married</label>
                                    <input name="cStatus" type="radio" id="widow" />
                                    <label for="widow">Widow/Widower</label>
                                </p>
                            </div>
                            <i class = "left" style = "margin-top: 20px; padding-left: 15px; color: red;">*Required Fields</i>
                            <div class="right row">
                                <div class="input-field col s12">
                                    <br>
                                    <button name = "action" class="waves-light btn light-green" style = "color: #000000; margin-left: 10px; margin-right: 10px">Confirm</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Update Customer Details -->
        <div id="modal1" class="modal">
            <div class="modal-header" style="background-color: #00897b;">
                <h4 style = "font-size: 20px; font-family: myFirstFont2; color: white; padding: 20px;">Update Customer</h4>
            </div>
            <form class="cmxform" action="Customer.html" method="get" autocomplete="off">
                <div class="row">
                    <div class="input-field col s4">
                        <input id="uFirstName" type="text" required="" aria-required="true" class="validate" minlength = "1" maxlength="20" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,20}">
                        <label for="uFirstName">First Name<span style = "color: red;">*</span></label>
                    </div>
                    <div class="input-field col s4">
                        <input id="uMidName" type="text" class="validate" minlength = "1" maxlength="20" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,20}">
                        <label for="uMidName">Middle Name</label>
                    </div>
                    <div class="input-field col s4">
                        <input id="uLastName" type="text" required="" aria-required="true" class="validate" minlength = "1" maxlength="20" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,20}">
                        <label for="uLastName">Last Name<span style = "color: red;">*</span></label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s8">
                        <input id="uaddress" type="text" required="" aria-required="true" class="validate" minlength = "1" maxlength="100" pattern= "^[a-zA-Z'-\s]+|[0-9a-zA-Z'-\s]+|[a-zA-Z0-9'-]{1,100}">
                        <label for="uaddress">Address<span style = "color: red;">*</span></label>
                    </div>
                    <div class="input-field col s4">
                        <input id="ucNum" type="text" required="" aria-required="true" class="validate" pattern="\d{4}[\-, ., ]\d{3}[\-, ., ]\d{4}">
                        <label for="ucNum" data-error="Format: XXXX-XXX-XXXX">Contact Number<span style = "color: red;">*</span></label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s4">
                        <input id="udayB" type="date" class="datepicker">
                        <label for="udayB">Date of Birth:</label>
                    </div>
                    <div class="input-field col s2">
                        <label>Gender:</label>
                    </div>
                    <div class="input-field col s5">
                        <p>
                            <input name="group1" type="radio" id="ugender1" checked="checked"/>
                            <label for="ugender1">Male</label>
                            <input name="group1" type="radio" id="ugender2" />
                            <label for="ugender2">Female</label>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s3">
                        <label>Civil Status:</label>
                    </div>
                    <div class="input-field col s8">
                        <p>
                            <input name="ugroup11" type="radio" id="utest1" checked="checked"/>
                            <label for="utest1">Single</label>
                            <input name="ugroup11" type="radio" id="utest2" />
                            <label for="utest2">Married</label>
                            <input name="ugroup11" type="radio" id="utest3" />
                            <label for="utest3">Widow/Widower</label>
                        </p>
                    </div>
                    <i class = "left" style = "margin-top: 20px; padding-left: 15px; color: red;">*Required Fields</i>
                    <div class="right row">
                        <div class="input-field col s12">
                            <br><br>
                            <button name = "action" class="waves-light btn light-green" style = "color: #000000; margin-left: -300px; margin-right: 10px">Confirm</button>
                        </div>
                    </div>
                </div>


            </form>
            <button name = "action" class="waves-light btn light-green modal-close" style="color: #000000; margin-top: -140px; margin-left: 580px;">Cancel</button>
        </div>


        <!-- Modal Deactivate -->
        <div id="modal2" class="modal">
            <div class="modal-header" style="background-color: #00897b;">
                <h4 style = "font-size: 20px; font-family: myFirstFont2; color: white; padding: 20px;">Deactivate Customer</h4>
            </div>
            <form action="Customer.html" method="post">
                <div class="row">
                    <div class="input-field col s8">
                        <label style="font-size: large">Are You Sure You Want to Deactivate Customer?</label>
                    </div>
                </div>
                <div class="row">
                    <div class="modal-footer">
                        <button name = "action" class="waves-light btn light-green" style="margin-left: 10px; margin-right: 10px; color: #000000;">No</button>
                        <button name = "action" class="waves-light btn light-green" style = "margin-left: 10px; color: #000000;">Yes</button>
                    </div>
                </div>
            </form>
        </div>

        <!-- Modal List of Deactivated Customer -->
        <div id="modalListOfDeactivatedCustomer" class="modal" style = "height: 1200px; width: 600px;">
            <div class="modal-content">
                <!-- Data Grid Deactivated Customer-->
                <div id="admin2" class="col s12" style="margin-top: 0px">
                    <div class="z-depth-2 card material-table" style="margin-top: 0px">
                        <div class="table-header" style="height: 55px; background-color: #00897b;">
                            <h4 style = "padding-top: 10px; font-size: 20px; color: white; padding-left: 0px;">Deactivated Customer</h4>
                        </div>
                        <table id="datatable2">
                            <thead>
                            <tr>
                                <th>Customer Name</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>John Ezekiel Martinez</td>
                                <td>
                                    <button name = "action" class="btn light-green modal-close" style="color: #000000">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Aaron Clyde Garil</td>
                                <td>
                                    <button name = "action" class="btn light-green modal-close" style="color: #000000">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Aila Bianca Jacalne</td>
                                <td>
                                    <button name = "action" class="btn light-green modal-close" style="color: #000000">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Kyle Canete</td>
                                <td>
                                    <button name = "action" class="btn light-green modal-close" style="color: #000000">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Letecia Mirasol</td>
                                <td>
                                    <button name = "action" class="btn light-green modal-close" style="color: #000000">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Gil Bacarisas</td>
                                <td>
                                    <button name = "action" class="btn light-green modal-close" style="color: #000000">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Mary Ann Garil</td>
                                <td>
                                    <button name = "action" class="btn light-green modal-close" style="color: #000000">Activate</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Debbie Bacarisas</td>
                                <td>
                                    <button name = "action" class="btn light-green modal-close" style="color: #000000">Activate</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <button name = "action" class="btn light-green modal-close right" style = "color: #000000; margin-bottom: 10px; margin-right: 30px;">DONE</button>
        </div>


        <div class = "col s7">
            <div class="row">
                <div id="admin" class="col s12" style="margin-top: 20px">
                    <div class="z-depth-2 card material-table">
                        <div class="table-header" style="background-color: #00897b;">
                            <span class="table-title" style="color:#ffffff; font-family: myFirstFont2;">Customer Data Table</span>
                            <div class="actions">
                                <button name = "action" class="modal-trigger btn-floating light-green" style = "margin-right: 10px;" href = "#modalListOfDeactivatedCustomer"><i class="material-icons" style = "color: #000000">delete</i></button>
                                <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons" style="color: #ffffff;">search</i></a>
                            </div>
                        </div>
                        <table id="datatable">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Contact No.</th>
                                <th>Address</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Tiger Nixon</td>
                                <td>09314242123</td>
                                <td>Edinburgh</td>
                                <td><button name = "action" class="modal-trigger btn-floating light-green" href = "#modal1"><i class="material-icons" style="color: #000000">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating light-green" href = "#modal2"><i class="material-icons" style="color: #000000">not_interested</i></button></td> </tr>
                            </tr>
                            <tr>
                                <td>Garrett Winters</td>
                                <td>09314242123</td>
                                <td>Edinburgh</td>
                                <td><button name = "action" class="modal-trigger btn-floating light-green" href = "#modal1"><i class="material-icons" style="color: #000000">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating light-green" href = "#modal2"><i class="material-icons" style="color: #000000">not_interested</i></button></td> </tr>
                            </tr>
                            <tr>
                                <td>Ashton Cox</td>
                                <td>09314242123</td>
                                <td>Edinburgh</td>
                                <td><button name = "action" class="modal-trigger btn-floating light-green" href = "#modal1"><i class="material-icons" style="color: #000000">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating light-green" href = "#modal2"><i class="material-icons" style="color: #000000">not_interested</i></button></td> </tr>
                            </tr>
                            <tr>
                                <td>Cedric Kelly</td>
                                <td>09314242123</td>
                                <td>Edinburgh</td>
                                <td><button name = "action" class="modal-trigger btn-floating light-green" href = "#modal1"><i class="material-icons" style="color: #000000">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating light-green" href = "#modal2"><i class="material-icons" style="color: #000000">not_interested</i></button></td> </tr>
                            </tr>
                            <tr>
                                <td>Airi Satou</td>
                                <td>09314242123</td>
                                <td>Edinburgh</td>
                                <td><button name = "action" class="modal-trigger btn-floating light-green" href = "#modal1"><i class="material-icons" style="color: #000000">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating light-green" href = "#modal2"><i class="material-icons" style="color: #000000">not_interested</i></button></td> </tr>
                            </tr>
                            <tr>
                                <td>Brielle Williamson</td>
                                <td>09314242123</td>
                                <td>Edinburgh</td>
                                <td><button name = "action" class="modal-trigger btn-floating light-green" href = "#modal1"><i class="material-icons" style="color: #000000">mode_edit</i></button>
                                    <button name = "action" class="modal-trigger btn-floating light-green" href = "#modal2"><i class="material-icons" style="color: #000000">not_interested</i></button></td> </tr>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
            <script src='http://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js'></script>
            <script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js'></script>
            <!-- Data Table JS -->
            <script>
                (function(window, document, undefined) {

                    var factory = function($, DataTable) {
                        "use strict";

                        $('.search-toggle').click(function() {
                            if ($('.hiddensearch').css('display') == 'none')
                                $('.hiddensearch').slideDown();
                            else
                                $('.hiddensearch').slideUp();
                        });

                        <!-- Scheduling Slide Add Time -->
                        $('.add-toggle').click(function() {
                            if ($('#addTime').css('display') == 'none')
                                $('#addTime').slideDown();
                            else
                                $('#addTime').slideUp();
                        });


                        /* Set the defaults for DataTables initialisation */
                        $.extend(true, DataTable.defaults, {
                            dom: "<'hiddensearch'f'>" +
                            "tr" +
                            "<'table-footer'lip'>",
                            renderer: 'material'
                        });

                        /* Default class modification */
                        $.extend(DataTable.ext.classes, {
                            sWrapper: "dataTables_wrapper",
                            sFilterInput: "form-control input-sm",
                            sLengthSelect: "form-control input-sm"
                        });

                        /* Bootstrap paging button renderer */
                        DataTable.ext.renderer.pageButton.material = function(settings, host, idx, buttons, page, pages) {
                            var api = new DataTable.Api(settings);
                            var classes = settings.oClasses;
                            var lang = settings.oLanguage.oPaginate;
                            var btnDisplay, btnClass, counter = 0;

                            var attach = function(container, buttons) {
                                var i, ien, node, button;
                                var clickHandler = function(e) {
                                    e.preventDefault();
                                    if (!$(e.currentTarget).hasClass('disabled')) {
                                        api.page(e.data.action).draw(false);
                                    }
                                };

                                for (i = 0, ien = buttons.length; i < ien; i++) {
                                    button = buttons[i];

                                    if ($.isArray(button)) {
                                        attach(container, button);
                                    } else {
                                        btnDisplay = '';
                                        btnClass = '';

                                        switch (button) {

                                            case 'first':
                                                btnDisplay = lang.sFirst;
                                                btnClass = button + (page > 0 ?
                                                                '' : ' disabled');
                                                break;

                                            case 'previous':
                                                btnDisplay = '<i class="material-icons">chevron_left</i>';
                                                btnClass = button + (page > 0 ?
                                                                '' : ' disabled');
                                                break;

                                            case 'next':
                                                btnDisplay = '<i class="material-icons">chevron_right</i>';
                                                btnClass = button + (page < pages - 1 ?
                                                                '' : ' disabled');
                                                break;

                                            case 'last':
                                                btnDisplay = lang.sLast;
                                                btnClass = button + (page < pages - 1 ?
                                                                '' : ' disabled');
                                                break;

                                        }

                                        if (btnDisplay) {
                                            node = $('<li>', {
                                                'class': classes.sPageButton + ' ' + btnClass,
                                                'id': idx === 0 && typeof button === 'string' ?
                                                settings.sTableId + '_' + button : null
                                            })
                                                    .append($('<a>', {
                                                                'href': '#',
                                                                'aria-controls': settings.sTableId,
                                                                'data-dt-idx': counter,
                                                                'tabindex': settings.iTabIndex
                                                            })
                                                            .html(btnDisplay)
                                                    )
                                                    .appendTo(container);

                                            settings.oApi._fnBindAction(
                                                    node, {
                                                        action: button
                                                    }, clickHandler
                                            );

                                            counter++;
                                        }
                                    }
                                }
                            };

                            // IE9 throws an 'unknown error' if document.activeElement is used
                            // inside an iframe or frame.
                            var activeEl;

                            try {
                                // Because this approach is destroying and recreating the paging
                                // elements, focus is lost on the select button which is bad for
                                // accessibility. So we want to restore focus once the draw has
                                // completed
                                activeEl = $(document.activeElement).data('dt-idx');
                            } catch (e) {}

                            attach(
                                    $(host).empty().html('<ul class="material-pagination"/>').children('ul'),
                                    buttons
                            );

                            if (activeEl) {
                                $(host).find('[data-dt-idx=' + activeEl + ']').focus();
                            }
                        };

                        /*
                         * TableTools Bootstrap compatibility
                         * Required TableTools 2.1+
                         */
                        if (DataTable.TableTools) {
                            // Set the classes that TableTools uses to something suitable for Bootstrap
                            $.extend(true, DataTable.TableTools.classes, {
                                "container": "DTTT btn-group",
                                "buttons": {
                                    "normal": "btn btn-default",
                                    "disabled": "disabled"
                                },
                                "collection": {
                                    "container": "DTTT_dropdown dropdown-menu",
                                    "buttons": {
                                        "normal": "",
                                        "disabled": "disabled"
                                    }
                                },
                                "print": {
                                    "info": "DTTT_print_info"
                                },
                                "select": {
                                    "row": "active"
                                }
                            });

                            // Have the collection use a material compatible drop down
                            $.extend(true, DataTable.TableTools.DEFAULTS.oTags, {
                                "collection": {
                                    "container": "ul",
                                    "button": "li",
                                    "liner": "a"
                                }
                            });
                        }

                    }; // /factory

                    // Define as an AMD module if possible
                    if (typeof define === 'function' && define.amd) {
                        define(['jquery', 'datatables'], factory);
                    } else if (typeof exports === 'object') {
                        // Node/CommonJS
                        factory(require('jquery'), require('datatables'));
                    } else if (jQuery) {
                        // Otherwise simply initialise as normal, stopping multiple evaluation
                        factory(jQuery, jQuery.fn.dataTable);
                    }

                })(window, document);

                $(document).ready(function() {
                    $('#datatable').dataTable({
                        "iDisplayLength": 5,
                        "oLanguage": {
                            "sStripClasses": "",
                            "sSearch": "",
                            "sSearchPlaceholder": "Enter Keywords Here",
                            "sInfo": "_START_ -_END_ of _TOTAL_",
                            "sLengthMenu": '<span>Rows per page:</span><select class="browser-default">' +
                            '<option value="5">5</option>' +
                            '<option value="10">10</option>' +
                            '<option value="20">20</option>' +
                            '<option value="30">30</option>' +
                            '<option value="40">40</option>' +
                            '<option value="50">50</option>' +
                            '<option value="-1">All</option>' +
                            '</select></div>'
                        },
                        bAutoWidth: false
                    });
                });

                $(document).ready(function() {
                    $('#datatable3').dataTable({
                        "iDisplayLength": 5,
                        "oLanguage": {
                            "sStripClasses": "",
                            "sSearch": "",
                            "sSearchPlaceholder": "Enter Keywords Here",
                            "sInfo": "_START_ -_END_ of _TOTAL_",
                            "sLengthMenu": '<span>Rows per page:</span><select class="browser-default">' +
                            '<option value="5">5</option>' +
                            '<option value="10">10</option>' +
                            '<option value="20">20</option>' +
                            '<option value="30">30</option>' +
                            '<option value="40">40</option>' +
                            '<option value="50">50</option>' +
                            '<option value="-1">All</option>' +
                            '</select></div>'
                        },
                        bAutoWidth: false
                    });
                });

                $(document).ready(function() {
                    $('#datatable2').dataTable({
                        "iDisplayLength": 5,
                        "oLanguage": {
                            "sStripClasses": "",
                            "sSearch": "",
                            "sSearchPlaceholder": "Enter Keywords Here",
                            "sInfo": "_START_ -_END_ of _TOTAL_",
                            "sLengthMenu": '<span>Rows per page:</span><select class="browser-default">' +
                            '<option value="5">5</option>' +
                            '<option value="10">10</option>' +
                            '<option value="20">20</option>' +
                            '<option value="30">30</option>' +
                            '<option value="40">40</option>' +
                            '<option value="50">50</option>' +
                            '<option value="-1">All</option>' +
                            '</select></div>'
                        },
                        bAutoWidth: false
                    });
                });
            </script>
        </div>
    </div>

    <script>
        $(document).ready(function(){
            // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
            $('.modal-trigger').leanModal();
        });
    </script>
    <script>
        $( document ).ready(function() {
            $('.datepicker').pickadate({
                format: 'mm/dd/yyyy',
                selectMonths: true, // Creates a dropdown to control month
                selectYears: 15 // Creates a dropdown of 15 years to control year
            });
        });
    </script>

</div>