<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First JSP scriptlet</title>
</head>
<body>

	<h3>스크립트릿</h3>
	<%
		int a = 1;
		if(a >= 10){
			out.println("10보다 크다");
		} else {
			out.println("10보다 작다");
		}
	%>
	<hr>
	<%
		for(int i=1; i<=10; i++){
			out.println(i + "<br/>");
		}
	%>
	<hr>
	<%
		int num = (int)(Math.random() * 20) +1;
		if(num >= 10){
			out.println("<p>참입니다</p>");
		} else {
			out.println("<p>거짓입니다</p>");			
		}
	%>
	<hr>
	<% if(num >= 15){ %>
		<p>참입니다</p>
	<% } else{ %>
		<p>거짓입니다</p>
	<% } %>
	<hr>
	1. 구구단 3단을 out.println과 br 태그를 이용해서 브라우저 화면에 출력
	<%
		for(int i=0; i<10; i++){
			out.println("3 X " + i + " = " + 3*i + "<br />");
		}
	%>
	<br />
	2. 체크박스 10개를 브라우저에 생성<br />
	<%
		for(int i=1; i<11; i++){
	%>
		<input type="checkbox">
	<%
		out.println(i);
		}
	%>
</body>
</html>