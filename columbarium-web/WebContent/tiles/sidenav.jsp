<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
	
	 <link rel = "stylesheet" href = "<%=request.getContextPath()%>/css/sidenav.css"/>
	 
	 <nav style = "background-color: darkorange;">
    <div class="nav-wrapper">
        <a href="#" class="brand-logo" style = "font-family: myFirstFont; padding-left: 250px;">Columbary and Crematory Management System</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="sass.html"><button type = "submit" name = "action" class="btn black right" style = "width: 135px; margin-top: 15px; margin-right: 0px;">Log Out</button></a></li>
        </ul>
    </div>
</nav>

<ul class="side-nav fixed" style = "background-color: #212121;" data-collapsible="accordion">

    <!-- Account Information -->
    <div style="width: 200px; height: 120px; position: relative;">
        <img id="image1" style="height: 120px; width: 240px; position: relative;" src="../img/pattern8.jpg" alt="..." />
        <div class = "row">
                <img class = "responsive-img circle" id="image2" style="position: absolute; top: 23px; left: 15px; width: 70px; height: 70px;" src="../img/Ken Layug.jpg" alt="..." />
                <p style="position: absolute; top: 1em; font-size: 18px; padding-left: 100px; width: 220px; font-weight: bold;">Ken Layug<br> Administrator</p>
        </div>
    </div>

    <li class="no-padding">
        <ul class="collapsible"  data-collapsible="accordion">
            <li>
                <div class="collapsible-header" style = "color: white; padding-left: 0px; padding-right: 0px; font-size: 16px; font-family: myFirstFont">Maintenance<i class="left material-icons">settings</i><i class="right mdi-navigation-arrow-drop-down" style = "margin-left: 0px;"></i></div>
                <div class="collapsible-body">
                    <ul>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Item</h6></a></li>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Requirement</h6></a></li>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Service</h6></a></li>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Package</h6></a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </li>

    <li class="no-padding">
        <ul class="collapsible"  data-collapsible="accordion">
            <li>
                <div class="collapsible-header" style = "color: white; padding-left: 0px; padding-right: 0px; font-size: 16px; font-family: myFirstFont">Transaction<i class="left material-icons">work</i><i class="right mdi-navigation-arrow-drop-down" style = "margin-left: 0px;"></i></div>
                <div class="collapsible-body">
                    <ul>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Item</h6></a></li>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Requirement</h6></a></li>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Service</h6></a></li>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Package</h6></a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </li>

    <li class="no-padding">
        <ul class="collapsible"  data-collapsible="accordion">
            <li>
                <div class="collapsible-header" style = "color: white; padding-left: 0px; padding-right: 0px; font-size: 16px; font-family: myFirstFont">Queries<i class="left material-icons">settings</i><i class="right mdi-navigation-arrow-drop-down" style = "margin-left: 0px;"></i></div>
                <div class="collapsible-body">
                    <ul>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Item</h6></a></li>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Requirement</h6></a></li>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Service</h6></a></li>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Package</h6></a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </li>

    <li class="no-padding">
        <ul class="collapsible"  data-collapsible="accordion">
            <li>
                <div class="collapsible-header" style = "color: white; padding-left: 0px; padding-right: 0px; font-size: 16px; font-family: myFirstFont">Reports<i class="left material-icons">web</i><i class="right mdi-navigation-arrow-drop-down" style = "margin-left: 0px;"></i></div>
                <div class="collapsible-body">
                    <ul>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Item</h6></a></li>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Requirement</h6></a></li>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Service</h6></a></li>
                        <li style = "max-height: 40px;"><a href="#!"><h6 style = "padding-top: 10px;">Package</h6></a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </li>
</ul>
	 
