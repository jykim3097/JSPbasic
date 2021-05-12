<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- a태그 클릭 시 quiz02_result 페이지로 넘어가는 코드 작성 -->
	<h2>quiz02.jsp</h2>
	<% for(int i=1; i<=30; i++) {%>
		<a href="1_quiz02_result.jsp?num=<%=i%>"><%=i %>번 학생</a><br>
	<% } %>
</body>
</html>