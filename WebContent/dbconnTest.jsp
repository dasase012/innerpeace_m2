<%@page import="jdbc.connection.ConnectionProvider"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>���� �׽�Ʈ</title>
</head>
<body>
<%
	try(Connection conn = ConnectionProvider.getConnection()){
		out.println("Ŀ�ؼ� ���� ������");
	}catch(SQLException ex){
		out.println("Ŀ�ؼ� ���� ������: " + ex.getMessage());
		application.log("Ŀ�ؼ� ���� ����", ex);
	}
%>
</body>
</html>