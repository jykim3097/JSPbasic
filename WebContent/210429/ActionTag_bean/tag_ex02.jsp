<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 클래스에 있는 값과 bean의 value 값이 똑같으면 자동으로 값을 넘겨준다 --%>
<jsp:useBean id="user" class="bean.example.User" scope="request" />

<%-- *: bean의 속성값과 form에서 넘어오는 name 값이 같으면 모든 값을 넘겨줌 --%>
<jsp:setProperty property="*" name="user"/>

<jsp:forward page="tag_ex03.jsp" />
