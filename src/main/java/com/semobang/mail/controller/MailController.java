package com.semobang.mail.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semobang.mail.service.SendMailService;


@RequestMapping("/mail")
@Controller
public class MailController {

	@Autowired
	private SendMailService sendMail;
	
	// 메일 전송 처리
	@RequestMapping("/sendMail")
	public String sendMail()
	{
		sendMail.toDo();
		
		return "mail/sendMail";
	}	
}
