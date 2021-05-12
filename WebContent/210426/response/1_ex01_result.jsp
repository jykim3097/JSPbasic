<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	int result = Integer.parseInt(age);
	
	//나이값 분기
	if(result >= 20){
		response.sendRedirect("1_ex01_ok.jsp"); //리디렉션
	} else {
		response.sendRedirect("1_ex01_no.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>