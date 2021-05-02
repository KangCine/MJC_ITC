package com.tt.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tt.dao.QnaDAO;

public class QnaDeleteAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url = "TtServlet?command=qna_list";
    
    String qseqArr = request.getParameter("qseq");
    
      System.out.println(qseqArr);
      QnaDAO qnaDAO = QnaDAO.getInstance();
      qnaDAO.deleteQna(Integer.parseInt(qseqArr));
    request.getRequestDispatcher(url).forward(request, response);
  }
}
