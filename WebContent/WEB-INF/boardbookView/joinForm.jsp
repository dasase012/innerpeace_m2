<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<style>
	@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
	body{
		font-family: 'Jeju Gothic', sans-serif;
		font-size: 15pt;
	}	
	h2{
		font-family: 'Jeju Gothic', sans-serif;
		font-size: 20pt;
	}
</style>
<html>

<head>

<meta charset="UTF-8">

<title>�̳��ǽ� ȸ������</title>

</head>

<body>
	<!-- return logo top right -->
	<a href="/innerpeace/Intropage/intro_v1.jsp">
	<img class="w3-right" src="<%=request.getContextPath() %>/resources/home.png" style="width: 40px; height: 40px;">
	</a></h1>
	
 <div class="w3-container w3-display-center w3-teal" style="width: 50%; margin-left:25%; margin-right:25%;">
	

		<hr width = 500 size=2 >

		<h2 align="center">innerpeace ȸ�� ����</h2>
	
		<hr width = 500 size=2 >
	</div>
	 <div class="w3-container w3-display-center" style="width: 60%; margin-left:20%; margin-right:20%;">
	
	<form action="/innerpeace_m2/WEB-INF/boardbookView/joinSuccess.jsp" method="post" >

		<!-- �⺻���� -->
			<label class="w3-text-teal">
			�̸� :<input class="w3-input w3-border w3-light-grey" type="text" name="name" size="20">
			</label><br>
			<label class="w3-text-teal">
			���̵� :<input class="w3-input w3-border w3-light-grey" type="text" name="id" size="20"></label><br>
			<label class="w3-text-teal">
			��й�ȣ :<input class="w3-input w3-border  w3-light-grey"  type="password" name="pwd" size="20"></label><br>
			<label class="w3-text-teal">
			��й�ȣ Ȯ�� :<input class="w3-input w3-border  w3-light-grey" type="password" name="confirmPwd" size="20"></label><br>
			<label class="w3-text-teal">
			���� : <input type="radio" name="gender" value="male">��
				 <input type="radio" name="gender" value="female">��</label><br><br>
			<label class="w3-text-teal">
			������� :<input class="w3-input w3-border w3-light-grey" type="date" name="birthdate" size="20"></label><br>
				
		<!-- ����ó -->
			<label class="w3-text-teal">
			��ȭ��ȣ :<input class="w3-input w3-border w3-light-grey" type="tel" name="tel" size="20">
			</label><br>
			<label class="w3-text-teal">
			�̸���:<input class="w3-input w3-border w3-light-grey" type="email" name="email" size="20">
			</label><br>
			
		<!-- ���������̷� -->
			<label class="w3-text-teal">
			���ſ� ��� Ȥ�� ���Ḧ ���� ���� �ֽ��ϱ�?<br>
			<input type="radio" name="con_past" value="1">�ִ�
			<input type="radio" name="con_past" value="0">����
			</label><br><br>
	        <label class="w3-text-teal">
			�ִٸ� ���� �ֱ� ���/���� ������ ��¥�� �˷��ּ���<br>
			<input class="w3-input w3-border w3-light-grey"  type="date" name="con_date" size="20">
			</label><br>
			<label class="w3-text-teal">
			�������� ������ ������ �˷��ּ���<br>
			<input class="w3-input w3-border w3-light-grey"  type="text" name="con_cat" size="20">
			</label><br>					
			<label class="w3-text-teal">
			�з� : <input type="radio" name="position" value="patient">�Ϲ���
				 <input type="radio" name="position" value="doc">�Ƿ���</label><br><br>
			<label>
			
			<input type="submit" value="�ۼ��Ϸ�"><!-- &nbsp;&nbsp; -->
			<input type="reset" value="�ٽ��ۼ�"></label></form>
		
	</form>
	
	
	</div>

</body>

</html>



