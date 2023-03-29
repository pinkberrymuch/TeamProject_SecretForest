package com.project.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.Dto.memberDto;
import com.project.Service.memberService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class memberController {

	private final memberService service;
	
//각각은 중요한 정보가 오고가므로 PostMapping 처리 해준다.
	
	//addMember는 회원가입이 완료되어 카운트 된 숫자가 0보다 클 경우 
	//true를 반환한다. true일 때 회원가입이 완료되므로 "ok"를 리턴한다.
	 @PostMapping("/addMember")
	 public String addMember(memberDto memberDto) {
	        boolean b = service.addMember(memberDto);
	        if(b) {
	            return "ok";
	        }
	        return "no";
	    }
	
	 //login은 로그인한 정보를 세션에 객체로 저장해두기 위해 
	 //MemberDto를 반환하여 프론트엔드단까지 가져간다.
	 @PostMapping("/login")
	    public memberDto login(memberDto memberDto) {       
	        return service.login(memberDto);
	    }
	
	
}
