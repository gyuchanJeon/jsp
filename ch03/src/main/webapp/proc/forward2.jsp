<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward2</title>
</head>
<body>
	<h3>포워드2 페이지</h3>
	
	<%
		// 포워드는 서버 자원 내에서의 제어권 이동이기 때문에 타 서버 차원으로는 이동 불가
		pageContext.forward("https://naver.com");
	%>
	
</body>
</html>