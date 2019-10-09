package com.spring.book.mvcuser.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.spring.book.mvcuser.domain.LoginDTO;
import com.spring.book.interceptor.SessionNames;
import com.spring.book.mvcuser.domain.MvcUser;
import com.spring.book.mvcuser.service.IMvcUserService;

@RestController
public class MvcUserController {
	
	
		@Autowired
		private IMvcUserService userService;


		// 회원등록 처리
		@PostMapping("/join")
		public ModelAndView Join(MvcUser regData) {
			
			ModelAndView mv = new ModelAndView();
			userService.Join(regData);
			mv.addObject("regResult", "OK");
			mv.setViewName("user/login");
			
			return mv;
		}
		
		// 회원가입 페이지 요청 처리
		@GetMapping("/join")
		public ModelAndView regiterGET() {
			return new ModelAndView("user/join");
		}
		
		
		
		//데이터(이메일, 닉네임) 중복체크 요청
		
		@GetMapping("/check")
		public ResponseEntity<String> check(String info, String kind) {
			
			try {
				boolean flag = userService.isDuplicate(kind, info);
				if(flag) { 
					return new ResponseEntity<>("true", HttpStatus.OK);
				} else { 
					return new ResponseEntity<>("false", HttpStatus.OK);
				}
			} catch(Exception e) {
				e.printStackTrace();
				return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
			}
		}
		
		
		
		// 로그인 페이지 요청 처리
		@GetMapping("/login")
		public ModelAndView login(Integer check, HttpSession session) {
			
			//check => 글번호
			if(check != null) 
				session.setAttribute("check", check);
			
			return new ModelAndView("user/login");
		}
		
		
		// 로그인 처리
		@PostMapping("/loginCheck")
		public ModelAndView loginCheck(LoginDTO loginData,
				HttpServletRequest request) {
			
			HttpSession session = request.getSession();
			
			System.out.println("LoginData: " + loginData);
			ModelAndView mv = new ModelAndView();
			
			MvcUser user = userService.getUserInfo(loginData.getEmail());
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			if(user != null) {
				if(encoder.matches(loginData.getPassword(), user.getPassword())) {
					
					userService.updateLastLoginTime(user.getEmail());
							
					//자동로그인 DB처리
					long expiredDate = System.currentTimeMillis() + SessionNames.LIMIT_TIME * 1000;
					Date limitDate = new Date(expiredDate);
					userService.keepLogin(session.getId(), limitDate, loginData.getEmail());
					
					mv.addObject("user", user);
				} else {
					mv.addObject("loginResult", "pwFail");
				}			
			} else {
				mv.addObject("loginResult", "emailFail");
			}
			mv.setViewName("user/loginCheck");
			return mv;
			
		}
		
		
		
		// 로그아웃 처리 
		@GetMapping("/logout")
		public ModelAndView logout(HttpServletRequest request, 
				HttpServletResponse response) throws Exception {
			
			HttpSession session = request.getSession();
			MvcUser user = (MvcUser)session.getAttribute(SessionNames.LOGIN);
			
			if(user != null) {
				
				String loginMethod = (String)session.getAttribute("loginMethod");

				
				session.removeAttribute(SessionNames.LOGIN);
				session.invalidate(); 
				
				
				Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
				if(loginCookie != null) {
					loginCookie.setMaxAge(0);
					response.addCookie(loginCookie);
					userService.keepLogin("none", new Date(), user.getEmail());
				}			
			}		
			return new ModelAndView("redirect:/");
		}
		
		
		//사업자 검증 처리 -> buildingAddress와  businessNum 데이터베이스 속 사업자 확인 
		//@PostMapping("/#")
		//public 
		

		// 회원 정보 수정 처리
		
		
		
		
		
		
		//회원 탈퇴 페이지 요청 처리
		@GetMapping("/delete")
		public ModelAndView 
		
		
		//회원 탈퇴 요청 처리
		


	
	
}