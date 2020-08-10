package com.mysql.mybatis.board;

import java.util.List;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class boardDAO {

	@Autowired
	BasicDataSource dataSource;

	@Autowired
	SqlSession sqlSession;

	public List<boardDTO> select() {
		List<boardDTO> list = sqlSession.selectList("board.selectBoard");
		return list;
	}
	
	public List<boardDTO> selectOne(int id){
		List<boardDTO> list = sqlSession.selectList("board.selectBoardOne", id);
		return list;
	}

	public void delete(int id) {
		sqlSession.delete("board.deleteBoard", id);
	}

	public void update(boardDTO bdto) {
		sqlSession.update("board.updateBoard", bdto);
	}

	public void insert(boardDTO bdto) {
		sqlSession.insert("board.insertBoard", bdto);
	}
}
