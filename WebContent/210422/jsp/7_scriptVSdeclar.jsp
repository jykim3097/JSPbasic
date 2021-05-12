<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--선언자와 스크립트릿의 차이점
	선언자 : 멤버변수, 메서드 선언할 때 사용 (페이지에서 한 번만 실행됨)
	스크립트릿 : 페이지 실행마다 한번씩 실행되는 코드 
			  증감식이나 연산식은 모두 스크립트릿에 들어간다 --%>
<%!
	public int total = 0;
%>
<%
	int each = 0;

	total++;
	each++;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>
		선언자: <%= total %><br>
		스크립트릿: <%= each %>
	</p>

</body>
</html>