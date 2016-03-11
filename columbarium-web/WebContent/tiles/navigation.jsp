

	<!-- Materialize -->
	    <meta charset="UTF-8">
	    <!--Let browser know website is optimized for mobile-->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

	    <!-- Import CSS/JS -->
	    <script type="text/javascript" src="<%=request.getContextPath()%>/js/navigation.js"></script>
	    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/navigation.css"/>

</head>
<body>
	<body class = "responsive">
	<!-- Navbar -->
	<div class="navbar-fixed navbar-leo">
	    <nav>
	        <div class="nav-wrapper">
	            <a href="#!" class="brand-logo left">
					<img src="../img/sad_logo.jpg" alt="" style="width:100px;height:100px;">
	           </a>
	            <ul class="right hide-on-med-and-down">
	                <li><a class="dropdown-button" data-beloworigin="true" data-activates="dropdown1">Maintenance<i class="material-icons right">arrow_drop_down</i></a></li>
	                <li><a class="dropdown-button" data-beloworigin="true" data-activates="dropdown2">Transaction<i class="material-icons right">arrow_drop_down</i></a></li>
	                <li><a class="dropdown-button" data-beloworigin="true" data-activates="dropdown3">Queries<i class="material-icons right">arrow_drop_down</i></a></li>
	                <li><a class="dropdown-button" data-beloworigin="true" data-activates="dropdown4">Reports<i class="material-icons right">arrow_drop_down</i></a></li>
	                <li><a class="dropdown-button" data-beloworigin="true" data-activates="dropdown5">Utilities<i class="material-icons right">arrow_drop_down</i></a></li>
	            </ul>
	        </div>
	    </nav>
	</div>
	
	<!-- Dropdown Maintenance-->
	<ul id="dropdown1" class="dropdown-content">
	    <li><a href="<%=request.getContextPath()%>/item">Item</a></li>
	    <li><a href="<%=request.getContextPath()%>/requirement">Requirement</a></li>
	    <li><a href="<%=request.getContextPath()%>/service">Service</a></li>
	    <li><a href="<%=request.getContextPath()%>/package">Package</a></li>
	    <li class="divider"></li>
	    <li><a href="<%=request.getContextPath()%>/building">Building</a></li>
	    <li><a href="<%=request.getContextPath()%>/floor">Floor</a></li>
	    <li><a href="<%=request.getContextPath()%>/block">Block</a></li>
	    <li><a href="vaults.html">Unit</a></li>

	</ul>
	
	<!-- Dropdown Transaction -->
	<ul id="dropdown2" class="dropdown-content">
	    <li><a href="Reservation_Transaction.html">Reservation</a></li>
	    <li><a href="scheduling.html">Scheduling</a></li>
	    <li class="divider"></li>
	    <li><a href="Collection_Transaction.html">Collection</a></li>
	    <li><a href="UnitOwnership.html">Ownership</a></li>
		<li><a href="UnitOwnership.html">Manage Unit</a></li>
	</ul>
	
	<!-- Dropdown Queries -->
	<ul id="dropdown3" class="dropdown-content">
	    <li><a href="Maintenance.jsp.html">Product</a></li>
	    <li><a href="Employee-Maintenance.jsp.html">Employee</a></li>
	    <li class="divider"></li>
	    <li><a href="Customer-Maintenance.jsp.html">Customer</a></li>
	</ul>
	
	<!-- Dropdown Reports -->
	<ul id="dropdown4" class="dropdown-content">
	    <li><a href="Reservation_Report.html">Reservation Record</a></li>
	    <li><a href="scheduling-report.html">Scheduling Record</a></li>
	    <li class="divider"></li>
	    <li><a href="Collection_Report.html">Collection Record</a></li>
	    <li><a href="transferring-report.html">Transferring Record</a></li>
	</ul>
	
	<!-- Dropdown Utilities -->
	<ul id="dropdown5" class="dropdown-content">
	    <li><a href="Employee.html">Employee</a></li>
	    <li class="divider"></li>
	</ul>