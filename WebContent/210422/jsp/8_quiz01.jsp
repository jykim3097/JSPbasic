<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int visited = 0;
%>
<%
	visited++;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 코드</title>
</head>
<body>
	<%=visited %> 번째 방문자입니다.<br>
	<% if(visited % 10 == 0) {%>
		당첨되셨습니다.
	<% } %>
	<hr>
	<% int ran = (int)(Math.random()*100) + 1; %>
	<h3>랜덤구구단 <%=ran %> 단</h3>
	<p>이번에 나온 구구단은 <%=ran %>단 입니다</p>
	<% for(int i=1; i<10; i++) {%>
		<%=ran %> X <%=i %> = <%=ran*i %><br>
	<% } %>
</body>
</html>