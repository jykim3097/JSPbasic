<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 화면을 만드는 곳 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz BMI</title>
</head>
<body>
	<%-- 1. form 태그를 이용해 post 형식으로 이름, 키, 몸무게 3가지를 입력받음
		 2. quiz01_result.jsp로 데이터를 전송
		 3. 해당페이지에서는 넘어간 값으로 BMI 지수(double)를 처리한다
		 	BMI 공식 = 몸무게 / (키/100)^2
		 4. 결과
		 	화면에 키, 몸무게, BMI 지수를 출력하고
		 	조건문을 이용해 BMI가 25 이상이면 과체중, 18 이하 저체중, 나머지 정상으로 출력 --%>
		 	
	<form action="4_quiz01_result.jsp" method="post">
		이름 : <input type="text" name="name"><br>
		키 : <input type="text" name="height"><br>
		몸무게 : <input type="text" name="weight"><br>
		
		<input type="submit" value="제출">
	</form>
</body>
</html>