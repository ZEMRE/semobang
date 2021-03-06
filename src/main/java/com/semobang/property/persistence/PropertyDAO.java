package com.semobang.property.persistence;

import java.util.List;

import com.semobang.property.domain.PropertyVO;
import com.semobang.property.domain.SearchVO;
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
	public int updateLoveCount(int property_id, int count);
	
	// 선택한 매물정보 가져오기
	// 푸터의 퀵 서치창
	public PropertyVO getProperty(int property_id);
	
	// 매물정보 삭제
	// 새로 등록 중 삭제, 수정 중 삭제, 상세보기 화면에서 삭제
	// 관리자 화면에서 삭제, 마이 리스트에서 삭제
	public int deleteProperty(int property_id);
	
	// 관리자 페이지 매물정보 수정
	// 관리자 권한으로 배지, 상태 변경
	public int updatePropertyByAdmin(PropertyVO vo);
	
	// 전체 (최신) 매물 리스트 가져오기
	// 최근글 리스트 showAmount 개수만큼 가져오기(limit 0, ?)
	// property_status: open
	// 최신 매물 리스트 페이지
	public List<PropertyVO> getPropertyList(int startRow, int propertyPerPage, String orderBy);
	
	// 전체 (최신) 매물 리스트 개수 계산하기
	public int getPropertyListCount();
	
	// 전체 매물 리스트 가져오기
	// property_status: 모든 상태
	// 관리자 페이지 
	public List<PropertyVO> getPropertyListByAdmin();
	
	// 배지 별 매물 리스트 가져오기
	// property_status: open
	// 메인 화면
	public List<PropertyVO> getPropertyListByBadge(int showAmount, String property_badge);
		
	// 추천 매물 리스트 가져오기
	// 로그인인 경우 (관심 도시, 카테고리, 타입) + 러브 수 많은 것
	// 로그인 아니면 러브 수 많은 것
	// property_status: open
	// 서치 결과 페이지 사이드, 추천 매물 리스트 페이지
	public List<PropertyVO> getRecommendPropertyList(int startRow, int propertyPerPage, boolean login, UserVO vo, String orderBy);
	
	// 추천 매물 리스트 개수 계산하기
	public int getRecommendPropertyListCount(boolean login, UserVO vo);
		
	// 인기 매물 리스트 가져오기
	// 로그인인 경우 (관심 도시, 카테고리, 타입) + 조회수 높은 것
	// 로그인 아니면 조회수 높은 것
	// property_status: open
	// 매물 상세보기 페이지 하단, 인기 매물 리스트 페이지
	public List<PropertyVO> getPopularPropertyList(int startRow, int propertyPerPage, boolean login, UserVO vo, String orderBy);
	
	// 인기 매물 리스트 개수 계산하기
	public int getPopularPropertyListCount(boolean login, UserVO vo);
	
	// 에이전트별 매물 리스트 가져오기
	// property_status: open
	// 메인, 상세보기에서 에이전트 사진이나 이름을 클릭한 경우
	// 에이전트 매물 리스트 페이지, 매물 상세보기 페이지 사이드
	public List<PropertyVO> getPropertyListByAgent(int startRow, int propertyPerPage, String property_user, String orderBy);
	
	// 에이전트별 매물 리스트 개수 계산하기
	public int getPropertyListByAgentCount(String property_user);

	// 비슷한 매물 리스트 가져오기
	// 같은 도시, 카테고리, 타입으로 검색한 것 중 조회수 높은 것
	// property_status: open
	// 매물 상세보기 페이지 하단
	public List<PropertyVO> getSimilarPropertyList(int showAmount, PropertyVO vo);
	
	// 검색한 매물 리스트 가져오기
	// showType: 최근순, 가격순
	// property_status: open
	// 서치 결과 페이지
	// 1. 최근순: orderBy -> "property_date DESC"
	// 2. 등록순: orderBy -> "property_date ASC"
	// 3. 가격 낮은순: orderBy -> "property_price DESC"
	// 4. 가격 높은순: orderBy -> "property_price ASC"
	public List<PropertyVO> getPropertyListBySearch(int startRow, int propertyPerPage, SearchVO vo, String orderBy);
	
	// 검색한 매물 리스트 개수 계산하기
	public int getPropertyListBySearchCount(SearchVO vo);

	// 조건별 매물 리스트 가져오기
	// 로그인인 경우 (관심 도시, 카테고리, 타입) + 조건
	// 로그인 아니면 조건
	// property_status: open
	// 메인 화면에서 검색, 서치 결과 페이지
	public List<PropertyVO> getPropertyListByCondition(int startRow, int propertyPerPage, boolean login, UserVO vo, String key, String value, String orderBy);

	// 조건별 매물 리스트 개수 계산하기
	public int getPropertyListByConditionCount(boolean login, UserVO vo, String key, String value);
		
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
			
	// 특정 사용자가 거래완료한 매물 개수 가져오기
	// property_status: sold
	// 메인화면, 프로필화면, 매물 상세보기 화면
	public int getPropertySoldCount(String user_email);
	
	// 시 리스트 가져오기
	// 메인 화면, 매물 상세보기 화면의 서치창
	public List<String> getCityList();

	// 선택한 시의 구 리스트 가져오기
	// 메인 화면, 매물 상세보기 화면의 서치창
	public List<String> getGuList(String city);
}
