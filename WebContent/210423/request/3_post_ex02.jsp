<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); //setter메서드

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Post 방식</title>
</head>
<body>

	아이디: <%=id %><br>
	비밀번호: <%=pw %><br>
	이름: <%=name %><br>

</body>
</html>