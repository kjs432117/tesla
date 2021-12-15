package com.tesla.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tesla.service.MemberService;
import com.tesla.vo.MemberVO;

public class MemberUpdateController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//수정작업 -> 결과.jsp
	String id = req.getParameter("id");
	String passwd = req.getParameter("passwd");
	String name = req.getParameter("name");
	String mail = req.getParameter("mail");
	
	MemberVO vo = new MemberVO();
	vo.setId(id);
	vo.setPasswd(passwd);
	vo.setName(name);
	vo.setMail(mail);
	
	//수정작업DAO, Service
	MemberService service = new MemberService();
	service.update(vo);
	//memberUpdateOutput.jsp
	req.setAttribute("rid", id);
	req.setAttribute("rpass", passwd);
	req.setAttribute("rname", name);
	req.setAttribute("rmail", mail);
	
	req.getRequestDispatcher("member/memberUpdateOutput.jsp").forward(req, res);
	}

}
