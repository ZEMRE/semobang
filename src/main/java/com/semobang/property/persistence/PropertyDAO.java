package com.semobang.property.persistence;

import java.util.List;

import com.semobang.property.domain.PropertyVO;
import com.semobang.user.domain.UserVO;

public interface PropertyDAO {

	// 리스트 가져오기 기본 조건은 property_status: open
	
	// 매물 등록 (새로 글쓰기, 글 수정)
	// 새글쓰기는 insert, 글수정은 update
	// 성공하면 property_id 리턴
	public int openProperty(PropertyVO vo);
	
	// 조회수 증가
	// 매물 상세보기의 경우 1 증가함
	public int increasePropertyHits(int property_id);
	
	// 러브 카운트 업데이트
	// 사용자가 러브 누르는 경우 업데이트
	public int updateLoveCount(int property_id);
	
	// 선택한 매물정보 가져오기
	// 푸터의 퀵 서치창
	public PropertyVO getProperty(int property_id);
	
	// 매물정보 삭제
	// 새로 등록 중 삭제, 수정 중 삭제, 상세보기 화면에서 삭제
	// 관리자 화면에서 삭제, 마이 리스트에서 삭제
	public int deleteProperty(int property_id);
	
	// 관리자 페이지 매물정보 수정
	// 관리자 권한으로 카테고리, 타입, 배지, 상태 변경
	public int updatePropertyByAdmin(PropertyVO vo);
	
	// 전체 (최신) 매물 리스트 가져오기
	// 최근글 리스트 showAmount 개수만큼 가져오기(limit 0, ?)
	// property_status: open
	// 최신 매물 리스트 페이지
	public List<PropertyVO> getPropertyList(int showAmount);
	
	// 전체 매물 리스트 가져오기
	// property_status: 모든 상태
	// 관리자 페이지 
	public List<PropertyVO> getPropertyListByAdmin();
	
	// 배지 별 매물 리스트 가져오기
	// property_status: open
	// 메인 화면
	public List<PropertyVO> getPropertyListByBadge(int showAmount, String property_badge);
		
	// 추천 매물 리스트 가져오기
	// 같은 도시, 카테고리, 타입으로 검색한 것 중 러브 수 많은 것
	// property_status: open
	// 서치 결과 페이지 사이드, 추천 매물 리스트 페이지
	public List<PropertyVO> getRecommendPropertyList(int showAmount, PropertyVO vo);
		
	// 인기 매물 리스트 가져오기
	// 같은 도시, 카테고리, 타입으로 검색한 것 중 조회수 높은 것
	// property_status: open
	// 매물 상세보기 페이지 하단, 인기 매물 리스트 페이지
	public List<PropertyVO> getPopularPropertyList(int showAmount, PropertyVO vo);
	
	// 에이전트별 매물 리스트 가져오기
	// property_status: open
	// 메인, 상세보기에서 에이전트 사진이나 이름을 클릭한 경우
	// 에이전트 매물 리스트 페이지, 매물 상세보기 페이지 사이드
	public List<PropertyVO> getPropertyListByAgent(int startRow, int propertyPerPage, String property_user);
	
	// 검색한 매물 리스트 가져오기
	// showType: 최근순, 가격순
	// property_status: open
	// 서치 결과 페이지
	public List<PropertyVO> getPropertyListBySearch(int startRow, int propertyPerPage, String search, String showType);
	
	// 서치 결과
	// 1. 최근순: 디폴트
	// 2. 등록순
	// 조합한 것을 허용할 것인가 ???
	// 3. 최근순 + 가격 낮은순
	// 4. 최근순 + 가격 높은순
	// 5. 등록순 + 가격 낮은순
	// 6. 등록순 + 가격 높은순
	
	// 조건별 매물 리스트 가져오기
	// 로그인인 경우 (관심 도시, 카테고리, 타입) + 조건
	// 로그인 아니면 조건에 맞는 매물 리스트 + 최근순
	// property_status: open
	// 메인 화면
	public List<PropertyVO> getPropertyListByCondition(int startRow, int propertyPerPage, UserVO vo, String key, String value);
		
	// 특정 사용자가 올린 매물 리스트 가져오기
	// 에이전트가 로그인 한 경우에만 해당
	// property_status: open
	// 마이 리스트 페이지
	public List<PropertyVO> getPropertyListByUser(String user_email);
	
	// 특정 사용자가 러브한 매물 리스트 가져오기
	// 에이전트, 기본 사용자 공통
	// property_status: open
	// 마이 리스트 페이지
	public List<PropertyVO> getPropertyListByLove(String user_email);
	
	// 매물 개수 계산하기
	// List이름.size()로 대체
		
	// 특정 사용자가 거래완료한 매물 개수 가져오기
	// property_status: sold
	// 메인화면, 프로필화면, 매물 상세보기 화면
	public int getPropertySoldCount(String user_email);
}
