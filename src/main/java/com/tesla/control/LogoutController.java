package com.tesla.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			
		HttpSession session = req.getSession();
		session.invalidate();
		
		res.setContentType("text/html; charset=UTF-8"); 
        PrintWriter out = res.getWriter(); 
        out.println("<script>alert('로그아웃 되었습니다.'); location.href='in.jsp';</script>");
        out.flush();

	}

}
