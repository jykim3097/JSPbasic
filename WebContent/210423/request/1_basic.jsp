<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 한 번 요청할 때마다 수행이되어야하니까 스크립트릿에 작성한다 --%>
<%
	//자동생성돼서 선언하지 않아도 된다
	//HttpServletRequest request = new HttpServletRequest(); 

	StringBuffer url = request.getRequestURL();
	String uri = request.getRequestURI();
	String path = request.getContextPath(); //서버가 프로젝트를 식별할 수 있는 주소(경로)★★★
	String method = request.getMethod(); //요청방식
	String addr = request.getRemoteAddr(); //app에 접속한 IP주소
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request</title>
</head>
<body>

	요청url주소 : <%=url %><br>
	요청uri주소 : <%=uri %><br>
	루트 경로 : <%=path %><br>
	요청방식 : <%=method %><br>
	요청IP : <%=addr %><br> <%-- 본인 컴퓨터이면 0:0:0:0:0:0:0:1 --%>
</body>
</html>