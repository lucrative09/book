package com.spring.book.mvcuser.repository;

import java.util.Map;

import com.spring.book.mvcuser.domain.MvcUser;

public interface IMvcUserMapper {
	
	//회원등록 기능
	void Join(MvcUser user);
		
	//중복확인 체크(Email, nickname)
	//이메일도 겹치면 안 되고 닉네임도 겹치면 안 됨. 사업자는 추가로 사업자 검증을 받을 뿐. common의 권한도 모두 가짐. 
	int isDuplicate(Map<String, Object> datas);
	
	//단일 회원정보 조회기능 
	//이메일로.
	MvcUser getUserInfo(String email);
	
	//자동로그인 쿠키값을 DB에 저장하는 기능
	void keepLogin(Map<String, Object> datas);
	
	//쿠키값으로 회원정보 불러오기 기능
	MvcUser getUserWithSessionId(String sessionId);

	//최종로그인 시간 갱신
	void updateLastLoginTime(String email);
	
	//회원 탈퇴
	void withdrawal(String email);
	
	//회원정보 수정
	void userInfoMod(MvcUser user);

}
