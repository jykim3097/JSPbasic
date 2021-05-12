<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	액션태그 사용방법
	<jsp: 으로 시작하고 추가적으로 종속되는 태그가 없다면(자식태그가 없다면) 끝부분을 />로 마감처리한다
	 --%>
	<%-- 실행하자마자 이동시킨다 --%>
	<jsp:forward page="forward_ex02.jsp" />
</body>
</html>