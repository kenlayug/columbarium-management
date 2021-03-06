<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='http://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js'></script>

    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/materialize.min.css"  media="screen,projection"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/materialize.min.js"></script>

	<style>
		@font-face {
		    font-family: myFirstFont;
		    src: url(../fonts/KGBlankSpaceSketch.ttf);
		}
		
		@font-face {
		    font-family: myFirstFont1;
		    src: url(../fonts/NEOTERICc%20-%20Bold%20DEMO%20VERSION.ttf);
		}
		
	</style>

    <!-- Import File -->
    <script type="text/javascript" src = "<%=request.getContextPath()%>/js/Login_Final.js"></script>
    <title>Login</title>
</head>
<body style = "background-color: #ff8f00">

<!-- Login Form -->

    <div class = "aside aside z-depth-3" style = "margin-top: 60px; margin-left: 500px; width: 450px; height: 500px; background-color: white;">
        <div class = "header">
            <img src="<%=request.getContextPath()%>/img/sad_logo.jpg" class = "responsive-img" style="margin-left: 140px; background-color: red; width:180px; height:180px;">
            <h4 style = "font-size: 27px; margin-top: 0px; padding-top: 10px; margin-left: 35px; color: black; stroke-width: 5px;  font-family: neoteric">Columbary and Crematory &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp System</h4>
        </div>

        <div class="row" style = "padding-left: 30px; padding-right: 30px; ">
            <div class="col s12">
                <div class="row">
                	<form action="loginAccount" method="post">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="icon_prefix" type="text" class="validate" name="username">
                        <label for="icon_prefix">Username</label>
                    </div>
                    <div class="input-field col s12">
                        <i class="material-icons prefix">lock</i>
                        <input id="icon_telephone" type="password" class="validate" name="password">
                        <label for="icon_telephone">Password</label>
                    </div>
                    <br>
                    
                    <button type = "submit" name = "action" class="btn blue right" style = "width: 165px; margin-top: 10px; margin-right: 10px;">Login</button>
                	</form>
                	<button type = "submit" name = "action" class="btn blue right" style = "width: 165px; margin-top: 10px; margin-right: 10px;">register</button>
                    
                </div>
            </div>
        </div>


    </div>

</body>
</html>