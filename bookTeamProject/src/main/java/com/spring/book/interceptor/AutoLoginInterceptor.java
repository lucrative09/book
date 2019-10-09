package com.spring.book.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import com.spring.book.mvcuser.domain.MvcUser;
import com.spring.book.mvcuser.service.IMvcUserService;

public class AutoLoginInterceptor extends HandlerInterceptorAdapter implements SessionNames {

	
	@Autowired
	private IMvcUserService userService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

			HttpSession session = request.getSession();
			
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if(loginCookie != null) { 
				
				
				MvcUser user = userService.getUserWithSessionId(loginCookie.getValue());
				if(user != null) {
					session.setAttribute(LOGIN, user);
					
				}
			}		
			return true;
	}
}
	
	
	
	
	
	
	
