<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudentRegistration</title>
</head>
<body>
<div align="center">
<form action="./StudentDetails.jsp" method ="post">
<fieldset>
<legend style="margin:auto;">StudentRegistration</legend>
<table>
<tr>
<td>NAME</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>EMAIL</td>
<td><input type="email" name="email"></td>
</tr>
<tr>
<td>CONTACT</td>
<td><input type="text" name="contact"></td>
</tr>
<tr>
<td>CITY</td>
<td><input type="text" name="city"></td>
</tr>
</table>
</fieldset>
<input style="margin-top:2px;" type="submit" value="SUBMIT">
</form>
</div>
</body>
</html>