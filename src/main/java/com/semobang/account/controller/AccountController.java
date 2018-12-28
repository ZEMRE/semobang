package com.semobang.account.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/account")
@Controller
public class AccountController {

	// 사용자 프로필 페이지로 이동
	@RequestMapping("/profile")
	public String profile()
	{
		return "account/profile";
	}
	
	
	// 관리자 페이지로 이동
	@RequestMapping("/manage")
	public String manage()
	{
		return "account/manage";
	}
	
	
	// 자신의 글 리스트로 이동
	@RequestMapping("/myList")
	public String myList()
	{
		return "account/myList";
	}
	
	
	// 매물 등록 페이지로 이동
	@RequestMapping("/submit")
	public String submit()
	{
		return "account/submit";
	}
}
