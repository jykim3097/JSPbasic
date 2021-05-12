<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 화면에서 넘어오는 3가지 값을 받는다
	2. 아이디랑 비번이 동일하면 로그인 성공이라고 가정
	   (user_id, 실제 아이디 값)의 세션을 생성
	   (user_nick, 실제 닉네임)의 세션을 생성
	3. 2_login_welcome 페이지로 리다이렉트해서 "id(닉네임) 환영합니다." 출력
	       틀린 경우에는 로그인 페이지로 리다이렉트
	4. 2_login_welcome에 로그아웃 a태그를 생성한다. 
	   a태그를 클릭하면 2_logout 페이지로 이동해 세션을 삭제하고, 
	       다시 로그인페이지로 리다이렉트
	*/
	
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");

	if(id != "" && pw != "" && id.equals(pw)){
		session.setAttribute("user_id", id);
		session.setAttribute("user_nick", nick);
		session.setMaxInactiveInterval(3600);
		
		response.sendRedirect("2_login_welcome.jsp");
	} else {%>
	
	<script>
		/*
		HTML에서 동적인 부분의 처리는 js를 이용합니다.
		스크립트는 script 태그 안에 작성합니다.
		*/
		
		//JS 내장 함수
		//confirm("yes or no 확인창!");
		//alert("아이디 비밀번호를 확인하세요");
		//history.go(-1);
		//location.href = "2_login.jsp";

		function check() {
			alert("아이디 또는 비밀번호를 확인하세요.");
			location.href = "2_login.jsp";
		}
		
		check(); //호출
	</script>
		
<%	}%>