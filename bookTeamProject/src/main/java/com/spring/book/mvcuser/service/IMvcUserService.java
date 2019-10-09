package com.spring.book.mvcuser.service;

import java.util.Date;

import com.spring.book.mvcuser.domain.MvcUser;

public interface IMvcUserService {

	
	//회원정보 등록 
	void Join(MvcUser user);

	//데이터 중복체크
	boolean isDuplicate(String kind, String info);

	//단일회원 정보 조회
	MvcUser getUserInfo(String email);

	//자동로그인 쿠키값 저장처리
	void keepLogin(String sessionId, Date limitTime, String email);

	//쿠키값으로 회원정보 불러오기 기능
	MvcUser getUserWithSessionId(String sessionId);
	
	//최종로그인 시간 갱신
	void updateLastLoginTime(String email);

	
	//회원탈퇴 기능
	void withdrawal(String email);
	

	
}
