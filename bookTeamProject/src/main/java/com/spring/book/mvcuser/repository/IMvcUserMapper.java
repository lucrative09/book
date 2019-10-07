package com.spring.book.mvcuser.repository;

import java.util.Map;

import com.spring.book.mvcuser.domain.MvcUser;

public interface IMvcUserMapper {
	
	//회원등록 기능
		void Join(MvcUser user);
		
	//중복확인 체크(Email, nickname)
		int isDuplicate(Map<String, Object> datas);
	
	//최종로그인 시간 갱신
	
	//사업자정보 조회기능
	

	
	//쿠키값으로 회원정보 불러오기 기능

}
