<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <link rel="stylesheet" href="assets/css/main.css" />
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
 <title>게시판</title>
 </head>
 <body>
		<article>
	    <h2> 고객 게시판 </h2>
	    <h3> 글쓰기</h3>    
		<form name="formm" method="post" 
		action="TtServlet?command=write">
			<fieldset>	
				<legend>Board Info</legend>		
			    <label>Title</label>
			    <input type="text" name="subject"  size="77" ><br>
				<label>Content</label>
			    <textarea rows="8" cols="65" name="content"></textarea><br>
			</fieldset>   
		<div class="clear"></div>
		 <div id="buttons" style="float:right">
			<input type="submit"  value="글쓰기"     class="submit"> 
			<input type="reset"   value="취소"     class="cancel">
			<input type="button"  value="홈"  class="submit"  onclick="location.href='SsiServlet?command=index'">	
		  </div>
		</form>
	</article>
</body> 
</html>