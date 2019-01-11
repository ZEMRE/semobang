package com.semobang.list.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semobang.property.domain.Criteria;
import com.semobang.property.domain.PageMaker;
import com.semobang.property.domain.PageSearch;
import com.semobang.property.domain.PropertyVO;
import com.semobang.property.domain.SearchVO;
import com.semobang.property.persistence.PropertyDAO;
import com.semobang.user.domain.UserVO;
import com.semobang.user.persistence.UserDAO;

@RequestMapping("/list")
@Controller
public class ListController {
	
	@Autowired
	PropertyDAO pdao;
	
	@Autowired
	UserDAO udao;

	// 에이전트가 보유한 매물 리스트 페이지로 이동
	@RequestMapping("/agentList/{user_email}")
	public String agentList(Model model, @ModelAttribute("cri") Criteria cri,@PathVariable("user_email") String user_email)
	{		
		cri.setPerPageNum(12);
		
		int startRow = cri.getPageStart();
		int propertyPerPage = cri.getPerPageNum();
		
		UserVO uvo = udao.getUser(user_email);
		
		List<PropertyVO> propertyListByAgent = pdao.getPropertyListByAgent(startRow, propertyPerPage, user_email, "property_id DESC");
		
		
		model.addAttribute("propertyListByAgent",propertyListByAgent);
		
		String propertyUser = user_email;
		
		//페이징 처리
		PageMaker pageMaker = new PageMaker();				
		int propertyListCount = pdao.getPropertyListCount();		
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(propertyListCount);	
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("propertyUser",propertyUser);
		model.addAttribute("uvo",uvo);
		
		return "list/agentList";
	}
	
	// 사용자가 검색한 매물 리스트 페이지로 이동
	@RequestMapping("/searchList")
	public String searchList(Model model,@ModelAttribute("cri") Criteria cri,  @ModelAttribute SearchVO svo)
	{		
		List<PropertyVO> searchList = pdao.getPropertyListBySearch(cri, svo, "property_id DESC");
	
		model.addAttribute("searchList", searchList);
		
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
		
		boolean searchOption1 = false;
		boolean searchOption2 = false;
		boolean searchOption4 = false;
		boolean searchOption8 = false;
		boolean searchOption16 = false;
		boolean searchOption32 = false;
		boolean searchOption64 = false;
		boolean searchOption128 = false;
		boolean searchOption256 = false;
		
		if(svo.getSearch_option() != null && svo.getSearch_option() != "") {
		int searchOption = Integer.parseInt(svo.getSearch_option());
		searchOption1 = (searchOption&1) !=0;
		searchOption2 = (searchOption&2) !=0;
		searchOption4 = (searchOption&4) !=0;
		searchOption8 = (searchOption&8) !=0;
		searchOption16 = (searchOption&16) !=0;
		searchOption32 = (searchOption&32) !=0;
		searchOption64 = (searchOption&64) !=0;
		searchOption128 = (searchOption&128) !=0;
		searchOption256 = (searchOption&256) !=0;
		}
		
		model.addAttribute("cityList",cityList);
		model.addAttribute("guList",guList);
		model.addAttribute("svo", svo);

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
		
		int searchListCount = pdao.getPropertyListBySearchCount(svo);
		
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(searchListCount);
		
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("cri",cri);
		return "list/searchList";
	}

	//구리스트 얻기
	@ResponseBody
	@RequestMapping(value = "/searchGu", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	public List<String> searchGu(HttpServletRequest request,HttpSession session) throws Exception {

		String propertyCity = request.getParameter("propertyCity");
		
		List<String> guList = pdao.getGuList(propertyCity);
		
		return guList;
	}
	
	
	// 최신 매물 리스트 페이지로 이동
	@RequestMapping("/recentList")
	public String recentList(Model model,@ModelAttribute("cri") Criteria cri)
	{
		List<PropertyVO> propertyList = pdao.getPropertyList(cri);		
		
		//시 리스트 얻기
		List<String> cityList = pdao.getCityList();
	
		model.addAttribute("cityList",cityList);
		model.addAttribute("propertyList",propertyList);
	
		//페이징 처리
		PageMaker pageMaker = new PageMaker();				
		int propertyListCount = pdao.getPropertyListCount();		
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(propertyListCount);	
		model.addAttribute("pageMaker", pageMaker);
		
		return "list/recentList";
	}
	
	
	// 인기 매물 리스트 페이지로 이동
	@RequestMapping("/popularList")
	public String popularList(Model model,@ModelAttribute("cri") Criteria cri,HttpSession session)
	{
		
		
	//public List<PropertyVO> getPopularPropertyList(int startRow, int propertyPerPage, boolean login, UserVO vo, String orderBy);
		int startRow = cri.getPageStart();
		int propertyPerPage = cri.getPerPageNum();
		boolean login = false;
		//로그인 여부값 가져오기
		UserVO uvo = (UserVO)session.getAttribute("member");		
		if(uvo != null) {
			login = true;
		}
		
		//시 리스트 얻기
		List<String> cityList = pdao.getCityList();
		model.addAttribute("cityList",cityList);
		
		List<PropertyVO> popularList = pdao.getPopularPropertyList(startRow, propertyPerPage, login, uvo, "property_date DESC");
		
		model.addAttribute("popularList",popularList);
		
		int popularListCount = pdao.getPopularPropertyListCount(login, uvo);
		
		//페이징 처리
		PageMaker pageMaker = new PageMaker();					
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(popularListCount);	
		model.addAttribute("pageMaker", pageMaker);
		
		return "list/popularList";
	}
	
	
	// 추천 매물 리스트 페이지로 이동
	@RequestMapping("/recommendList")
	public String recommendList(Model model,HttpSession sessoin, @ModelAttribute("cri") Criteria cri)
	{
		boolean login = false;
		//로그인 여부값 받기
		UserVO uvo = (UserVO)sessoin.getAttribute("member");		
		if(uvo != null) {
			login = true;
		}
		
		int startRow = cri.getPageStart();
		int propertyPerPage = cri.getPerPageNum();
		List<PropertyVO> recommendList = pdao.getRecommendPropertyList(startRow, propertyPerPage, login, uvo, "property_date DESC");	
		
		//시 리스트 얻기
		List<String> cityList = pdao.getCityList();
	
		model.addAttribute("cityList",cityList);
		model.addAttribute("recommendList",recommendList);
	
		//페이징 처리
		PageMaker pageMaker = new PageMaker();				
		int recommendListCount = pdao.getRecommendPropertyListCount(login, uvo);
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(recommendListCount);	
		model.addAttribute("pageMaker", pageMaker);
		
		return "list/recommendList";
	}
	
	// 테마 서치 리스트 페이지로 이동
		@RequestMapping("/conditionList/{property_condition}")
		public String conditionList(Model model, @PathVariable("property_condition") int property_condition,@ModelAttribute("cri") Criteria cri)
		{
			List<PropertyVO> conditionList = new ArrayList<>();
			
			int propertyCondition = property_condition;
			
			conditionList = pdao.getConditionList(propertyCondition);
			
			PageMaker pageMaker = new PageMaker();		
			
			int getConditionListCount = pdao.getConditionListCount(propertyCondition);
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(getConditionListCount);
			
			model.addAttribute("pageMaker", pageMaker);
			model.addAttribute("conditionList", conditionList);
			
			return "list/conditionList";
		}
}
