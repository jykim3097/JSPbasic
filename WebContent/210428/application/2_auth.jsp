<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//랜덤한 문자값을 만드는 클래스
	UUID uuid = UUID.randomUUID();
	String[] arr = uuid.toString().split("-");

	//인증문자를 세션에 저장하고 뒤에서 정상입력인지 확인
	session.setAttribute("auth", arr[1]);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 좌석 시스템 - 인증 페이지</title>
</head>
<body>
	<h2>인증 페이지</h2>
	<hr>
	<form action="2_auth_result.jsp" method="post">
		<h4>인증문자: <%=arr[1] %></h4>
		인증문자 입력: <input type="text" name="code" size="10"><br>
		<input type="submit" value="확인">
		
	</form>
	
	
</body>
</html>