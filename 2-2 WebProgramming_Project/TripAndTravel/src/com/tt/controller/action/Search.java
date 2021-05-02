package com.tt.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tt.dao.QnaDAO;
import com.tt.dto.MemberVO;
import com.tt.dto.QnaVO;

public class Search implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url = "qna/qnaList.jsp";
    
    HttpSession session = request.getSession();
    MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");    
    
    if (loginUser == null) {
      url = "TtServlet?command=login_form";
    } else {
      QnaDAO qnaDAO = QnaDAO.getInstance();      
      ArrayList<QnaVO> qnaList = qnaDAO.listQna(loginUser.getId());
      request.setAttribute("qnaList", qnaList);
    }
    request.getRequestDispatcher(url).forward(request, response);
  }
}
