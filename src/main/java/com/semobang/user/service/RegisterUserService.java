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
	
	public void service(UserVO uvo)
	{
		
		System.out.println("사용자 등록");
		udao.insertUser(uvo);
		
		
	}
	
	
	
	
	
}
