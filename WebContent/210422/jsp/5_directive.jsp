<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String now = sdf.format(date);
	
	//문자열 저장하는 리스트
	List<String> sList = new ArrayList<>();
	sList.add("홍길동");
	sList.add("이순신");
	sList.add("홍길순");
	
	//키=숫자, 값=문자열 저장하는 해쉬맵
	Map<Integer, String> map = new HashMap<>();
	map.put(1, "홍길동");
	map.put(2, "이순신");
	
	//숫자 저장하는 Set
	Set<Integer> iSet = new HashSet<>();
	iSet.add(1);
	iSet.add(2);
	iSet.add(3);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지시자</title>
</head>
<body>

	지금: <%= now %><br/>
	리스트: <%= sList.toString() %><br>
	맵: <%= map.toString() %><br>
	셋: <%= iSet.toString() %>
	
	<hr>
	
	<h4>리스트:</h4> 
	<% for(int i=0; i<sList.size(); i++) { %>
		<%= sList.get(i) %><br>
	<% } %>
	
	<h4>맵:</h4> 
	<% Set<Entry<Integer, String>> entSet = map.entrySet(); 
	   for(Entry<Integer, String> e : entSet) {%>
	   		<%= e.getKey() %>
	   		<%= e.getValue() %><br>
	<% } %>
	
	<h4>셋:</h4> 
	<% for(Integer i : iSet) {%>
		<%=i %><br>
	<% } %>
</body>
</html>