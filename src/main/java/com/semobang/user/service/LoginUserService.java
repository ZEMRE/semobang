package com.semobang.user.service;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.semobang.user.domain.UserVO;
import com.semobang.user.persistence.UserDAO;
import com.semobang.user.persistence.UserDAOImpl;

@Service
public class LoginUserService {

	//아이디를 세션에 저장하기 위해 선언
	@Autowired
	private HttpSession session;
	
	@Autowired
	UserDAO udao;
	
	
	public ModelAndView service(UserVO uvo, HttpServletResponse response) throws IOException{
		response.setContentType("text/html; charset=utf-8");
	
		ModelAndView mav = new ModelAndView();
		
		
		//여기서 member는 로그인한 상태의 UserVo(?)
		UserVO member = udao.loginUser(uvo);
		
		PrintWriter out = response.getWriter();
		
		if(member !=null) {
			session.setAttribute("loginEmail", member.getUser_email());
			
			//view페이지에서 사용하기위해  member를 "member"로 저장
			session.setAttribute("member", member);
			
			//setAttribute와 같은 기능. 뷰에서 사용할 데이터를 사용하기 위해서 저장할 수 있음. request 영역에서 데이터가 유지됨
			mav.addObject("member", member);
			
			
			mav.setViewName("redirect:/");	//이동할 페이지
		}else {
			
			out.println("<script> alert('아이디 또는 비밀번호가 틀립니다!');");
			out.println("history.go(-1); </script>");
			out.close();
		}
		
		return mav;
	}
	
	
	/*public void service()
	{				
		System.out.println("세션영역 저장 / 로그인 시간 기록");		
	}*/
}
