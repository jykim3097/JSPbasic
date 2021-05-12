<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>path_ex01</h4>
	<!-- 
	절대경로: 프로젝트나(폴더구조에서) 전체경로 (IP주소, port번호 제외 / 컨텍스트패스(프로젝트를 구분하는 이름)부터 시작)
	상대경로: 내 현재 위치에서 참조해서 사용하는 경로
	 -->
	
	<a href="1_ex02.jsp">ex02이동(상대경로)</a><br> 
	<a href="/JSPbasic/210426/path/1_ex02.jsp">ex02이동(절대경로)</a>	
</body>
</html>