package com.semobang.list.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semobang.property.domain.Criteria;
import com.semobang.property.domain.PageMaker;
import com.semobang.property.domain.PropertyVO;
import com.semobang.property.domain.SearchVO;
import com.semobang.property.persistence.PropertyDAO;
import com.semobang.user.persistence.UserDAO;

@RequestMapping("/list")
@Controller
public class ListController {
	
	@Autowired
	PropertyDAO pdao;
	
	@Autowired
	UserDAO udao;

	// 에이전트가 보유한 매물 리스트 페이지로 이동
	@RequestMapping("/agentList")
	public String agentList()
	{
		return "list/agentList";
	}
	
	
	// 사용자가 검색한 매물 리스트 페이지로 이동
	@RequestMapping("/searchList")
	public String searchList(Model model,@ModelAttribute("cri") Criteria cri,  @ModelAttribute SearchVO svo)
	{
		List<PropertyVO> propertyList = pdao.getPropertyList(cri);
		
/*		System.out.println(svo.getSearch_bedroom());
		System.out.println(svo.getSearch_category());
		System.out.println(svo.getSearch_city());
		System.out.println(svo.getSearch_max_deposit());
		System.out.println(svo.getSearch_max_bedroom());
		System.out.println(svo.getSearch_max_price());
		System.out.println(svo.getSearch_max_price2());
		System.out.println(svo.getSearch_max_size());
		System.out.println(svo.getSearch_min_bedroom());
		System.out.println(svo.getSearch_min_deposit());
		System.out.println(svo.getSearch_min_price());
		System.out.println(svo.getSearch_min_price2());
		System.out.println(svo.getSearch_min_size());
		System.out.println(svo.getSearch_option());*/
		
		
		//시 리스트 얻기
		List<String> cityList = pdao.getCityList();
		
		//사용자가 검색한 '시'의 '구'리스트 얻기
		List<String> guList = pdao.getGuList(svo.getSearch_city());
		
		//서치 옵션 기본값 넣어주기
		if(svo.getSearch_max_bedroom() == null) {
			svo.setSearch_max_bedroom("3");}
		if(svo.getSearch_max_deposit() == null) {
			svo.setSearch_max_deposit("3000");		
		}
		if(svo.getSearch_max_price()==null) {
			svo.setSearch_max_price("30000");
		}
		if(svo.getSearch_max_price2()==null) {
			svo.setSearch_max_price2("100");
		}
		if(svo.getSearch_max_size()==null) {
			svo.setSearch_max_size("30");
		}
		if(svo.getSearch_min_bedroom()==null) {
			svo.setSearch_min_bedroom("1");
		}
		if(svo.getSearch_min_deposit()==null) {
			svo.setSearch_min_deposit("1000");
		}
		if(svo.getSearch_min_price()==null) {
			svo.setSearch_min_price("10000");
		}
		if(svo.getSearch_min_price2()==null) {
			svo.setSearch_min_price2("50");
		}
		if(svo.getSearch_min_size()==null) {
			svo.setSearch_min_size("10");
		}
		
		int searchOption = svo.getSearch_option();
		boolean searchOption1 = (searchOption&1) !=0;
		boolean searchOption2 = (searchOption&2) !=0;
		boolean searchOption4 = (searchOption&4) !=0;
		boolean searchOption8 = (searchOption&8) !=0;
		boolean searchOption16 = (searchOption&16) !=0;
		boolean searchOption32 = (searchOption&32) !=0;
		boolean searchOption64 = (searchOption&64) !=0;
		boolean searchOption128 = (searchOption&128) !=0;
		boolean searchOption256 = (searchOption&256) !=0;
		
		
		model.addAttribute("cityList",cityList);
		model.addAttribute("guList",guList);
		model.addAttribute("svo", svo);
		model.addAttribute("propertyList",propertyList);
		model.addAttribute("searchOption1", searchOption1);
		model.addAttribute("searchOption2", searchOption2);
		model.addAttribute("searchOption4", searchOption4);
		model.addAttribute("searchOption8", searchOption8);
		model.addAttribute("searchOption16", searchOption16);
		model.addAttribute("searchOption32", searchOption32);
		model.addAttribute("searchOption64", searchOption64);
		model.addAttribute("searchOption128", searchOption128);
		model.addAttribute("searchOption256", searchOption256);
		
		
		//페이징 처리
		PageMaker pageMaker = new PageMaker();		
		
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(15);
		
		model.addAttribute("pageMaker", pageMaker);

		return "list/searchList";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/searchGu", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	public List<String> searchGu(HttpServletRequest request,HttpSession session) throws Exception {

		String propertyCity = request.getParameter("propertyCity");
		
		List<String> guList = pdao.getGuList(propertyCity);
		
		return guList;
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
