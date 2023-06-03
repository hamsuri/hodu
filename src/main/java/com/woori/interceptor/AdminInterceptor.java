package com.woori.interceptor;

import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
* JYS
* 인터셉터
**/
@Component
public class AdminInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(session.getAttribute("userId")!= null) {
			if(session.getAttribute("userId").equals("admin")) {
				System.out.println("어드민 로그인");
		
				return true;
			}
		} else if(session.getAttribute("partnerId")!=null) {
			if(session.getAttribute("partnerId").equals("admin")) {
				System.out.println("파트너 어드민 로그인");
		
				return true;
			} 
		} 
		return false;
	}

}
