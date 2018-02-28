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
	
	<!-- updateLogin -->
	<center>
	 <form class="w3-container w3-card-4 w3-white w3-text-black w3-margin" style="height: 50%; width: 50%;" 
	action="/innerpeace/membershipUser/updateLoginPro.jsp" method="post">
        <div class="w3-section">
         	<p><b>������ ���� ���̵�� ��й�ȣ�� �� �� �� �Է��� �ּ���</b></p>
          <label><b>���̵�</b></label>
          <input class="w3-input w3-border w3-margin-bottom" style="width: 50%;" type="text" placeholder="���̵� �Է��ϼ���" name="id" required>
          <label><b>��й�ȣ</b></label>
          <input class="w3-input w3-border"  style="width: 50%;" type="password" placeholder="��й�ȣ�� �Է��ϼ���" name="pwd" required>
		</div>
      <div class="w3-container w3-border-top">
          <button class="w3-button w3-block w3-silver w3-section w3-padding" type="submit"  style="width: 50%;" >ȸ�� ���� �����ϱ�</button>
      </form>

	
	
	<!-- footer contact admin -->
	<h6 class="w3-bottom" align="center">contact: admin@innerpeace.com</h6>
</body>
</html>