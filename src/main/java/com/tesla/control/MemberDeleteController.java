package com.tesla.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.service.MemberService;
import com.dev.vo.MemberVO;

public class MemberDeleteController implements Controller {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//삭제작업 결과.jsp
		String id = req.getParameter("id");
		
		MemberService service = new MemberService();
		service.delete(id);
		
		req.getRequestDispatcher("member/memberDeleteOutput.jsp").forward(req, res);
		
		
		
		
		

	}

}
