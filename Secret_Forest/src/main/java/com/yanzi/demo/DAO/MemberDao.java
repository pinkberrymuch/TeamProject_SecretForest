package com.yanzi.demo.DAO;

import org.apache.ibatis.annotations.Mapper;

import com.yanzi.demo.DTO.MemberDto;


@Mapper
public interface MemberDao {
	
   //아이디 중복검사는 DB를 체크해서 아이디가 존재하면 숫자가 카운트되며 중복되는 아이디가 없을 때 0을 반환한다.
	int getId(MemberDto memberDto);
	
   //회원가입은 MemberDto를 받아서 추가되는 경우 숫자가 카운트된다.(시퀀스넘버같은 개념)
	int addMember(MemberDto memberDto);
	
   //로그인은 MemberDto를 받아서 MemberDto를 반환해주는데, 
   //이는 프론트엔드단에서 세션을 위해 객체형태로 반환해주는 것이다.	
	MemberDto login(MemberDto memberDto);
}
