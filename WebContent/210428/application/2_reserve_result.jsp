<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 예약페이지에서 넘어온 좌석 정보를 받는다
	//2. 좌석 정보를 임시로 저장할 a리스트 생성
	//3. app에 b리스트가 있으면 꺼내와서 a에 저장한다
	//4. a리스트와 좌석정보를 비교해서 중복된 자석이 아니라면 사본리스트를 생성하고, 하나씩 추가하세요
	//5. 사본리스트와 seat과 길이가 같다면 중복이 없다는 뜻이므로 사본리스트를 a리스트에 전체 추가하고 app에 저장
	
	String[] want = (String[])request.getParameterValues("seat");
	
	List<String> a = new ArrayList<>();
	
	if(application.getAttribute("b") != null){	
		a = (List<String>)application.getAttribute("b");
	}
	
	//사본리스트 생성
	List<String> copy = new ArrayList<>();
	
	for(int i=0; i<want.length; i++){
		if(a.contains(want[i])){ //중복인경우
			break;
		} else {
			copy.add(want[i]);
		}
	}

	if(copy.size() == want.length){
		a.addAll(copy);
	}
	application.setAttribute("b", a);
	System.out.println(a.toString());

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매 확인</title>
</head>
<body>
	<div align="center">
		<h3>예약 선택한 좌석</h3>
		<% for(String s : want) { %>
			[<%=s %>]
		<% } %>
		<br><br>
		
		<b>신청 결과:</b>
		<%= copy.size() == want.length ? "<b>성공</b>" : "<b>실패</b>" %><br><br>
		
		<a href="2_auth.jsp">더 예약하기</a>
	</div>
</body>
</html>