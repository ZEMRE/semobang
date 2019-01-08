package com.semobang.property.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semobang.property.domain.Criteria;
import com.semobang.property.domain.PropertyVO;
import com.semobang.property.domain.SearchVO;
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
		
		int count = sqlSession.selectOne("getLoveCount", property_id);
 		
 		Map<String, Object> map = new HashMap<>();
 		
 		map.put("property_id", property_id);
 		map.put("property_badge", count);
 		
 		int result = sqlSession.update("updateLoveCount", map);
 		
 		return result;
	}
	

	@Override
	public int updateLoveCount(int property_id, int count) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("property_id", property_id);
		map.put("count", count);
		
		return sqlSession.update("updateLoveCount", map);
	}

	
	@Override
	public PropertyVO getProperty(int property_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getProperty",property_id);
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
	public List<PropertyVO> getPropertyList(Criteria cri) {
		/*
		Map<String, Object> map = new HashMap<>();

		map.put("startRow", startRow);
		map.put("propertyPerPage", propertyPerPage);
		map.put("orderBy", orderBy);*/
		
		return sqlSession.selectList("getPropertyList", cri);
	}
	
	
	@Override
	public int getPropertyListCount() {
		// TODO Auto-generated method stub
		return 0;
	}


	
	@Override
	public List<PropertyVO> getPropertyListByAdmin() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("getPropertyListByAdmin");
	}

	@Override
	public List<PropertyVO> getPropertyListByBadge(int showAmount, String property_badge) {

		Map<String, Object> map = new HashMap();
    
		map.put("showAmount", showAmount);
		map.put("property_badge", property_badge);
		
		return sqlSession.selectList("getPropertyListByBadge", map);
	}

	@Override
	public List<PropertyVO> getRecommendPropertyList(int startRow, int propertyPerPage, boolean login, UserVO vo, String orderBy) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("startRow", startRow);
		map.put("propertyPerPage", propertyPerPage);
		map.put("login", login);
		map.put("property_category", vo.getUser_interest_category());
		map.put("property_type", vo.getUser_interest_type());
		map.put("property_city", vo.getUser_interest_city());
		map.put("orderBy", orderBy);

		return sqlSession.selectList("getRecommendPropertyList", map);
	}
	
	@Override
	public int getRecommendPropertyListCount(boolean login, UserVO vo) {

		Map<String, Object> map = new HashMap<>();
		
		map.put("login", login);
		map.put("property_category", vo.getUser_interest_category());
		map.put("property_type", vo.getUser_interest_type());
		map.put("property_city", vo.getUser_interest_city());
		
		return 0;
	}

	@Override
	public List<PropertyVO> getPopularPropertyList(int startRow, int propertyPerPage, boolean login, UserVO vo, String orderBy) {

		Map<String, Object> map = new HashMap<>();
		
		map.put("startRow", startRow);
		map.put("propertyPerPage", propertyPerPage);
		map.put("login", login);
		map.put("property_category", vo.getUser_interest_category());
		map.put("property_type", vo.getUser_interest_type());
		map.put("property_city", vo.getUser_interest_city());
		map.put("orderBy", orderBy);
		
		return null;
	}
	
	@Override
	public int getPopularPropertyListCount(boolean login, UserVO vo) {
		
		Map<String, Object> map = new HashMap<>();

		map.put("login", login);
		map.put("property_category", vo.getUser_interest_category());
		map.put("property_type", vo.getUser_interest_type());
		map.put("property_city", vo.getUser_interest_city());
		
		return 0;
	}

	@Override
	public List<PropertyVO> getPropertyListByAgent(int startRow, int propertyPerPage, String property_user, String orderBy) {

		Map<String, Object> map = new HashMap<>();

		map.put("startRow", startRow);
		map.put("propertyPerPage", propertyPerPage);
		map.put("property_user", property_user);
		map.put("orderBy", orderBy);

		return sqlSession.selectList("getPropertyListByAgent", map);
	}
	
	
	@Override
	public int getPropertyListByAgentCount(String property_user) {
		// TODO Auto-generated method stub		
		return 0;
	}
	
	@Override
	public List<PropertyVO> getSimilarPropertyList(int showAmount, PropertyVO vo) {
		
		Map<String, Object> map = new HashMap<>();

		map.put("showAmount", showAmount);
		map.put("property_category", vo.getProperty_category());
		map.put("property_type", vo.getProperty_type());
		map.put("property_city", vo.getProperty_city());

		return sqlSession.selectList("getSimilarPropertyList", map);
	}

	@Override
	public List<PropertyVO> getPropertyListBySearch(int startRow, int propertyPerPage, SearchVO vo, String orderBy) {
		
		vo.setSearch_startRow(startRow);
		vo.setSearch_propertyPerPage(propertyPerPage);
		vo.setSearch_order_by(orderBy); 	// property_date DESC, property_date ASC, property_price DESC, property_price ASC
		
		return null;
	}
	
	@Override
	public int getPropertyListBySearchCount(SearchVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int getPropertyListByConditionCount(boolean login, UserVO vo, String key, String value) {
		
		Map<String, Object> map = new HashMap<>();

		map.put("login", login);
		map.put("property_category", vo.getUser_interest_category());
		map.put("property_type", vo.getUser_interest_type());
		map.put("property_city", vo.getUser_interest_city());
		map.put("key", key);
		map.put("value", value);
		
		return 0;
	}

	@Override
	public List<PropertyVO> getPropertyListByCondition(int startRow, int propertyPerPage, boolean login, UserVO vo, String key,
			String value, String orderBy) {
		
		Map<String, Object> map = new HashMap<>();

		map.put("startRow", startRow);
		map.put("propertyPerPage", propertyPerPage);
		map.put("login", login);
		
		map.put("property_category", vo.getUser_interest_category());
		map.put("property_type", vo.getUser_interest_type());
		map.put("property_city", vo.getUser_interest_city());
		map.put("key", key);
		map.put("value", value);
		map.put("orderBy", orderBy);

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
	
	@Override
	public List<String> getCityList() {
		
		return sqlSession.selectList("getCityList");

	}

	@Override
	public List<String> getGuList(String city) {
		
		return sqlSession.selectList("getGuList", city);
	}

}	