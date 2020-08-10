package com.mysql.mybatis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysql.mybatis.board.boardDAO;
import com.mysql.mybatis.board.boardDTO;

@Service
public class boardService {
	
	@Autowired
	boardDAO bdao;
	
	public List<boardDTO> select(){
		return bdao.select();
	}
	
	public List<boardDTO> selectOne(int id){
		return bdao.selectOne(id);
	}
	
	public void insert(boardDTO bdto) {
		bdao.insert(bdto);
	}
	
	public void update(boardDTO bdto) {
		bdao.update(bdto);
	}
	
	public void delete(int id) {
		bdao.delete(id);
	}
}
