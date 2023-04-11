<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String id=request.getParameter("id");
  String name=request.getParameter("name");
  String email=request.getParameter("email");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EmpRegistration</title>
</head>
<body>
<div align="center">
<form action="./EmpRegistration.jsp" method="post">
<fieldset>
<legend style="align-context:center;">EmpRegistration</legend>
<table>
<tr>
<td>ID</td>
<td><input type="text" name="id"></td>
</tr>
<tr>
<td>NAME</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>EMAIL</td>
<td><input type="text" name="email"></td>
</tr>
</table>
</fieldset>
<input style="margin-top:2px;" type="submit" value="SUBMIT">
</form>
</div>
<%!Connection connection;
   PreparedStatement preparedStatement;
   int result;
   String dburl="jdbc:mysql://localhost:3306/weja1";
   String user="root";
   String password="root";
   String query;%>
   <%
   if(id!=null && name!=null && email!=null){
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   connection=DriverManager.getConnection(dburl,user,password);
	   query="insert into emp2 values(?,?,?)";
	   preparedStatement=connection.prepareStatement(query);
	   preparedStatement.setString(1,id);
	   preparedStatement.setString(2,name);
	   preparedStatement.setString(3,email);
	   result=preparedStatement.executeUpdate();
   }
   %>
   <%
   if(result!=0){%>
   <h3 align="center">
   <%=result %>
   row inserted in database successfully
   </h3>
   <%} %>
</body>
</html>