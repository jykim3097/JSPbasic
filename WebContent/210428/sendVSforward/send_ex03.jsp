<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id =	request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>redirect</title>
</head>
<body>
	<%--
	1페이지에 있던 리퀘스트는 소멸되고
	새로운 리퀘스트가 만들어진다 --%>
	ID:<%=id %><br>
	PW:<%=pw %><br>
</body>
</html>