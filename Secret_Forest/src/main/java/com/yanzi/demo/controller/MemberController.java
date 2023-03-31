package com.yanzi.demo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.yanzi.demo.DTO.MemberDto;
import com.yanzi.demo.Service.MemberService;

import lombok.RequiredArgsConstructor;


@RestController
@RequiredArgsConstructor
public class MemberController {

	public final Logger logger = LoggerFactory.getLogger(MemberController.class);
	private final MemberService service;
	
// 중요한 정보가 오고가므로 PostMapping 처리.
	
	//getId는 서비스에서의 getId로부터 받아온 값에 대해 true인 경우
	//아이디가 중복되므로 "no"를 리턴해주도록 했다.
	@PostMapping("/getId")
	@ResponseBody
    public String getId(@RequestBody MemberDto memberDto) {
		logger.info("memberController getId()");
		
        boolean b = service.getId(memberDto);
        if(b) {
            return "no";
        }

        return "ok";
    }
	
	
	
	//addMember는 회원가입이 완료되어 카운트 된 숫자가 0보다 클 경우 
	//true를 반환한다. true일 때 회원가입이 완료되므로 "ok"를 리턴한다.
	 @PostMapping("/addMember")
	 public String addMember(@RequestBody MemberDto memberDto) {
		 System.out.print(memberDto.toString());
		 logger.info("memberController addMember()");
	        boolean b = service.addMember(memberDto);
	        if(b) {
	            return "ok"; // return을 ok로 하고 jsp에서 true false로 구분하면 당연히 false 나옵니다
	        }
	        return "no";
	    }
	
	 //login은 로그인한 정보를 세션에 객체로 저장해두기 위해 
	 //MemberDto를 반환하여 프론트엔드단까지 가져간다.
	 @PostMapping("/login")
	    public MemberDto login(MemberDto memberDto) {   
		 logger.info("memberController login()");
	        return service.login(memberDto);
	    }
	
	
}
