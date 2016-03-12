

	<!-- Materialize -->
	    <meta charset="UTF-8">
	    <!--Let browser know website is optimized for mobile-->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

	    <!-- Import CSS/JS -->
	    <script type="text/javascript" src="<%=request.getContextPath()%>/js/navigation.js"></script>
	    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/navigation.css"/>

	<style>
		#dropdown6 li a{
			color: white;
			background-color: #ff8f00;
		}
	</style>

</head>
<body>
	<body class = "responsive">

	<div class="navbar-fixed navbar-leo">
		<nav>
			<div class="nav-wrapper">
				<a href="#!" class="brand-logo left">
					<h2 style = "padding-top: 0px; font-size: 20px; padding-left: 20px;">Columbary and Crematory Services Management with Billing and Collection Monitoring System</h2>
				</a>
			</div>
		</nav>
	</div>

	<!-- Navbar -->
	<div class="navbar-fixed navbar-leo">
	    <nav>
	        <div class="nav-wrapper">
	            <ul class="right hide-on-med-and-down">
	                <li><a class="dropdown-button" data-beloworigin="true" data-activates="dropdown1">Maintenance<i class="material-icons right">arrow_drop_down</i></a></li>
	                <li><a class="dropdown-button" data-beloworigin="true" data-activates="dropdown2">Transaction<i class="material-icons right">arrow_drop_down</i></a></li>
	                <li><a class="dropdown-button" data-beloworigin="true" data-activates="dropdown3">Queries<i class="material-icons right">arrow_drop_down</i></a></li>
	                <li><a class="dropdown-button" data-beloworigin="true" data-activates="dropdown4">Reports<i class="material-icons right">arrow_drop_down</i></a></li>
	                <li><a class="dropdown-button" data-beloworigin="true" data-activates="dropdown5">Utilities<i class="material-icons right">arrow_drop_down</i></a></li>
					<li><a class="dropdown-button" data-beloworigin="true" data-activates="dropdown6">Account<i class="material-icons right">arrow_drop_down</i></a></li>
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
	    <li><a href="<%=request.getContextPath()%>/unit">Unit</a></li>

	</ul>
	
	<!-- Dropdown Transaction -->
	<ul id="dropdown2" class="dropdown-content">
	    <li><a href="<%=request.getContextPath()%>">Inventory</a></li>
	    <li><a href="<%=request.getContextPath()%>">Buy, Reserved, At need</a></li>
	    <li class="divider"></li>
	    <li><a href="<%=request.getContextPath()%>">Schedule</a></li>
	    <li><a href="<%=request.getContextPath()%>">Manage Unit</a></li>
		<li><a href="<%=request.getContextPath()%>">Collection</a></li>
		<li><a href="<%=request.getContextPath()%>">Notification</a></li>
		<li><a href="<%=request.getContextPath()%>">Avail</a></li>
	</ul>
	
	<!-- Dropdown Queries -->
	<ul id="dropdown3" class="dropdown-content">
	    <li><a href="<%=request.getContextPath()%>">Product</a></li>
	    <li><a href="<%=request.getContextPath()%>">Employee</a></li>
	    <li class="divider"></li>
	    <li><a href="<%=request.getContextPath()%>">Customer</a></li>
	</ul>
	
	<!-- Dropdown Reports -->
	<ul id="dropdown4" class="dropdown-content">
	    <li><a href="<%=request.getContextPath()%>">Reservation Record</a></li>
	    <li><a href="<%=request.getContextPath()%>">Scheduling Record</a></li>
	    <li class="divider"></li>
	    <li><a href="<%=request.getContextPath()%>">Collection Record</a></li>
	    <li><a href="<%=request.getContextPath()%>">Transferring Record</a></li>
	</ul>

	<!-- Dropdown Utilities -->
	<ul id="dropdown5" class="dropdown-content">
	    <li><a href="<%=request.getContextPath()%>">Employee</a></li>
	</ul>

	<!-- Dropdown Utilities -->
	<ul id="dropdown6" class="dropdown-content">

		<li><a href="<%=request.getContextPath()%>">Log Out</a></li>

		<li><a href="<%=request.getContextPath()%>/logout">Log Out</a></li>

	</ul>




	<script>
		$('.dropdown-button').dropdown({
					inDuration: 300,
					outDuration: 225,
					constrain_width: false, // Does not change width of dropdown to that of the activator
					hover: false, // Activate on hover
					gutter: 0, // Spacing from edge
					belowOrigin: true, // Displays dropdown below the button
					alignment: 'left' // Displays dropdown with edge aligned to the left of button
				}
		);

	</script>