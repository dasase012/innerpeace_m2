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
	alert("Ż�� �Ϸ�Ǿ����ϴ�.")
	
	</script>
	<meta http-equiv="Refresh" content="0;url=/innerpeace/Intropage/intro_v1.jsp">
	<%}else{ %>
	<script>
	alert("��й�ȣ�� ���� �ʽ��ϴ�")
	history.go(-1);</script>
<%} %>
<html>
<head>
<title>ȸ�� Ż��</title>
</head>
<body>

</body>
</html>