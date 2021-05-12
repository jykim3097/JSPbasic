<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	String[] check = request.getParameterValues("inter");
	String major = request.getParameter("major");
	String region = request.getParameter("region");
	String comments = request.getParameter("comments");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Get 방식</title>
</head>
<body>
	id : <%=id %><br>
	pw : <%=pw %><br>
	email : <%=email %><br>
	관심분야 : <%=Arrays.toString(check) %><br>
	전공 : <%=major %><br>
	지역 : <%=region %><br>
	comments : <%= comments %>
</body>
</html>