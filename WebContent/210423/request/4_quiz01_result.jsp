<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//인코딩
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	
	double bmi = Double.parseDouble(weight)/((Double.parseDouble(height)/100)*(Double.parseDouble(height)/100));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz BMI</title>
</head>
<body>
	<%=name %>님의 키는 <%=height %>cm이고, BMI는 <%=bmi %>입니다<br>
	<% if(bmi >= 25) {%>
		과체중
	<% } else if (bmi <= 18) {%>
		저체중
	<% } else {%>
		정상
	<% } %> 입니다.
</body>
</html>