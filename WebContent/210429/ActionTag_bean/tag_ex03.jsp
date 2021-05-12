<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bean</title>
</head>
<body>

	<h2>forward로 넘어온 bean 사용하기</h2>

	<%-- 두번째 페이지에서 만든 bean과 똑같은 bean을 선언한다 --%>
	<jsp:useBean id="user" class="bean.example.User" scope="request" />
	
	아이디:<jsp:getProperty property="id" name="user"/>
	이메일:<jsp:getProperty property="email" name="user"/>
	
</body>
</html>