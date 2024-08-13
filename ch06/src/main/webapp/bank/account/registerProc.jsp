<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String a_no = request.getParameter("a_no");
String a_item_dist = request.getParameter("a_item_dist");
String a_item_name = request.getParameter("a_item_name");
String a_c_no = request.getParameter("a_c_no");
String a_balance = request.getParameter("a_balance");
String a_open_date = request.getParameter("a_open_date");

try {
	Context ctx = (Context) new InitialContext().lookup("java:comp/env");
	DataSource ds = (DataSource) ctx.lookup("jdbc/bank");

	Connection conn = ds.getConnection();
	String sql = "insert into `bank_account` values (?,?,?,?,?,?)";
	PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.setString(1, "a_no");
	psmt.setString(2, "a_item_dist");
	psmt.setString(3, "a_item_name");
	psmt.setString(4, "a_c_no");
	psmt.setString(5, "a_balance");
	psmt.setString(6, "a_open_date");

	psmt.executeUpdate();

	psmt.close();
	conn.close();
} catch (Exception e) {
	e.printStackTrace();
}

response.sendRedirect("./list.jsp");
%>