<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	선언자, 스크립트릿을 적절하게 사용한다
	어피치, 라이언, 제이지, 무지, 프로를 가지고 있는 배열 생성
	랜덤하게 선택된 카카오프렌즈를 list에 추가하는 형식으로 작성, 10이 될 때까지
 --%>
<%!
	String[] jobs = {"어피치", "라이언", "제이지", "무지", "프로도", "튜브"};
	Random ran = new Random();
	List<String> list = new ArrayList<>();
	
%>
<%
	if(list.size() == 10){
		list.clear();
	}

	int r = ran.nextInt(jobs.length-1);
	list.add(jobs[r]);
	
	int cnt = 0;
	for(String s : list){
		if(jobs[r].equals(s)) cnt++;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 프렌즈</title>
</head>
<body>
	<p>
	<b>[<%= jobs[r] %>]</b> 님이 입장<br>
	현재 같은 카카오 프렌즈는 <%=cnt %>명입니다.
	</p>
	
	<h3>현재 구성정보</h3>
	<p><%=list.toString() %>(<%=list.size() %>명 참가중)</p>
</body>
</html>