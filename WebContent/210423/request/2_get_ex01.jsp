<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Get 방식</title>
</head>
<body>
	<!-- 사용자가 확인하는 화면 -->
	<!-- 사용자가 값을 입력할 때 form 태그를 이용한다. 
		 submit 버튼을 누르면 form 안에 데이터를 전송한다 -->
	<!-- 전송될 주소를 action 속성에 적는다 -->
	
	<form action="2_get_ex02.jsp">
		<h4>회원가입 양식</h4>
		<!-- placeholder 주석처럼 알려주는 기능 -->
		아이디: <input type="text" size="10" placeholder="8글자" name="id"><br />
		비밀번호: <input type="password" size="10" name="pw"><br/>
		
		<!-- email 형식을 지원한다 -->
		이메일: <input type="email" name="email"><br/>
	
		<!-- 체크박스 : 여러개 중에 여러개, name 속성을 통일해 그룹으로 묶어줘야 한다 -->
		관심분야:
		<input type="checkbox" value="JAVA" name="inter">JAVA
		<input type="checkbox" value="JSP" name="inter">JSP
		<input type="checkbox" value="JS" name="inter">JS
		<input type="checkbox" value="CSS" name="inter">CSS
		<input type="checkbox" value="DB" name="inter">DB
		<br/>
		
		전공:
		<input type="radio" value="경영학" name="major">경영학
		<input type="radio" value="전산학" name="major">전산학
		<input type="radio" value="수학" name="major">수학
		<input type="radio" value="컴퓨터공학" name="major">컴퓨터공학
		<input type="radio" value="" name="major">기계공학
		<br/>
		
		지역:
		<select name="region">
			<option>서울시</option>
			<option>경기도</option>
			<option>인천시</option>
			<option>부산시</option>
		</select>
		<br/>
		
		<!-- 장문의 글 입력 -->
		자기소개:<br/>
		<textarea rows="5" cols="50" name="comments"></textarea>
		
		<br/>
		<input type="submit" value="가입하기">
		<input type="reset" value="초기화">
		<input type="button" value="목록">
	</form>
</body>
</html>