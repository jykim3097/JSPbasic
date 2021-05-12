<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String kor = request.getParameter("korean");
	String math = request.getParameter("math");
	String eng = request.getParameter("english");
	
	if(name == "" || kor == "" || math == "" || eng == "") {
		response.sendRedirect("3_quiz01.jsp");
	} else {
		double avg = (Integer.parseInt(kor) + Integer.parseInt(math) +Integer.parseInt(eng)) / 3;
	
		if ( avg >= 60 ){
			response.sendRedirect("3_quiz01_ok.jsp");
		} else {
			response.sendRedirect("3_quiz01_no.jsp");
		}
	}
%>