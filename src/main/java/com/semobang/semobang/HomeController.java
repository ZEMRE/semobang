package com.semobang.semobang;

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

import com.semobang.property.domain.PropertyVO;
import com.semobang.property.domain.SearchVO;
import com.semobang.property.persistence.PropertyDAO;
import com.semobang.user.domain.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	PropertyDAO pdao;

	// 처음 시작, 로고나 홈 클릭하면 메인 페이지로 이동
	@RequestMapping({"/", "/index"})
	public String home(Model model,HttpSession session) {
		//로그인 없이 메인화면 접속
		List<PropertyVO> mainList = pdao.getPropertyListByBadge(7, "main");
		model.addAttribute("mainList",mainList);
		UserVO member = (UserVO)session.getAttribute("member");
		model.addAttribute("member",member);
		//로그인하고 메인화면 접속

		return "index";
	}
	
	// 사용자가 선택한 매물 상세보기로 이동
	@RequestMapping("/{property_id}")
	public String property(Model model,@PathVariable("property_id") int property_id,HttpSession session)
	{
		//사용자가 클릭한 매물의 정보 얻기
		PropertyVO pvo = pdao.getProperty(property_id);
		
		//사용자가 클릭한 매물의 중개인 매물 리스트 얻기
		List<PropertyVO> userList = pdao.getPropertyListByUser(pvo.getProperty_user());
		//세션영역에서 memberVO객체 받아오기
		UserVO member = (UserVO)session.getAttribute("member");
		
		model.addAttribute("pvo",pvo);
		model.addAttribute("userList",userList);
		model.addAttribute("member",member);
		
		return "property";
	}
	
	
	@RequestMapping("/list/searchList2")
	public String searchPropertyOption(Model model, @ModelAttribute SearchVO svo){
		

		System.out.println("SearchPropertyBedroom1 :"+svo.getSearch_min_bedroom());
		System.out.println("SearchPropertyBedroom2 :"+svo.getSearch_max_bedroom());
		System.out.println("SearchPropertyCategory :"+svo.getSearch_category());
		System.out.println("SearchPropertyCity : "+svo.getSearch_city());
		System.out.println("SearchPropertyDeposit1 : "+svo.getSearch_min_deposit());
		System.out.println("SearchPropertyDeposit2 : "+svo.getSearch_max_deposit());
		System.out.println("SearchPropertyGu : "+svo.getSearch_gu());
		System.out.println("PropertyOption : "+svo.getSearch_option());
		System.out.println("PropertyPrice1 : "+svo.getSearch_min_price());
		System.out.println("PropertyPrice2 : "+svo.getSearch_max_price());
		System.out.println("SearchPropertySize1 : "+svo.getSearch_min_size());
		System.out.println("SearchPropertySize2 : "+svo.getSearch_max_size());
		System.out.println("SearchPropertyType"+svo.getSearch_type());
	
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value = "/email", method = RequestMethod.POST, produces = "application/json")
	public void onLove(HttpServletRequest request) throws Exception {
		 
		System.out.println("버튼누르면 여기까지");
	     
		
		
	}
	
}
