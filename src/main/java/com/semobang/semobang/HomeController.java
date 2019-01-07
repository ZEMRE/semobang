package com.semobang.semobang;

import java.util.ArrayList;
import java.util.List;

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

import com.semobang.love.domain.LoveVO;
import com.semobang.love.persistence.LoveDAO;
import com.semobang.property.domain.PropertyVO;
import com.semobang.property.domain.SearchVO;
import com.semobang.property.persistence.PropertyDAO;
import com.semobang.user.domain.UserVO;
import com.semobang.user.persistence.UserDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	PropertyDAO pdao;
	
	@Autowired
	UserDAO udao;
	
	@Autowired
	LoveDAO ldao;

	// 처음 시작, 로고나 홈 클릭하면 메인 페이지로 이동
	@RequestMapping({"/", "/index"})
	public String home(Model model,HttpSession session) {
		
		//시 리스트 얻기
		List<String> cityList = pdao.getCityList();
		
		//로그인 세션 얻기
		UserVO member = udao.getUser("a@abc.com");
/*		UserVO member = (UserVO)session.getAttribute("member");*/
		session.setAttribute("member",member);
		
		//메인리스트 얻기
		if(member != null) {//로그인하고 메인화면 접속
			boolean login = true;
			List<PropertyVO> mainList = pdao.getRecommendPropertyList(0, 7, login, member, "property_id DESC");
			model.addAttribute("mainList",mainList);
		}else {//로그인 없이 메인화면 접속
			List<PropertyVO> mainList = pdao.getPropertyListByBadge(7, "main");
			model.addAttribute("mainList",mainList);
		}		
		
		// 인기 중개인 리스트
		List<UserVO> popularUserList = udao.getPopularUserList();
		model.addAttribute("popularUserList",popularUserList);
		model.addAttribute("member", member);
		model.addAttribute("cityList",cityList);

		return "index";
	}
	
	//메인화면에서 '시'를 선택하면 해당 시의 '구'리스트 리턴 
	@ResponseBody
	@RequestMapping(value = "/searchGu", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	public List<String> searchGu(HttpServletRequest request,HttpSession session) throws Exception {

		String propertyCity = request.getParameter("propertyCity");
		
		List<String> guList = pdao.getGuList(propertyCity);
		
		return guList;
	}
	
/*	
	// 사용자가 선택한 매물 상세보기로 이동
	@RequestMapping("/list/searchList1/{searchoption}")
	public String searchOption(Model model, @PathVariable String searchoption){
		System.out.println(searchoption);
		
		//SQL 쿼리문
		// property_deposit=<1000 : select * from property where property_deposit=<1000 AND property_type='studio apartment';
		// property_option=2 : select * from property where (property_option&2) != 0  AND property_type='commerce';
		// property_option=8 : select * from property where (property_option&8) != 0 AND property_type='one-room';
		return null;
	}*/
	
	// 사용자가 선택한 매물 상세보기로 이동
	@RequestMapping("/{property_id}")
	public String property(Model model,@PathVariable("property_id") int property_id,HttpSession session,@ModelAttribute SearchVO svo)
	{	
		int heartval = 0;
		//시 리스트 얻기
		List<String> cityList = pdao.getCityList();
		
		//사용자가 클릭한 매물의 정보 얻기
		PropertyVO pvo = pdao.getProperty(property_id);
		
		//사용자가 클릭한 매물의 property_carousel값 얻기
		String property_carousel = pvo.getProperty_carousel();
		List<String> carouselList = new ArrayList<>();

		if(pvo.getProperty_carousel().isEmpty()) {
			carouselList.add("property4.jpg");
		}else {
			String[] propertyCarousel = new String(property_carousel).split(",");
			for(String propertycarousel: propertyCarousel) {
				carouselList.add(propertycarousel);
			}
		}
		
		//사용자가 클릭한 중개인 정보 얻기
		UserVO uvo = udao.getUser(pvo.getProperty_user());
		
		//사용자가 클릭한 매물의 중개인 매물 리스트 얻기
		List<PropertyVO> agentList = pdao.getPropertyListByAgent(0, 4, pvo.getProperty_user(), "property_date DESC");
		//세션영역에서 memberVO객체 받아오기
		UserVO member = (UserVO)session.getAttribute("member");
		
		//로그인 되어있는 사람이라면, 하트누른 게시물인지 판별하기 위해 러브정보 얻어오기
		if(member != null) {
			LoveVO lvo = ldao.getLove(member.getUser_email(), property_id);
			if(lvo != null) {heartval = 1;}
		}
		
		//Similar List 얻기
		List<PropertyVO> similarList = pdao.getSimilarPropertyList(6, pvo);
		
		
		//사용자가 검색한 '시'의  '구'리스트 얻기
		List<String> guList = pdao.getGuList(svo.getSearch_city());
		
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
		
		if(pvo.getProperty_video().isEmpty()) {
			pvo.setProperty_video("null");
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

		
		model.addAttribute("pvo",pvo);
		model.addAttribute("agentList",agentList);
		model.addAttribute("member",member);
		model.addAttribute("heartval",heartval);
		model.addAttribute("svo",svo);
		model.addAttribute("cityList",cityList);
		model.addAttribute("guList",guList);
		model.addAttribute("searchOption1", searchOption1);
		model.addAttribute("searchOption2", searchOption2);
		model.addAttribute("searchOption4", searchOption4);
		model.addAttribute("searchOption8", searchOption8);
		model.addAttribute("searchOption16", searchOption16);
		model.addAttribute("searchOption32", searchOption32);
		model.addAttribute("searchOption64", searchOption64);
		model.addAttribute("searchOption128", searchOption128);
		model.addAttribute("searchOption256", searchOption256);
		model.addAttribute("similarList", similarList);
		model.addAttribute("carouselList", carouselList);
		model.addAttribute("uvo", uvo);
		
		return "property";
	}
	
	
	@RequestMapping("/list")
	public String searchPropertyOption(Model model, @ModelAttribute SearchVO svo){

		List<PropertyVO> propertylist = pdao.getPropertyListByAdmin();
		
		model.addAttribute("svo", svo);
		model.addAttribute("propertylist",propertylist);
	
		return "testlist";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "test";
	}
	 
	@RequestMapping(value = "/email", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody int sendEmail(HttpServletRequest request) throws Exception {
	    
		String userName = request.getParameter("userName");
		String propertyId = request.getParameter("propertyId");
		String propertyUser = request.getParameter("propertyUser");
		String contents = request.getParameter("contents");
		
/*		System.out.println(userName);
		System.out.println(propertyId);
		System.out.println(propertyUser);
		System.out.println(contents);*/
		
		return 0;
	}
	
}

/*
 * ◆ alert창 plugin

1. alertify - http://fabien-d.github.io/alertify.js/
https://blog.naver.com/marnet/80201046409 참조

2. sweetalert - https://sweetalert.js.org/guides/

3. 부트스트랩 alert - https://www.w3schools.com/bootstrap/bootstrap_alerts.asp



◆ 메인에서 바로 넘어갈 때, 서치옵션 디폴트값 설정하기

if(svo.getSearch_max_bedroom() == null) {
			svo.setSearch_max_bedroom("10");}
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
			svo.setSearch_max_size("50");
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
			svo.setSearch_min_size("30");
		}

 * 
 * */
