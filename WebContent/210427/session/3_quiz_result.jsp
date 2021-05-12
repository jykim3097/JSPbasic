<%@page import="session.example._210427.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 사용자가 입력한 값을 받은 다음에 User 객체를 생성
	       값을 저장할 수 있는 User(자바 클래스 getter, setter)를 생성
	2. 받은 값을 User에 저장하고, 저장한 User 클래스를 세션에 저장
	3. 3_quiz_ok 페이지로 리다이렉트
	   (여기서 세션에 저장된 id, 이름만 뽑아서 출력)
	*/
	
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String region = request.getParameter("region");
	
	if(!id.equals("") && !pw.equals("") && !name.equals("")){
		User user = new User(id, pw, name, email, region);	
		session.setAttribute("user", user);
		response.sendRedirect("3_quiz_ok.jsp");
	} else {%>
		<script>
			function check(){
				alert("아이디, 비밀번호, 이름은 필수사항입니다.");
				location.href="3_quiz.jsp";
			}
			
			check();
		</script>
	<%}
%>