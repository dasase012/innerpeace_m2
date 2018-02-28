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
<jsp:useBean id="info" class="login.JoinDataBean"> <!-- 수정하고싶은게 한 두가지가 아니므로 boardDataBean 전체를 파라미터로 보냄 -->
	<jsp:setProperty name="info" property="*"/>
</jsp:useBean>
<% System.out.println(info);
  JoinDBBean dbPro = JoinDBBean.getInstance(); 
	int chk = dbPro.updateData(info);%>
<% if (chk==1){ %>
<meta http-equiv="Refresh" content="0;url=/innerpeace/mainhome/home.jsp?id=<%=id%>&pageNum=<%=pageNum %>">
<script>
alert("회원정보가 수정되었습니다.")</script>
<%}else{ %>
<script>
alert("비밀번호가 맞지 않습니다")
history.go(-1);</script>
<%} %>
</body>
</html>