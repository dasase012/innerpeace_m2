<%@page import="login.JoinDataBean"%>
<%@page import="login.JoinDBBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="euc-kr" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
  i{
  	margin-left: 80%;
  }
 
  body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #navigation{
  	width: 60%;
  	margin-left: 20%;
  	margin-right: 20%;
  }	
</style>
</head>
<%
	String id = request.getParameter("id"); //��Խù��� �����ҷ�?
	
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null || pageNum ==""){
		pageNum="1";} 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
	try{
		JoinDBBean dbPro = JoinDBBean.getInstance();
		JoinDataBean member = dbPro.getMember(id, "update");
%>
<body>
	
	<!-- home logo top right -->
		<a href="/innerpeace/mainhome/home.jsp">
		<i id="home" class="material-icons" style="font-size:36px">home</i>
		</a>
	<!-- Logout logo top right -->
		<a href="/innerpeace/membershipUser/logout.jsp">
		<i id="logout" class="material-icons" style="font-size:36px">power_settings_new</i>
		</a>
	<!-- Mypage logo top right -->
		<a href="/innerpeace/membershipUser/updateForm.jsp">
		<i id="mypage" class="material-icons" style="font-size:36px">portrait</i>
		</a>
	<h1 class="w3-center">WELCOME
	</h1>
	
	
	<!-- header navigation -->
	<div class="w3-bar w3-border w3-light-grey" id="navigation">
	  <a href="/innerpeace/doc_find/map.jsp" class="w3-bar-item w3-button w3-mobile w3-light-grey" style="width:25%">�Ƿ���/���� ã��</a>
	  <a href="/innerpeace/reservation/reservation.jsp" class="w3-bar-item w3-button w3-mobile" style="width:25%">�������</a>
	  <a href="#" class="w3-bar-item w3-button w3-mobile" style="width:25%">��������</a>
	  <a href="#" class="w3-bar-item w3-button w3-mobile" style="width:25%">������</a>
	</div>
	
	<!-- updateForm -->
	<div class="w3-container"><center>
<br>
<form method="post" name="writeform" action="<%=request.getContextPath() %>/membershipUser/updatePro2.jsp" >
<input type="hidden" name="id" value="<%=id %>">
<input type="hidden" name="pageNum" value="<%=pageNum %>">

<form class="w3-container w3-card-4 w3-white w3-text-black w3-margin" style="height: 100%;">
<div class="w3-row w3-section">
<body><br><br><center><h3><b><u>ȸ�� ���� �����ϱ�</u></b></h3><br><br>
<div class="container" id="info">
	<table class="w3-table w3-bordered w3-centered" style="width:50%;">
	<tr height="30">
		<td width="125" align="center"><b>���̵�</b></td>
		<td width="125" align="center"><%=member.getId()%></td>
	</tr><tr height="30">	
		<td width="125"><b>�̸�</b></td>
		<td width="125">
		<input type="text" size="10" maxlength="20" name="name" value="<%=member.getName() %>"></td>
	</tr>
	<tr height="30">	
		<td width="125"><b>��й�ȣ</b></td>
		<td width="125">
		<input type="password" size="10" maxlength="15" name="pwd" value="<%=member.getPwd()%>"></td>
	</tr><tr height="30">			
		<td width="125"><b>����</b></td>
		<td width="125" >
		<input type="text" size="10" maxlength="10" name="gender" value="<%=member.getGender() %>"></td>
	</tr><tr height="30">	
		<td width="125"><b>�������</b></td>
		<td width="125">
		<input type="text" size="10" maxlength="10" name="birthdate" value="<%=member.getBirthdate()%>"></td>
	</tr><tr height="30">		
		<td width="125"><b>����ó</b></td>
		<td width="125">
		<input type="text" size="20" maxlength="15" name="tel" value="<%=member.getTel() %>"></td>
	</tr><tr height="30">	
		<td width="125"><b>�̸���</b></td>
		<td width="125">
		<input type="text" size="20" maxlength="40" name="email" value="<%=member.getEmail() %>"></td>
	</tr><tr height="30">	
		<td width="125"><b>���� �������</b></td>
		<td width="125" align="center"><%=member.getCon_past() %></td>
	</tr><tr height="30">	
			<td width="125"><b>�ֱ� ������</b></td>
			<td width="125" align="center"><%=member.getCon_date() %></td>
	</tr><tr height="30">
			<td width="125"><b>�������</b></td>
			<td width="125" align="center"><%=member.getCon_cat() %></td>
	</tr><tr height="30">	
		<td width="125"><b>����</b></td>
		<td width="125" align="center"><%=member.getPosition() %></td>
	</tr>
		<tr>      
	 <td colspan=2  align="center"> 
	  <input type="submit" value="��������" >  
	  <input type="reset" value="�ٽ��ۼ�">
	  <input type="button" value="���" onclick="document.location.href='/innerpeace/mainhome/home.jsp?pageNum=<%=pageNum %>'">
	  <input type="button" value="Ż���ϱ�" 
    	onclick="document.location.href='deleteForm2.jsp?id=<%=member.getId() %>&pageNum=<%=pageNum %>'">
		&nbsp;&nbsp;&nbsp;&nbsp;
	</td></tr>
	</table></div></center>    
     
</form>  </center></div>
<%
	}catch(Exception e){}
%>
	
	
	<!-- footer contact admin -->
	<h6 class="w3-bottom" align="center">contact: admin@innerpeace.com</h6>
</body>
</html>