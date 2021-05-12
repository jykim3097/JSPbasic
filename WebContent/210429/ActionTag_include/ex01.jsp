<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>여기는 1번페이지</h2>
	
	<%-- 지시자의 include --%>
	<%@ include file="ex02.jsp" %>
	
	<%-- 액션태그의 include
	<jsp:include page="ex02.jsp" />--%>
	
	<%-- 
	지시자 include는 페이지에서 사용하는 변수도 가져올 수 있는 반면에
	액션태그 include는 단순히 html 영역만 가져올 수 있다
	 --%>
	<%= total %>
</body>
</html>