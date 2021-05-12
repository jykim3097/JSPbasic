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
	1. form 태그를 이용해서 post 형식으로 이름, 국어, 수학, 영어 점수를 받는다
	2. quiz02페이지로 전송해서 평균을 구하고, 평균이 60점 이상이라면 합격 페이지로 이동, 미만이라면 불합격 페이지로 이동
	3. 넘어가는 값이 없는 값이라면 다시 입력받도록 리다이렉트 해주세요 (null이라면)
	 --%>
	 
	<section>
		<div>
			<form action="3_quiz01_result.jsp" method="post">
				<input type="text" name="name" placeholder="이름" required><br>
				<input type="text" name="korean" placeholder="국어" required><br>
				<input type="text" name="math" placeholder="수학" required><br>
				<input type="text" name="english" placeholder="영어" required><br>
				<input type="submit" value="제출">
			</form>
		</div>
	</section>
</body>
</html>