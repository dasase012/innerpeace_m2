<%@page import="login.JoinDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<%
	String id = request.getParameter("id");
	
	
	String pwd = request.getParameter("pwd");
	JoinDBBean dbPro = JoinDBBean.getInstance();
	int check = dbPro.deleteData(id, pwd);
	if(check==1){
%>
	<script language="JavaScript">
	alert("탈퇴가 완료되었습니다.")
	
	</script>
	<meta http-equiv="Refresh" content="0;url=/innerpeace/Intropage/intro_v1.jsp">
	<%}else{ %>
	<script>
	alert("비밀번호가 맞지 않습니다")
	history.go(-1);</script>
<%} %>
<html>
<head>
<title>회원 탈퇴</title>
</head>
<body>

</body>
</html>