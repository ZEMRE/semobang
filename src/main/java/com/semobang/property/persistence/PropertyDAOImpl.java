package com.semobang.property.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semobang.property.domain.PropertyVO;
import com.semobang.user.domain.UserVO;

@Repository
public class PropertyDAOImpl implements PropertyDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int openProperty(PropertyVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int increasePropertyHits(int property_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateLoveCount(int property_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PropertyVO getProperty(int property_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteProperty(int property_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updatePropertyByAdmin(PropertyVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<PropertyVO> getPropertyList(int showAmount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PropertyVO> getPropertyListByAdmin() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PropertyVO> getPropertyListByBadge(int showAmount, String property_badge) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PropertyVO> getRecommendPropertyList(int showAmount, PropertyVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PropertyVO> getPopularPropertyList(int showAmount, PropertyVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PropertyVO> getPropertyListByAgent(int startRow, int propertyPerPage, String property_user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PropertyVO> getPropertyListBySearch(int startRow, int propertyPerPage, String search, String showType) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PropertyVO> getPropertyListByCondition(int startRow, int propertyPerPage, UserVO vo, String key,
			String value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PropertyVO> getPropertyListByUser(String user_email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PropertyVO> getPropertyListByLove(String user_email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getPropertySoldCount(String user_email) {
		// TODO Auto-generated method stub
		return 0;
	}
}
