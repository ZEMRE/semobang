package com.semobang.love.persistence;

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
		return 0;
	}

	@Override
	public LoveVO getLove(int love_user, int love_property) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteLove(int love_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getLoveCount(int property_id) {
		// TODO Auto-generated method stub
		return 0;
	}
}
