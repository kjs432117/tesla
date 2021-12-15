package com.tesla.service;

import java.util.List;

import com.tesla.dao.BoardDAO;
import com.tesla.vo.BoardVO;

public class BoardService {
	BoardDAO dao = new BoardDAO();
	
	//������ȸ
	public List<BoardVO> boardAll() {
		return dao.boardList();
	}
	
	//�Է�
	public BoardVO insert(BoardVO vo) {
		return dao.boardInsert(vo);
	}
}
