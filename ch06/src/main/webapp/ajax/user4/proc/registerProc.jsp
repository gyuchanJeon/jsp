<%@page import="sub1.User4VO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@ page contentType="application/json; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// JSON 문자열 스트림 처리
BufferedReader reader = request.getReader();
StringBuilder requestBody = new StringBuilder();

String line;
while ((line = reader.readLine()) != null) {
	requestBody.append(line);
}
reader.close();

// JSON 파싱
Gson gson = new Gson();
User4VO user4 = gson.fromJson(requestBody.toString(), User4VO.class);
System.out.println(user4);

int rowCount = 0;

try {
	// 1단계 - JNDI 서비스 객체 생성
	Context ctx = (Context) new InitialContext().lookup("java:comp/env");

	// 2단계 - 커넥션 가져오기
	DataSource ds = (DataSource) ctx.lookup("jdbc/studydb");
	Connection conn = ds.getConnection();

	// 2단계 - SQL 실행 객체 생성
	String sql = "insert into `user4` values (?,?,?,?,?,?)";
	PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.setString(1, user4.getUid());
	psmt.setString(2, user4.getName());
	psmt.setString(3, user4.getGender());
	psmt.setInt(4, user4.getAge());
	psmt.setString(5, user4.getHp());
	psmt.setString(6, user4.getAddr());

	// 3단계 - SQL 실행
	rowCount = psmt.executeUpdate();

	// 4단계 - 결과처리(SELECT일 경우)
	// 5단계 - 데이터베이스 종료
	psmt.close();
	conn.close();

} catch (Exception e) {
	e.printStackTrace();
}

// 목록 이동
//response.sendRedirect("./list.jsp");
// String jsonData = "{\"result\":"+rowCount+"}";

// JSON 출력
JsonObject json = new JsonObject();
json.addProperty("result", rowCount);

out.print(json.toString());
%>