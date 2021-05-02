package com.tt.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tt.dao.MemberDAO;
import com.tt.dto.MemberVO;

public class LoginFailAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url="member/login.jsp";
    HttpSession session=request.getSession();
  
    String id=request.getParameter("u_id");
    String pwd=request.getParameter("u_pwd");
    
    MemberDAO memberDAO=MemberDAO.getInstance();
      
    MemberVO memberVO=memberDAO.getMember(id);
    
    if(memberVO != null){
      if(memberVO.getPwd().equals(pwd)){    
        session.removeAttribute("id");
        session.setAttribute("loginUser", memberVO);
        url="TtServlet?command=main";
      }
    }else{
    	url="/LoginFail.jsp";
    }
    
    request.getRequestDispatcher(url).forward(request, response);  
  }
}
