package com.yanzi.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.yanzi.demo.DAO.BoardDao;
import com.yanzi.demo.DTO.BoardDto;
import com.yanzi.demo.Service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardDao boardDao;
 
	@RequestMapping("/index.do")
	public String indexPage(Model model) {
		return "index";
	}
	
	@RequestMapping("/boardList.do")
	public String boardList(Model model) {
		
		List<BoardDto> list = boardDao.getBoards();
		model.addAttribute("list", list);
	return "login/Boards";
	}
	
	@RequestMapping("/board.do")
	public String board(Model model,int review_num) {
		BoardDto board = boardDao.getBoard(review_num);
		return "login/Boards";
	}
	

}
