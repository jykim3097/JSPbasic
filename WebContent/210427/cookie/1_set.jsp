<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키는 해당 코드를 만나면(실행하는 순간) 생성되고 브라우저 측으로 전달된다
	//1. 쿠키 생성 - 생성자의 매개변수로 이름과 값을 지정한다, key값은 고유하다
	Cookie idCoo = new Cookie("user_id","kkk123");
	Cookie nameCoo = new Cookie("user_name", "홍길동");

	//2. 쿠키 시간(속성 설정) - 초 단위로 설정
	idCoo.setMaxAge(10); //10초
	nameCoo.setMaxAge(1800); //30분
	
	//3. response객체에 쿠키 저장
	response.addCookie(idCoo);
	response.addCookie(nameCoo);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="1_get01.jsp">쿠키 확인해보기</a>
</body>
</html>