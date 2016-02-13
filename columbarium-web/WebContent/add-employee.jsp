<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Employee</title>
</head>
<body>

	<form action="createEmployee" method="post">
		<label for="employeeId">Employee Id:</label>
		<input type="text" id="employeeId" name="employee.employeeId" value="${employeeId}"/>
		<br>
		<label for="firstName">First Name:</label>
		<input type="text" id="firstName" name="employee.name.strFirstName"/>
		<br>
		<label for="middleName">Middle Name:</label>
		<input type="text" id="middleName" name="employee.name.strMiddleName"/>
		<br>
		<label for="lastName">Last Name:</label>
		<input type="text" id="lastName" name="employee.name.strLastName"/>
		<br>
		<label>Gender: </label>
		<input type="radio" id="radioMale" value="Male" name="employee.strGender">Male
		<input type="radio" id="radioFemale" value="Female" name="employee.strGender"/>Female
		<br>
		<label>Civil Status: </label>
		<input type="radio" id="radioSingle" value="Single" name="employee.strCivilStatus">Single
		<input type="radio" id="radioMarried" value="Married" name="employee.strCivilStatus"/>Married
		<input type="radio" id="radioWidow" value="Widow" name="employee.strCivilStatus"/>Widow
		<br>
		<label for="position">Position:</label>
		<select id="position" name="employee.position.strPositionDesc">
			<option selected disabled>Choose one</option>
			<c:forEach items="${positionList }" var="position">
				<option value="${position}">${position }</option>
			</c:forEach>
		</select>
		<br>
		<label for="password">Password:</label>
		<input type="password" id="password" name="employee.strPassword"/>
		<br>
		<label for="retypePassword">Retype Password:</label>
		<input type="password" id="retypePassword" name="strRetypePassword"/>
		<br>
		<input type="submit" value="Register" align="middle">
	
	</form>

</body>
</html>