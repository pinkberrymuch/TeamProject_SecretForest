package com.yanzi.demo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yanzi.demo.DAO.BoardDao;
import com.yanzi.demo.DTO.BoardDto;

@Service
public class BoardService {

	@Autowired
	BoardDao boardDao;
	
	public List<BoardDto> getBoards() {
		List<BoardDto> list = boardDao.getBoards();
		return list;
		}
	 
	public BoardDto getBoard(int review_num) {
		BoardDto board = boardDao.getBoard(review_num);
		return null;
	}
	//게시글 작성
	public void createBoard(BoardDto board) {
		boardDao.createBoard(board);
		}
	//게시글 수정
	public void modifyBoard(BoardDto board) {
		boardDao.modifyBoard(board);
		}

	public void mergeBoard(BoardDto board) {
		if(board.getReview_num() > 0) {
			boardDao.modifyBoard(board);
		}else boardDao.createBoard(board);
	 }	
	//게시글 삭제
	public void deleteBoard(int review_num) {
		  boardDao.deleteBoard(review_num);
		  }

}
