package com.tt.controller;

import com.tt.controller.action.*;
public class ActionFactory {
  private static ActionFactory instance = new ActionFactory();
  private ActionFactory() {
    super();
  }
  public static ActionFactory getInstance() {
    return instance;
  }

  public Action getAction(String command) {
    Action action = null;
    System.out.println("ActionFactory  :" + command);
    /* 異붽��맂 遺�遺� */
    if (command.equals("index")) {
      action = new IndexAction();
    } else if (command.equals("main")) {
        action = new MainAction();
    } else if (command.equals("contract")) {
      action = new ContractAction();
    } else if (command.equals("join_form")) {
      action = new JoinFormAction();
    } else if (command.equals("id_check_form")) {
    } else if (command.equals("join")) {
      action = new JoinAction();
    } else if (command.equals("login_form")) {
      action = new LoginFormAction();
    } else if (command.equals("login")) {
      action = new LoginAction();
    } else if (command.equals("logout")) {
        action = new LogoutAction();
    } else if (command.equals("cart_insert")) {
      action = new CartInsertAction();
    } else if (command.equals("cart_list")) {
      action = new CartListAction();
    } else if (command.equals("cart_delete")) {
      action = new CartDeleteAction();
    } else if (command.equals("order_insert")) {
    } else if (command.equals("mypage")) {
      action = new MyPageAction();
    } else if (command.equals("order_detail")) {
    } else if (command.equals("qna_write_form")) {
      action = new QnaWriteFormAction();
    } else if (command.equals("qna_write")) {
      action = new QnaWriteAction();
    } else if (command.equals("qna_view")){
    	action = new QnaViewAction();
    }
    else if (command.equals("qna_list")) {
        action = new QnaListAction();
    }
    else if (command.equals("qna_delete")) {
        action = new QnaDeleteAction();
    }
    else if (command.equals("search")) {
        action = new Search();
    }
    return action;
  }
}