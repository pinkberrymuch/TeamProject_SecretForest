package com.yanzi.demo.DAO;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.yanzi.demo.DTO.BoardDto;

@Mapper
public interface BoardDao {

	public List<BoardDto> getBoards();
	public BoardDto getBoard(int review_num);
	public void createBoard(BoardDto board);
	public void modifyBoard(BoardDto board);
	public void deleteBoard(int review_num);
	
}


