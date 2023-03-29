package com.project.Service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.memberDao;
import com.project.Dto.memberDto;

import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class memberService {
	
	private final memberDao memberDao;
	
//addMember는 회원으로 등록되었을 때 true를, 어떤 이유로 인해 등록되지 않은 경우 false를 반환한다.
	public boolean addMember(memberDto memberDto) {
        int n = memberDao.addMember(memberDto);
        return n > 0;
    }
//login은 DB로부터 로그인한 유저의 모든 정보를 가져올 것이기 때문에 MemberDto 형태를 반환형으로 지정해주었다.
	public memberDto login(memberDto memberDto) {
		return memberDao.login(memberDto);
	}
	
}
