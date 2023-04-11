<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TagDemo3</title>
</head>
<body>
<%!int a=10;
   int b=20;
   int c=0;
%>
<%!public int add(){
	return a+b;
}%>
<% c=add();%>
<%=c %>
</body>
</html>