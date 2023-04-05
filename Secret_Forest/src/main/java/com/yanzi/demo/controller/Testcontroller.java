package com.yanzi.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Testcontroller {
	
	@GetMapping("/test")
	public String test() {
		System.out.println("test");
		System.out.println("test");
		System.out.println("test");
		System.out.println("test");
		System.out.println("test");
		return "test";
	}
	
	@GetMapping("/main")
	public String main() {
		return "main";
	}

	//헤더 영역 페이지 링크 등록
	@RequestMapping("/login")
	public String login() {
		return "login/login";
	}
	@GetMapping("/register")
	public String register() {
		return "login/register";
	}
	@GetMapping("/board")
	public String board() {
		return "login/Board";
	}

	@GetMapping("/mypage_1depth")
	public String mypage_1depth() {
		return "login/mypage_1depth";
	}
	@GetMapping("/modify_user")
	public String modify_user() {
		return "login/modify_user";
	}
	
	
	//상품 카테고리 페이지 링크 등록 
	@GetMapping("/bouquet")
	public String bouquet() {
		return "prod_category/bouquet";
	}
	
	@GetMapping("/condolences_wreath")
	public String condolences_wreath() {
		return "prod_category/condolences_wreath";
	}
	
	@GetMapping("/congratulatory_wreath")
	public String congratulatory_wreath() {
		return "prod_category/congratulatory_wreath";
	}
	
	@GetMapping("/etc")
	public String etc() {
		return "prod_category/etc";
	}
	
	@GetMapping("/flower_basket")
	public String flower_basket() {
		return "prod_category/flower_basket";
	}
	
	@GetMapping("/oriental_orchids")
	public String oriental_orchids() {
		return "prod_category/oriental_orchids";
	}
	
	@GetMapping("/tropical_orchids")
	public String tropical_orchids() {
		return "prod_category/tropical_orchids";
	}
	
	//색상별 검색결과 카테고리 페이지 링크 등록
	@GetMapping("/red_search")
	public String red_search() {
		return "color_search/red_search";
	}
	
	@GetMapping("/orange_search")
	public String orange_search() {
		return "color_search/orange_search";
	}
	
	@GetMapping("/yellow_search")
	public String yellow_search() {
		return "color_search/yellow_search";
	}
	
	@GetMapping("/green_search")
	public String green_search() {
		return "color_search/green_search";
	}
	
	@GetMapping("/blue_search")
	public String blue_search() {
		return "color_search/blue_search";
	}
	
	@GetMapping("/white_search")
	public String white_search() {
		return "color_search/white_search";
	}
	
	//푸터 영역 항목 링크 등록
	@GetMapping("/termsOfUse")
	public String termsOfUse() {
		return "footer/termsOfUse";
	}
	
	@GetMapping("/handlingPolicy")
	public String handlingPolicy() {
		return "footer/handlingPolicy";
	}
	
	@GetMapping("/introductionWebsite")
	public String introductionWebsite() {
		return "footer/introductionWebsite";
	}
	
}
