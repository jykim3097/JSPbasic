<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	앞에서 넘어온 값을 받아서 평균을 구한다
	평균이 60점 이상이면 quiz_ok.jsp로
	평균이 60점 이하이면 quiz_no.jsp로
	세션 사용하지 않는다
	*/
	
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String math = request.getParameter("math");
	String eng = request.getParameter("eng");
	
	double avg = (Integer.parseInt(kor)
					+ Integer.parseInt(math)
					+ Integer.parseInt(eng))/3;
	
	//request 객체에 강제 저장
	request.setAttribute("name", name);
	request.setAttribute("avg", avg);
	
	//값을 담아서 다음 화면으로 전달하기 위해 forward 사용
	if(avg>= 60){
		request.getRequestDispatcher("quiz_ok.jsp").forward(request, response);
	} else {
		request.getRequestDispatcher("quiz_no.jsp").forward(request, response);
	}
%>