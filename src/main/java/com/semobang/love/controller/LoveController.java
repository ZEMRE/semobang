package com.semobang.love.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semobang.love.domain.LoveVO;
import com.semobang.love.service.OnLoveService;


@RequestMapping("/love")
@Controller
public class LoveController {

	@Autowired
	private OnLoveService onLove;
	
	// 러브 생성 또는 업데이트 처리
	// 메인화면, 매물 상세보기 화면에서 러브 클릭
	// love_user, love_property 값을 가진 러브 없으면 추가 (insertLove)
	// 있으면 삭제 (deleteLove)
	
	@RequestMapping(value = "/onLove", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	public @ResponseBody int onLove(HttpServletRequest request) throws Exception {
		 
		int love_property = Integer.parseInt(request.getParameter("property_id"));
	     String love_user = request.getParameter("user_email");
	     
	     LoveVO lvo = new LoveVO();
	     
	     lvo.setLove_property(love_property);
	     lvo.setLove_user(love_user);
		
		int result = onLove.service(lvo);
		
		System.out.println(result);

		return result;
	}
}