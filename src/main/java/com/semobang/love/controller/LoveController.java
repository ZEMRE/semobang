package com.semobang.love.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping("/onLove")
	public int onLove()
	{
		int result = onLove.service();
		
		return result;
	}
}
