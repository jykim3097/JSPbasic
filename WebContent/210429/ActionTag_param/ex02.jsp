<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 값이 담기기 전에 인코딩해준다 -->    
<% request.setCharacterEncoding("utf-8"); %>

<!-- param 태그는 forward 방식의 필요한 값을 담아줄 때 사용한다 -->
<jsp:forward page="ex03.jsp">
	<jsp:param value="똑똑이" name="nick"/>
	<jsp:param value="20" name="age"/>
</jsp:forward>