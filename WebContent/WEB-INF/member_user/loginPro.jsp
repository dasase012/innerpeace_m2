<%@page import="login.JoinDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%  JoinDBBean dbPro = JoinDBBean.getInstance(); 
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		
		int pwcheck = dbPro.login(id, pwd);
	%>	<%	if(pwcheck == -1){ %>
		<script>
	      alert("ID�� �������� �ʽ��ϴ�!");
	      history.back();
	    </script>
	<%
	   }
	   else if(pwcheck == 0)
	   {
	%>
	     <script>
	      alert("��й�ȣ�� Ʋ���ϴ�!");
	      history.back();
	     </script>
	<%
	    }else if(id.equals("admin")){
  			  session.setAttribute("id",id);
			   
			  response.sendRedirect("/innerpeace/membershipAdmin/list.jsp?id="+id);
	   } 
	   else
	   {
		  session.setAttribute("id",id);
		  session.setAttribute("name", name);	//name ���� >> welcome �� name�� �Ѱ���
		  System.out.println(name); 
		  
		  response.sendRedirect("/innerpeace/mainhome/home.jsp?id="+id);
	   }		
	%>
</body>
</html>