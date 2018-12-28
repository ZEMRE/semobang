package com.semobang.love.persistence;

import com.semobang.love.domain.LoveVO;

public interface LoveDAO {

	// 러브 추가하기
	// 매물 상세보기 화면에서 러브 클릭
	public int insertLove(LoveVO vo);
	
	// 러브 정보 가져오기
	public LoveVO getLove(int love_user, int love_property);
		
	// 러브 삭제하기
	// 매물 상세보기 화면에서 러브 클릭	
	public int deleteLove(int love_id);
	
	// 특정 매물의 러브 개수 가져오기
	// 마이리스트 화면
	public int getLoveCount(int property_id);
}
