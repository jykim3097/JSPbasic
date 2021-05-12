<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String auth = (String)session.getAttribute("auth"); //세션에 저장된 값!
	String code = request.getParameter("code"); //화면에서 넘어온 값
	
	if(auth.equals(code)){
		//예약 페이지에서 사용할 인증확인 세션을 생성
		session.setAttribute("authYN", "y");
		response.sendRedirect("2_reserve.jsp");
	} else { %>
		<script>
			function check() {
				alert("인증코드가 틀렸습니다.");
				//history.go(-1); //인증문자가 그대로 나옴
				location.herf="2_auth.jsp"
			}
			check();
		</script>	
<%	}%>