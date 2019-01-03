package com.semobang.love.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semobang.love.domain.LoveVO;
import com.semobang.love.persistence.LoveDAO;
import com.semobang.property.persistence.PropertyDAO;

@Service
public class OnLoveService {
	
	@Autowired
	LoveDAO ldao;
	
	@Autowired
	PropertyDAO pdao;

	public int service(LoveVO lvo)
	{
		System.out.println("매물에 러브 추가  / 상태 업데이트 / 카운트 증가");
		int result = 0;
		
		//Love 테이블에 전달받은 값과 동일한 값이 있는지 확인
				LoveVO getLoveVo = ldao.getLove(lvo.getLove_user(), lvo.getLove_property());			
				
				if(getLoveVo == null) {	//Love 테이블에 정보가 없으면
					System.out.println("러브추가");
					ldao.insertLove(lvo);
					//좋아요 카운트 증가시키기
					System.out.println("좋아요 증가");
					pdao.updateLoveCount(lvo.getLove_property());
				}else {
					System.out.println("러브삭제");
					ldao.deleteLove(getLoveVo.getLove_id());
					System.out.println("좋아요 감소");
					pdao.updateLoveCount(getLoveVo.getLove_property());
					result = 1;
				}
		
		return result;
	}
}
