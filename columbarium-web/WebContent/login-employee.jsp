<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log in</title>
</head>
<body>

	<form action="log-in" method="post">
	
		<label for="username">Employee Id:</label>
		<input type="text" id="username" name="employeeId"/>
		<br>
		<label for="password">Password:</label>
		<input type="password" id="password" name="strPassword"/>
		<br>
		<input type="submit" value="Log in"/>
	
	</form>

</body>
</html>