package com.semobang.info.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/info")
@Controller
public class InfoController {

	// 회사 소개 페이지로 이동
	@RequestMapping("/about")
	public String about()
	{
		return "info/about";
	}
	
	
	// 연락처 페이지로 이동
	@RequestMapping("/contact")
	public String contact()
	{
		return "info/contact";
	}
	
	
	// 자주하는 질문 답변 페이지로 이동
	@RequestMapping("/faq")
	public String faq()
	{
		return "info/faq";
	}
	
	
	
	// 개인정보 처리방침 페이지로 이동
	@RequestMapping("/privacy")
	public String privacy()
	{
		return "info/privacy";
	}
	
	
	// 이용약관 페이지로 이동
	@RequestMapping("/terms")
	public String terms()
	{
		return "info/terms";
	}
	
	
	// 부동산 가이드 상세보기 페이지로 이동
	@RequestMapping("/tips")
	public String tips()
	{
		return "info/tips";
	}
	
	
	// 부동산 가이드 리스트 페이지로 이동
	@RequestMapping("/tipsList")
	public String tipsList()
	{
		return "info/tipsList";
	}
}
