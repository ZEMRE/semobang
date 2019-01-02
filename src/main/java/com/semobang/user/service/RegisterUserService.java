package com.semobang.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.semobang.user.domain.UserVO;
import com.semobang.user.persistence.UserDAO;

@Service
public class RegisterUserService {

	@Autowired
	private UserDAO udao;
	
	
	
	
	public ModelAndView service(UserVO uvo)
	{
		ModelAndView mav = new ModelAndView();
		
		int result = udao.insertUser(uvo);
		
		//insert 성공 => main페이지(index.jsp)로 이동
		if(result>0) {
			
			mav.setViewName("user/index");
		
		//insert 실패 => 회원가입페이지(register.jsp)로 이동
		}else {
			System.out.println("이미 등록된 이메일입니다");
			mav.setViewName("user/register");
		}
		
		return mav;
		
		/*System.out.println("사용자 등록");
		udao.insertUser(uvo);*/
	}
}
