package com.tt.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tt.dao.MemberDAO;
import com.tt.dto.MemberVO;

public class JoinAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url = "/main.jsp"; 
    
    HttpSession session = request.getSession();
    
    MemberVO memberVO = new MemberVO();
    String email = request.getParameter("u_email") +"@" +request.getParameter("email2");
    
    
    memberVO.setId(request.getParameter("u_id"));
    memberVO.setPwd(request.getParameter("u_pwd"));
    memberVO.setName(request.getParameter("u_name"));
    memberVO.setEmail(email)  ;
    memberVO.setGender(request.getParameter("u_gender"));
    memberVO.setAge(request.getParameter("u_age"));
    memberVO.setPhone(request.getParameter("u_phone"));
    memberVO.setFrom(request.getParameter("from"));
    
    
    
    
    
   // session.setAttribute("id", request.getParameter("id"));  
    
  
    
    MemberDAO memberDAO = MemberDAO.getInstance();
    memberDAO.insertMember(memberVO);

    session.setAttribute("loginUser", memberVO);
    
    
    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
    dispatcher.forward(request, response);
  }
}
