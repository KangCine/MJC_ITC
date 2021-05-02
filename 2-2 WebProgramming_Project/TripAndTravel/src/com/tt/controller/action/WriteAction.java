package com.tt.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tt.controller.action.Action;
import com.tt.dao.QnaDAO;
import com.tt.dto.MemberVO;
import com.tt.dto.QnaVO;

public class WriteAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url = "TtServlet?command=qna_list";
    
    HttpSession session = request.getSession();
    MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");    
    
    if (loginUser == null) {
      url = "TtServlet?command=main";
    }else{      
      QnaVO qnaVO = new QnaVO();
      qnaVO.setSubject(request.getParameter("subject"));
      qnaVO.setContent(request.getParameter("content"));      
      QnaDAO qnaDAO = QnaDAO.getInstance();
      qnaDAO.insertqna(qnaVO, loginUser.getId());      
    }    
    response.sendRedirect(url);
  }
}
