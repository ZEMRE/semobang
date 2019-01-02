package com.semobang.user.controller;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.semobang.user.domain.UserVO;
import com.semobang.user.persistence.UserDAO;
import com.semobang.user.service.DeleteUserService;
import com.semobang.user.service.DuplicateCheckService;
import com.semobang.user.service.LoginUserService;
import com.semobang.user.service.LogoutService;
import com.semobang.user.service.RegisterUserService;
import com.semobang.user.service.ResetPasswordService;
import com.semobang.user.service.UpdateProfileService;
import com.semobang.user.service.UpdateUserService;
import com.semobang.user.service.ValidateUserService;

@RequestMapping("/user")
@Controller
public class UserController {

	@Autowired
	private ValidateUserService validateUser;
	
	@Autowired
	private DuplicateCheckService duplicateCheck;
	
	@Autowired
	private RegisterUserService registerUser;
		
	@Autowired
	private ResetPasswordService resetPassword;
	
	@Autowired
	private LoginUserService loginUser;
	
	@Autowired
	private LogoutService logout;
	
	@Autowired
	private UpdateUserService updateUser;
	
	@Autowired
	private DeleteUserService deleteUser;
	
	@Autowired
	private UpdateProfileService updateProfile;
	
	@Autowired
	private UserDAO udao;
	
	// 패스워드 초기화 페이지로 이동
	@RequestMapping("/forgot")
	public String forgot()
	{
		return "user/forgot";
	}
	
	
	// 로그인 페이지로 이동
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		System.out.println("login.jsp 호출");
		return "user/login";
	}
	
	// 로그인 요청 처리
	// 로그인 페이지에서 사용
	// 로그인 시간 기록
	// 세션영역에 저장
	@RequestMapping(value="/loginUser", method=RequestMethod.POST)
	public ModelAndView loginUser(HttpServletResponse response, @ModelAttribute UserVO uvo)throws IOException
	{
			
		//객체 생성	
		ModelAndView mav = new ModelAndView();
			
		mav = loginUser.service(uvo, response);
			
		return mav;
			
	
		}
	
	//회원가입페이지로 이동
	@RequestMapping(value="/register")
	public String register() {
		System.out.println("register.jsp 호출");
	
		return "user/register";
	}
	
	// DB에 사용자 등록 (insert) 처리
	// register 페이지에서 사용
	@RequestMapping(value="/registerUser", method=RequestMethod.POST)
	public String registerUser(UserVO uvo){
		
		udao.insertUser(uvo);
		
		return "redirect:/";
	}
	
	// 사용자 유효성 체크 처리
	// 로그인 페이지: 입력한 이메일, 패스워드가 DB와 일치하는지 비교 
	// 프로필 페이지: 변경하기 전 기존 패스워드가 DB와 일치하는지 비교
	@RequestMapping("/validateUser")
	public int validateUser()
	{
		int result = validateUser.service();	
		
		return result;
	}
	
	
	// 닉네임, 이메일 중복 체크 처리
	// register 페이지: 사용자 등록을 위해 DB에 닉네임, 이메일 중복 확인
	// 프로필 페이지: 닉네임 변경을 위해 닉네임 중복 확인
	@RequestMapping(value="/duplicateCheck", method=RequestMethod.GET)
	@ResponseBody
	public int duplicateCheck(@RequestParam("user_Email") String user_email) throws IOException 
	{ 
		//@RequestParam은 요청의 특정 파라미터 값을 찾아낼때 사용하는 어노테이션
		
		
		return 0;
		
		
	}
	
	
	// 패스워드 초기화 처리
	// forget 페이지에서 사용
	// 임시 패스워드 메일로 전송
	@RequestMapping("/resetPassword")
	public int resetPassword()
	{
		int result = resetPassword.service();
		
		return result;
	}
	
	
	
	
		
	
	// 로그아웃 요청 처리 (세션영역 무효화 처리)
	// 메인, Account 페이지에서 로그아웃 링크 클릭
	@RequestMapping(value= "/logout")
	public String logout(HttpSession session) throws IOException{
		
		
		//로그아웃 작업
		session.invalidate();
		
		return "redirect:/";
	
		/*logout.service();
		
		// 메인 페이지로 이동
		return "redirect:index";*/
	}
			
		
		
		
	
	
	
	// 사용자 정보 업데이트 처리
	// 프로필 페이지에서 사용
	// 닉네임, 패스워드는 각각 따로 변경	
	@RequestMapping("/updateUser")
	public int updateUser()
	{
		int result = updateUser.service();
		
		return result;
	}
	
	
	// 사용자 정보 삭제 처리
	// 관리자 페이지에서 사용
	@RequestMapping("/deleteUser")
	public int deleteUser()
	{
		int result = deleteUser.service();
		
		return result;
	}
	
	
	// 사용자 프로필 업데이트 처리
	// 프로필 페이지에서 사용
	// 닉네임, 패스워드 제외한 나머지 정보 모두 업데이트
	@RequestMapping("/updateProfile")
	public int updateProfile()
	{
		int result = updateProfile.service();
		
		return result;
	}	
	
}
