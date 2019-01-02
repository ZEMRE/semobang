package com.semobang.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semobang.user.domain.UserVO;
import com.semobang.user.persistence.UserDAO;

@Service
public class RegisterUserService {

	@Autowired
	private UserDAO dao;
	
	public void service(UserVO vo)
	{
		System.out.println("사용자 등록");
		dao.insertUser(vo);
	}
}
