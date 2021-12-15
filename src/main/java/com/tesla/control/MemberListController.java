package com.tesla.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tesla.service.MemberService;
import com.tesla.vo.MemberVO;

public class MemberListController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//db 조회 결과를 출력페이지output.jsp
		MemberService service = new MemberService();
		List<MemberVO> list = service.searchAll();
		
		req.setAttribute("memberList", list);
		
		req.getRequestDispatcher("member/memberList.jsp").forward(req, res);

	}

}
