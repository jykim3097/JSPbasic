<%@page import="bean.example.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	
	User user = new User();
	user.setId(id);
	user.setEmail(email);
	
	//request에 user 객체를 강제 저장
	request.setAttribute("user", user);
	
	//forward로 이동시킴, 사용 방식
	request.getRequestDispatcher("java_ex03.jsp").forward(request, response);
	
%>