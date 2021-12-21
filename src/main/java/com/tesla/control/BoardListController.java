package com.tesla.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.tesla.dao.BoardDAO;
import com.tesla.service.BoardService;
import com.tesla.vo.BoardVO;

@WebServlet("/BoardListController")
public class BoardListController extends HttpServlet implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		JSONObject obj = new JSONObject();
		BoardDAO dao = new BoardDAO();
		
		try {
			List<BoardVO> list = dao.boardList();
			JSONArray ary = new JSONArray();
			for(BoardVO vo : list) {
				JSONObject ino = new JSONObject();
				ino.put("title", vo.getTitle());
				ino.put("content", vo.getContent());
				ino.put("num", vo.getNum());
				ino.put("id", vo.getId());
				ino.put("date", vo.getDate());
				ary.put(ino);
			}
			obj.put("retCode", "Success");
			obj.put("retVal", ary);
		} catch(Exception e) {
			e.printStackTrace();
			obj.put("reCode", "Fail");
			obj.put("retVal", e.getMessage());
		} 
		
		res.getWriter().print(obj.toString());
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String num	= req.getParameter("num");
		String id = req.getParameter("id");
		String date = req.getParameter("date");
		
		
	}
	
}
