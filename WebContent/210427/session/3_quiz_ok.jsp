<%@page import="session.example._210427.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User user = (User)session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id: <%=user.getId() %><br>
	이름: <%=user.getName() %><br>
	지역: <%=user.getRegion() %>
</body>
</html>