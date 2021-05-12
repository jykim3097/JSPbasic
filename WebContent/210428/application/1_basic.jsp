 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	application객체는 session과 사용방법이 동일하다
	생명주기가 톰캣을 stop할 때까지 단 1개가 유지된다(session과의 차이점)
	
	사용방법은 session과 똑같다
	*/
	
	int total = 0;

	if(application.getAttribute("total") != null){ //total이 존재한다는 의미
		total = (int)application.getAttribute("total");
	}

	total++;
	
	application.setAttribute("total", total);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Basic</title>
</head>
<body>
	어플리케이션 객체에 누적된 total 값 : <%=total %><br>
</body>
</html>