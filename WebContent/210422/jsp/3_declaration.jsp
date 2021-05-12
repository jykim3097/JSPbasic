<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%!
 	//선언자는 전역의 의미로 사용되고, 화면에서 사용할 메서드나 멤버변수를 선언할 때 사용한다
 	public int i = 10;
 	String str = "WEB application";
 	
 	public int method01(int a, int b){
 		return a+b;
 	}
 	
 	public double method02(){
 		return Math.random();
 	}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>declaration</title>
</head>
<body>
	i = <%=i %><br>
	str : <%=str %><br>
	1 + 2 = <%= method01(1, 2) %>
</body>
</html>