package com.semobang.list.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/list")
@Controller
public class ListController {

	// 에이전트가 보유한 매물 리스트 페이지로 이동
	@RequestMapping("/agentList")
	public String agentList()
	{
		return "list/agentList";
	}
	
	
	// 사용자가 검색한 매물 리스트 페이지로 이동
	@RequestMapping("/searchList")
	public String searchList()
	{
		return "list/searchList";
	}
	
	
	// 최신 매물 리스트 페이지로 이동
	@RequestMapping("/recentList")
	public String recentList()
	{
		return "list/recentList";
	}
	
	
	// 인기 매물 리스트 페이지로 이동
	@RequestMapping("/popularList")
	public String popularList()
	{
		return "list/popularList";
	}
	
	
	// 추천 매물 리스트 페이지로 이동
	@RequestMapping("/recommendList")
	public String recommendList()
	{
		return "list/recommendList";
	}
}
