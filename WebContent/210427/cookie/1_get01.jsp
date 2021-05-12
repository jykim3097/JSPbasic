<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키를 확인하는 코드
	//쿠키는 브라우저에서 자동으로 request객체에 담겨서 넘어옵니다
	Cookie[] cookies = request.getCookies();
	
	//쿠키가 null이 아닐 때 반복문으로 하나씩 꺼낸다
	if(cookies != null){
		
		for(Cookie c : cookies){
			out.print(c.getName()+" : "); //key
			out.println(c.getValue()+"<br>"); //value
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="1_get02.jsp">특정 쿠키 사용하기</a>

</body>
</html>