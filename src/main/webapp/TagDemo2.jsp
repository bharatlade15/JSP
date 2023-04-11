
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
<%! List<Integer> list=new ArrayList(); %>
<%
list.add(10);
list.add(20);
list.add(30);
%>
<%for(Integer num:list){ %>
<h1><%=num %></h1>
<%} %>
</body>
</html>