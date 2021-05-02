<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="assets/css/main.css" />   
	<article>
    <h3> 일기를 작성합니다.</h3>
		<form name="formm" method="post" 
		action="TtServlet?command=qna_write">
			<fieldset>
			 <label>제목</label>
			    <input type="text" name="subject"  size="77" ><br>
				<label>내용</label>
			    <textarea rows="8" cols="65" name="content"></textarea><br>
			</fieldset>   
		<div class="clear"></div>
		 <div id="buttons" style="float:right">
			<input type="submit"  value="글쓰기"     class="submit"> 
			<input type="reset"   value="취소"     class="cancel">
		  </div>
		</form>
	</article>