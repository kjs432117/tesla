package com.tesla.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tesla.service.MemberService;
import com.tesla.vo.MemberVO;

public class LoginController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pass = req.getParameter("passwd");
		
		
		MemberService service = new MemberService();
		MemberVO vo = service.login(id, pass);
		
		HttpSession session = req.getSession();
		
		   if(vo !=null) {
			   
			session.setAttribute("id",vo.getId());
			session.setAttribute("name", vo.getName());
			
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}else {
			//login
			res.setContentType("text/html; charset=UTF-8"); 
	         PrintWriter out = res.getWriter(); 
	         out.println("<script>alert('아이디 또는 비밀번호가 틀렸습니다.'); location.href='login.jsp';</script>");
	         out.flush();
		}
		

	}

}
