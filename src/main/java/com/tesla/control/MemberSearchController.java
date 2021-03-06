package com.tesla.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tesla.service.MemberService;
import com.tesla.vo.MemberVO;

public class MemberSearchController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 값을 알고 조회기능.
		// search 조회페이지 ,수정페이지 ,delete 삭제페이지
		String id = req.getParameter("id");
		String job = req.getParameter("job");

		MemberService service = new MemberService();
		MemberVO vo = service.searchOne(id);
		req.setAttribute("member", vo);
		
		if (job.equals("search")) {
			req.getRequestDispatcher("member/memberSearchOutput.jsp").forward(req, res);
		} else if (job.equals("update")) {
			req.getRequestDispatcher("member/memberUpdateForm.jsp").forward(req, res);
		}else if(job.equals("delete")) {
			req.getRequestDispatcher("member/memberDeleteForm.jsp").forward(req, res);
		}

	}

}
