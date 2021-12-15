package com.tesla.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tesla.vo.BoardVO;

public class BoardDAO extends DAO{
	
	//전제 조회
	public List<BoardVO> boardList() {
		String sql = "select * from board order by 1";
		List<BoardVO> list = new ArrayList<>();
		connect();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setNum(rs.getInt("board_num"));
				vo.setContent(rs.getString("board_content"));
				vo.setId(rs.getString("board_id"));
				vo.setDate(rs.getString("board_date"));
				vo.setTitle(rs.getString("board_title"));
				list.add(vo);
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
		
	}
	
	public BoardVO boardInsert(BoardVO vo) {
		String sql = "insert into board values(board_seq.nextval, ?, ?, ?, ?)";
		
		connect();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getContent());
			psmt.setString(2, vo.getId());
			psmt.setString(3, vo.getDate());
			psmt.setString(4, vo.getTitle());
			
			int r = psmt.executeUpdate();
			System.out.println(r + "건 입력");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return vo;
	}
	
	
	
}
