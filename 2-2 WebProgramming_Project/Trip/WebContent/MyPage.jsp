<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.tt.dto.MemberVO"%>
<% MemberVO memberVO = (MemberVO) session.getAttribute("loginUser"); %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main.css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta charset="utf-8" />
</head>
<body>
<!-- Wrapper -->
			<div id="wrapper">

<!-- Main -->
					<div id="main">
					<!-- Introduction -->
							<section id="intro" class="main">
								<div class="spotlight">
	<% if(memberVO.getId() != null && !"".equals(memberVO.getId())){%>
  	<%=memberVO.getId()%>��	<%}%> &nbsp;&nbsp;&nbsp;�Խù�|�ȷο�|�ȷ��� <br><br><br><br><br>
  	<a href="#�̸��ٲٱ�" class="button">������ ����</a>
  	
  	
  	</div>
  	</section>
  	</div>
  	</div>
</body>
</html>