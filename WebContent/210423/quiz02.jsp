<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 정수를 저장하는 list 선언
	2. 1~45까지 로또 번호를 리스트에 추가
	3. 중복되지 않은 숫자 6개 저장 (contains 메서드 사용)
	4. 화면에 출력
	
	5. Set으로도 해봐
	*/
	
	Random ran = new Random();

	List<Integer> list = new ArrayList<>();
	
	//list
	while (list.size() < 6) {
		int n = ran.nextInt(45) + 1;
		if (!list.contains(n)) {
			list.add(n);
		}
	}

	//set
	Set<Integer> set = new HashSet<>();
	
	for(int i=0; i<6; i++){
		int n = ran.nextInt(45) + 1;
		set.add(n);
	} 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로또 번호 추출</title>
</head>
<body>

	<h3>list를 이용한 로또번호 추출</h3>
	<% for(int i=0; i<list.size(); i++){%>
	   <%= list.get(i) %>
	<% } %>
	
	<h3>set을 이용한 로또번호 추출</h3>
	<% for(Integer i : set) {%>
	   	<%= i %>
	<% } %>
	 
</body>
</html>