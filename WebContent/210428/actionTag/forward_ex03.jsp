<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
	id도 세번째 페이지에서 사용할 수 있지만
	보통 첫번째 페이지 값은 두번째 페이지(db)에 저장하고
	저장된 값을 request로 꺼내서 세번째 페이지에서 사용한다
	 --%>
	
	<h3>자바코드로 포워드를 사용하는 방법</h3>
	<form action="../../Forward" method="post">
		ID: <input type="text" name="id">
		<input type="submit" value="확인">
	</form>
</body>
</html>