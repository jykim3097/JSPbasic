<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//인증된 사람만(세션이 있는 사람만) 접근할 수 있는 페이지
	if(session.getAttribute("user_id") == null){
		response.sendRedirect("2_login.jsp"); //강제 이동
	}
	HttpSession hs = request.getSession();
	System.out.println(hs);
	String id = (String)session.getAttribute("user_id");
	String nick = (String)session.getAttribute("user_nick");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4><%=id %>(<%=nick %>)님 환영합니다!</h4>
	<a href="2_logout.jsp">로그아웃</a>
</body>
</html>