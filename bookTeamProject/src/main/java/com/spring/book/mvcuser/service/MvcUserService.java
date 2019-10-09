package com.spring.book.mvcuser.service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.spring.book.mvcuser.domain.MvcUser;
import com.spring.book.mvcuser.repository.IMvcUserMapper;

public class MvcUserService implements IMvcUserService {
	
	
	@Inject
	private IMvcUserMapper userMapper;
	
	
	//암호화 해야 함.
	@Override
	public void Join(MvcUser user) {
		
		String rawPw = user.getPassword();
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String encodedPw = encoder.encode(rawPw);
		user.setPassword(encodedPw);
		userMapper.Join(user);
	}
	
	@Override
	public boolean isDuplicate(String kind, String info) {
		
		System.out.println("중복체크 종류: " + kind);
		System.out.println("중복체크할 데이터: " + info);
		
		Map<String, Object> datas = new HashMap<>();
		datas.put("kind", kind);
		datas.put("info", info);
		int resultNum = userMapper.isDuplicate(datas);
		
		if(resultNum == 1) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public MvcUser getUserInfo(String email) {
		return userMapper.getUserInfo(email);
	}
	
	@Override
	public void keepLogin(String sessionId, Date limitTime, String email) {
		
		Map<String, Object> datas = new HashMap<>();
		datas.put("sessionId", sessionId);
		datas.put("limitTime", limitTime);
		datas.put("email", email);
		
		userMapper.keepLogin(datas);
	}
	
	@Override
	public MvcUser getUserWithSessionId(String sessionId) {
		return userMapper.getUserWithSessionId(sessionId);
	}

	@Override
	public void updateLastLoginTime(String email) {
		userMapper.updateLastLoginTime(email);
	}

	@Override
	public void withdrawal(String email) {
		userMapper.withdrawal(email);
		
	}
	
}
