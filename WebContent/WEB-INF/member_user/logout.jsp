<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.invalidate();
	response.sendRedirect("/innerpeace/Intropage/intro_v1.jsp");
%>

<html>
<head>
<title>logout</title>
</head>
<body>
로그아웃 되었습니다.
</body>
</html>