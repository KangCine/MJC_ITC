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
<div class="layer">
<span class ="content">
Password 또는 ID가 틀렸습니다.
<hr>로그인<br><br>
<form method="post" action="TtServlet?command=login">
아이디: <input type="text" name="u_id" size="10">
비밀번호: <input type="password" name="u_pwd" size="10"><br>
<input type="submit" value="Login">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>
</form>
</span>
</div>
</body>
</html>