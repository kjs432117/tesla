package com.tesla.servlet;

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
import com.tesla.vo.BoardVO;

@WebServlet("/BoardServlet")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		} catch (Exception e) {
			e.printStackTrace();
			obj.put("reCode", "Fail");
			obj.put("retVal", e.getMessage());
		}
		response.getWriter().print(obj.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
