<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("authYN") == null){
		response.sendRedirect("2_auth.jsp");
	}

	//화면에 들어올 때 application에 좌석 정보가 있다면, 해당 정보를 꺼내서 저장
	List<String> list = new ArrayList<>();
	
	if(application.getAttribute("b") != null){
		list = (List<String>)application.getAttribute("b");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 좌석 예약</title>
</head>
<body>

	<%--
	태그를 선택하지 못하도록 처리하는 옵션 disabled
	checkbox, radio를 미리 선택되게 하는 옵션 checked
	select 태그에서 미리 값을 선택되게 하는 옵션 selected
	input태그를 읽기만 허용하는 속성 readonly
	input태그의 값을 반드시 입력하게 하는 속성 required 
	 --%>

	<div align="center">
		<h2>영화 좌석 예약</h2>
		<h4>예약할 좌석을 체크한 후 예약 버튼을 클릭하세요.</h4>
		<hr>
		<h4>좌석배치도</h4>
		<form action="2_reserve_result.jsp" method="post">
			&nbsp;&nbsp;&nbsp;
			<% for(char c = 'A'; c <= 'Z'; c++) {%>
				<small><%=c %></small>&nbsp;&nbsp;
			<% } %><br>
			<% for(int i=1; i<7; i++) { %>
				<small><%=i %></small>
			<%	for(char c = 'A'; c <= 'Z'; c++) { %>
					<% if(list.contains(c+"-"+i)) { %>
						<input type="checkbox" name="seat" value="<%=c%>-<%=i%>" disabled>
					<% } else { %>
						<input type="checkbox" name="seat" value="<%=c%>-<%=i%>">
					<% } %>
			<%	} %><br>
			<%=i == 3 ? "<br>": "" %> <%--삼항연산자! --%>
			<% }%><br>
			<input type="submit" value="예매">
			<input type="reset" value="초기화">
		</form>	
	</div>
</body>
</html>