<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,javax.naming.*" %>

<%

	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String sql="";
	try{
		Context init=new InitialContext();
		DataSource ds=(DataSource)init.lookup("java:comp/env/jdbc/mysql");
		conn = ds.getConnection();
		
		out.println("<h2>연결되었습니다!.</h2>");
	}catch(Exception e){
		out.println("연결 실패 !!!!");
		e.printStackTrace();
	}
%>
