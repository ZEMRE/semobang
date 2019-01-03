package com.semobang.love.persistence;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semobang.love.domain.LoveVO;


@Repository
public class LoveDAOImpl implements LoveDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertLove(LoveVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("insertLove", vo);
	}

	@Override
	public LoveVO getLove(String love_user, int love_property) {
		Map<String, Object> map = new HashMap<>();
		
		map.put("love_user", love_user);
		map.put("love_property", love_property);
		
		return sqlSession.selectOne("getLove",map);
	}

	@Override
	public int deleteLove(int love_id) {
		// TODO Auto-generated method stub
		return sqlSession.delete("deleteLove", love_id);
	}

	@Override
	public int getLoveCount(int property_id) {
		// TODO Auto-generated method stub
		return 0;
	}
}
