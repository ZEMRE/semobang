package com.semobang.user.persistence;

import java.util.List;

import com.semobang.user.domain.UserVO;

public interface UserDAO {

	// 회원 가입 (등록) 메서드
	public int insertUser(UserVO vo);
	
	// 중복 또는 존재하는지 체크 (이메일, 등록번호 등)
	// key에 따른 value가 DB에 존재하는지 검사
	public int duplicateCheck(String key, String value);
		
	// 사용자 이메일과 패스워드 검사
	// 로그인: 이메일, 패스워드가 일치하는지 체크
	// 패스워드 변경: 현재 패스워드와 일치하는지 체크
	public int validateUser(String user_email, String user_pass);
	
	// 사용자 정보 가져오기
	public UserVO getUser(String user_email);
	
	// 임시 패스워드 생성
	// 패스워드 잊었을 때 이메일로 전달
	public String randomPassword(int length);
	
	// 사용자 컬럼 업데이트
	// key, value를 전달하여 항목 업데이트
	// 패스워드, 레벨, 로그인 시간 변경
	// Timestamp 타입: (key - "user_login_time : value - "Timestamp")
	public int updateUserColumn(String user_email, String key, String value);
	
	// 사용자 정보 전체 업데이트 + 사진포함 (프로필 수정)
	// 프로필 화면
	public int updateUserProfileWithPhoto(UserVO vo);
	
	// 사용자 정보 전체 업데이트 (프로필 수정)
	// 프로필 화면
	public int updateUserProfile(UserVO vo);
	
	// 사용자(에이전트)가 작성한 매물 개수 가져오기
	// 프로필 화면, 매물 상세보기 화면
	public int getUserPropertyCount(String user_email);
	
	// 사용자 정보 삭제
	// 관리자 화면
	public int deleteUser(String user_email);
	
	// 모든 사용자 리스트 가져오기
	// 관리자 화면
	public List<UserVO> getUserList();
	
	// 인기 사용자(에이전트) 리스트 가져오기
	// 계약완료 수 많은 순서
	// 메인 화면
	public List<UserVO> getPopularUserList();
	
	// 계약건수 업데이트
	// property_status가 sold로 변경되면 카운트 변경
	// 관리자 페이지
	public int updateUserSoldCount(String user_email, int count);
}
