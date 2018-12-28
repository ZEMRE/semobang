package com.semobang.semobang;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	// 처음 시작, 로고나 홈 클릭하면 메인 페이지로 이동
	@RequestMapping({"/", "/index"})
	public String home() {
				
		return "index";
	}
	
	
	// 사용자가 선택한 매물 상세보기로 이동
	@RequestMapping("property/{property_id}")
	public String property(@PathVariable String property_id)
	{
		
		return "property";
	}
}
