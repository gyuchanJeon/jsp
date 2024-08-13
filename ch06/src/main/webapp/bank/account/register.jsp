<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bank_account::register</title>
</head>
<body>
	<h3>Account 등록</h3>

	<a href="/ch06/2.DBCPTest.jsp">처음으로</a>
	<a href="./list.jsp">목록</a>

	<form action="./registerProc.jsp" method="post">
		<table border="1">
			<tr>
				<td>식별번호</td>
				<td><input type="text" name="a_no" /></td>
			</tr>
			<tr>
				<td>상품유형</td>
				<td><input type="text" name="a_item_dist" /></td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><input type="text" name="a_item_name" /></td>
			</tr>
			<tr>
				<td>계좌번호</td>
				<td><input type="text" name="a_c_no" /></td>
			</tr>
			<tr>
				<td>잔고</td>
				<td><input type="number" name="a_balance" /></td>
			</tr>
			<tr>
				<td>개설일</td>
				<td><input type="date" name="a_open_date" /></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="등록하기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>