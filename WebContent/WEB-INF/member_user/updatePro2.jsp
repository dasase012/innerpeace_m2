<%@page import="login.JoinDBBean"%>
<%@page import="login.JoinDataBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head><title>Insert title here</title></head>
<body>
<% request.setCharacterEncoding("euc-kr"); %>
<% 
	String id = request.getParameter("id");
	
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null || pageNum ==""){
		pageNum="1";} 
%>
<jsp:useBean id="info" class="login.JoinDataBean"> <!-- �����ϰ������ �� �ΰ����� �ƴϹǷ� boardDataBean ��ü�� �Ķ���ͷ� ���� -->
	<jsp:setProperty name="info" property="*"/>
</jsp:useBean>
<% System.out.println(info);
  JoinDBBean dbPro = JoinDBBean.getInstance(); 
	int chk = dbPro.updateData(info);%>
<% if (chk==1){ %>
<meta http-equiv="Refresh" content="0;url=/innerpeace/mainhome/home.jsp?id=<%=id%>&pageNum=<%=pageNum %>">
<script>
alert("ȸ�������� �����Ǿ����ϴ�.")</script>
<%}else{ %>
<script>
alert("��й�ȣ�� ���� �ʽ��ϴ�")
history.go(-1);</script>
<%} %>
</body>
</html>