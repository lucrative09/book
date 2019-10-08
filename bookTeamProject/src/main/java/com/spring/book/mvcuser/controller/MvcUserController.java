package com.spring.book.mvcuser.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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
		
		
		// 로그인 페이지 요청 처리
		//@GetMapping("/login")
		//public ModelAndView login() {
			
		//}
		
		
		//사업자 검증 처리 -> 
		//@PostMapping("/join")
		//public 
		
		
	
		// 회원 정보 수정 처리
		
		
		// 로그아웃 처리 
		


	
	
}