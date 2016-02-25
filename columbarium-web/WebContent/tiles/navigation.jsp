

	<!-- Materialize -->
	    <meta charset="UTF-8">
	    <!--Let browser know website is optimized for mobile-->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	    <!--Import jQuery before materialize.js-->
	    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	    <!-- Compiled and minified JavaScript -->
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.95.3/js/materialize.min.js"></script>
	    <!-- Compiled and minified CSS -->
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
	    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	    <!-- Compiled and minified JavaScript -->
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
	
	
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
	            <a href="#!" class="brand-logo left">Logo</a>
	            <ul class="right hide-on-med-and-down">
	                <li><a class="dropdown-button" href="#!" data-beloworigin="true" data-activates="dropdown1">Maintenance<i class="material-icons right">arrow_drop_down</i></a></li>
	                <li><a class="dropdown-button" href="#!" data-beloworigin="true" data-activates="dropdown2">Transaction<i class="material-icons right">arrow_drop_down</i></a></li>
	                <li><a class="dropdown-button" href="#!" data-beloworigin="true" data-activates="dropdown3">Queries<i class="material-icons right">arrow_drop_down</i></a></li>
	                <li><a class="dropdown-button" href="#!" data-beloworigin="true" data-activates="dropdown4">Reports<i class="material-icons right">arrow_drop_down</i></a></li>
	                <li><a class="dropdown-button" href="#!" data-beloworigin="true" data-activates="dropdown5">Utilities<i class="material-icons right">arrow_drop_down</i></a></li>
	            </ul>
	        </div>
	    </nav>
	</div>
	
	<!-- Dropdown Maintenance-->
	<ul id="dropdown1" class="dropdown-content">
	    <li><a href="<%=request.getContextPath()%>/item">Inventory</a></li>
	    <li><a href="<%=request.getContextPath()%>/requirement">Requirements</a></li>
	    <li><a href="<%=request.getContextPath()%>/service">Service</a></li>
	    <li class="divider"></li>
	    <li><a href="Package_Maintenance.html">Package</a></li>
	    <li><a href="Building_Maintenance.html">Building</a></li>
	    <li><a href="Floor_Maintenance.html">Floor</a></li>
	    <li><a href="Blocks_Maintenance.html">Block</a></li>
	    <li><a href="vaults.html">Vaults</a></li>
	    <li><a href="FullBodyCrypts.html">Body Crypts</a></li>
	</ul>
	
	<!-- Dropdown Transaction -->
	<ul id="dropdown2" class="dropdown-content">
	    <li><a href="Customer.html">Customer</a></li>
	    <li><a href="Reservation_Transaction.html">Reservation</a></li>
	    <li><a href="scheduling.html">Scheduling</a></li>
	    <li class="divider"></li>
	    <li><a href="Collection_Transaction.html">Collection</a></li>
	    <li><a href="UnitOwnership.html">Transferring</a></li>
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