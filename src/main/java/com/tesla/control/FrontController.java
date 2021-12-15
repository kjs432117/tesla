package com.tesla.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
	
	HashMap<String, Controller> list = null;

	@Override
	public void init() throws ServletException {
		list = new HashMap<String, Controller>();
		
		list.put("/carInput.do",  new CarInputController());
		list.put("/carList.do", new CarListController());

		//
		list.put("/memberInsert.do", new MemberInsertController());	
		list.put("/memberList.do", new MemberListController());
		list.put("/memberSearch.do", new MemberSearchController());
		list.put("/memberUpdate.do", new MemberUpdateController());
		list.put("/memberDelete.do", new MemberDeleteController());
		list.put("/login.do", new LoginController());
		list.put("/logout.do", new LogoutController());
		//11:22 daeun 수정
	}
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI();
		String context = req.getContextPath();
		String path = url.substring(context.length());
		System.out.println(path);
		
		Controller subCont = list.get(path);
		subCont.execute(req, resp);
		
		
		
	}
}
