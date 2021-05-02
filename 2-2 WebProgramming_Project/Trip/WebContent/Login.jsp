<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="assets/css/main.css" />
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Trip&Travel</title>
</head>
<body>
<div class= "layer">
<a href ="Login.jsp">
<img src="images/Logo3.gif">
</a>
</div>
<div class="layer">
<span class="content">
<hr>로그인<br><br>
<form method="post" action="TtServlet?command=login">
아이디: <input type="text" name="u_id" size="10"><br>
비밀번호: <input type="password" name="u_pwd" size="10"><br>
<input type="submit" value="Login">
</form>
<hr>회원가입</hr><br><br>
<form  method="post" action="TtServlet?command=join"> 
아이디 <input type="text" name="u_id" size="10"><br>
비밀번호<input type="text" name="u_pwd" size="10">
성별<br>
<input type="radio" name="u_gender" value="남">남자
<input type="radio" name="u_gender" value="여">여자
<br>
나이 <input type="text" name="u_age" size="10">
이름 <input type="text" name="u_name" size="10">
전화번호 <input type="text" name="u_phone" size="10">
이메일 <input type="text" name="u_email" size="10">@
<select id="email2" name="u_email2">
<option class = "test">naver.com</option>
<option class = "test">hanmail.net</option>
<option class = "test">gmail.com</option>
</select>
나라
<select value="국적을 선택하세요" id= "u_contry" name="u_contry">
<option class = "test">대한민국</option>
<option class = "test">미국</option>
<option class = "test">일본</option>
<option class = "test">중국</option>
<option class = "test">러시아</option>
<option class = "test">영국</option>
<option class = "test">캐나다</option>
<option class = "test">홍콩</option>
<option class = "test">프랑스</option>
<option class = "test">독일</option>
<option class = "test">포르투갈</option>
<option class = "test">호주</option>
<option class = "test">기타</option>
</select> <br>
<input type="submit" value="Sing in">
</form>
</span>
</div>
</form>

</body>
</html>