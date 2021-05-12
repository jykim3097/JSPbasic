<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Post 방식</title>
</head>
<body>
	
	<!-- post 방식으로 폼을 전송하려면 method="post"라고 적는다 -->
	<form action="3_post_ex02.jsp" method="post">
		아이디: <input type="text" name="id"><br>
		비밀번호: <input type="password" name="pw"><br>
		이름: <input type="text" name="name"><br>
		
		<input type="submit" value="확인">
	</form>
	
</body>
</html>