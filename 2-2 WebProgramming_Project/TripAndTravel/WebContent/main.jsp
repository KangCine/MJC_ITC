<%@page import="com.tt.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
    <% MemberVO memberVO = (MemberVO) session.getAttribute("loginUser"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Trip&Travel</title>
<link rel="stylesheet" href="assets/css/main.css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta charset="utf-8" />
	<style>
	.qqq {font-size:0.8em;}

	</style>
	</head>
	<body>

	<% if(memberVO.getId() != null && !"".equals(memberVO.getId())){%>
	<!-- Wrapper -->
			<div id="wrapper">

				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="main.jsp" class="active">Trip&Travel</a></li>
								<li class="search">
									Search
									<form action="TtServlet?command=search" method = post>
										<input type="text" name="search" placeholder="Search" />
									</form>
								</li>
							<li>'<%=memberVO.getId()%>'님 환영합니다<a href="TtServlet?command=logout">로그아웃</a></li>
							<li><a href="TtServlet?command=qna_list">글보기</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">
					
						<!-- Introduction -->
							<section id="intro" class="main">
								<div class="spotlight">
									<div class="content">
										<header class="major">
										<%@ include file="/qna/qnaWrite.jsp"%>

							</section>
					</div>
				<% }else{%>
				<script type="text/javascript">
				  alert("로그인하세요");
				  history.go(-1);
				</script>
				<%} %>
	</body>
</html>