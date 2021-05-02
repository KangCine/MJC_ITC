<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
     <link rel="stylesheet" href="assets/css/main.css" />    

  <article>
  
  <h3>나의 일기장</h3><br><br>
    <form name="formm" method="post">
      <table id="cartList">
      <tr>
        <th>번호</th> <th>제목</th> <th>등록일</th>   
      </tr>
      <c:forEach items="${qnaList}"  var="qnaVO">
      <tr>  
        <td> ${qnaVO.qseq} </td>    
        <td> <a href="TtServlet?command=qna_view&qseq=${qnaVO.qseq}"> ${qnaVO.subject} </td>      
        <td> ${qnaVO.indate}</td>
      </tr>
      </c:forEach>    
	</table>
  <tr>
	<td align="center">
		
		</td>
		</tr>
    </form>
       <form action="TtServlet?command=main" method="post">
<input type="submit" value="글쓰기">
</form>
  </article>