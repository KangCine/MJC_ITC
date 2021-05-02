<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<link rel="stylesheet" href="assets/css/main.css" /> 
	<div id="wrapper">
  <article>
    <form name="formm" method="post">
    <table id="notice">
      <tr>
              <th>제목</th>
              <td>${qnaVO.subject}</td>
      </tr>
      <tr>
        <th>등록일</th>
        <td> ${qnaVO.indate}</td>
      </tr>
      <tr>
        <th>내용</th>
        <td>${qnaVO.content} 
      </tr>
    </table>
    
    </form>
    <form action="TtServlet?command=qna_list" method="post">
<input type="submit" value="글리스트">
</form>
   <form action="TtServlet?command=qna_delete&qseq=${qnaVO.qseq}" method="post">
<input type="submit" value="삭제">
</form>
  </article>
    </div>