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
	String id = request.getParameter("id"); //어떤게시물을 수정할래?
	
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
	  <a href="/innerpeace/doc_find/map.jsp" class="w3-bar-item w3-button w3-mobile w3-light-grey" style="width:25%">의료진/병원 찾기</a>
	  <a href="/innerpeace/reservation/reservation.jsp" class="w3-bar-item w3-button w3-mobile" style="width:25%">예약관리</a>
	  <a href="#" class="w3-bar-item w3-button w3-mobile" style="width:25%">원격진료</a>
	  <a href="#" class="w3-bar-item w3-button w3-mobile" style="width:25%">진료기록</a>
	</div>
	
	<!-- updateForm -->
	<div class="w3-container"><center>
<br>
<form method="post" name="writeform" action="<%=request.getContextPath() %>/membershipUser/updatePro2.jsp" >
<input type="hidden" name="id" value="<%=id %>">
<input type="hidden" name="pageNum" value="<%=pageNum %>">

<form class="w3-container w3-card-4 w3-white w3-text-black w3-margin" style="height: 100%;">
<div class="w3-row w3-section">
<body><br><br><center><h3><b><u>회원 정보 수정하기</u></b></h3><br><br>
<div class="container" id="info">
	<table class="w3-table w3-bordered w3-centered" style="width:50%;">
	<tr height="30">
		<td width="125" align="center"><b>아이디</b></td>
		<td width="125" align="center"><%=member.getId()%></td>
	</tr><tr height="30">	
		<td width="125"><b>이름</b></td>
		<td width="125">
		<input type="text" size="10" maxlength="20" name="name" value="<%=member.getName() %>"></td>
	</tr>
	<tr height="30">	
		<td width="125"><b>비밀번호</b></td>
		<td width="125">
		<input type="password" size="10" maxlength="15" name="pwd" value="<%=member.getPwd()%>"></td>
	</tr><tr height="30">			
		<td width="125"><b>성별</b></td>
		<td width="125" >
		<input type="text" size="10" maxlength="10" name="gender" value="<%=member.getGender() %>"></td>
	</tr><tr height="30">	
		<td width="125"><b>생년월일</b></td>
		<td width="125">
		<input type="text" size="10" maxlength="10" name="birthdate" value="<%=member.getBirthdate()%>"></td>
	</tr><tr height="30">		
		<td width="125"><b>연락처</b></td>
		<td width="125">
		<input type="text" size="20" maxlength="15" name="tel" value="<%=member.getTel() %>"></td>
	</tr><tr height="30">	
		<td width="125"><b>이메일</b></td>
		<td width="125">
		<input type="text" size="20" maxlength="40" name="email" value="<%=member.getEmail() %>"></td>
	</tr><tr height="30">	
		<td width="125"><b>과거 진료경험</b></td>
		<td width="125" align="center"><%=member.getCon_past() %></td>
	</tr><tr height="30">	
			<td width="125"><b>최근 진료일</b></td>
			<td width="125" align="center"><%=member.getCon_date() %></td>
	</tr><tr height="30">
			<td width="125"><b>진료과목</b></td>
			<td width="125" align="center"><%=member.getCon_cat() %></td>
	</tr><tr height="30">	
		<td width="125"><b>구분</b></td>
		<td width="125" align="center"><%=member.getPosition() %></td>
	</tr>
		<tr>      
	 <td colspan=2  align="center"> 
	  <input type="submit" value="정보수정" >  
	  <input type="reset" value="다시작성">
	  <input type="button" value="취소" onclick="document.location.href='/innerpeace/mainhome/home.jsp?pageNum=<%=pageNum %>'">
	  <input type="button" value="탈퇴하기" 
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