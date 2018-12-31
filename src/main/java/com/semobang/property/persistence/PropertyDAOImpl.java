package com.semobang.property.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semobang.property.domain.PropertyVO;

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

		int count = sqlSession.selectOne("getLoveCount", property_id);
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("property_id", property_id);
		map.put("property_badge", count);
		
		int result = sqlSession.update("updateLoveCount", map);
		
		return result;
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
	public List<PropertyVO> getPropertyList(int startRow, int propertyPerPage) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("startRow", startRow);
		map.put("propertyPerPage", propertyPerPage);
		
		return null;
	}

	@Override
	public List<PropertyVO> getPropertyListByAdmin() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PropertyVO> getPropertyListByBadge(int showAmount, String property_badge) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("showAmount", showAmount);
		map.put("property_badge", property_badge);
		
		return null;
	}

	@Override
	public List<PropertyVO> getRecommendPropertyList(int startRow, int propertyPerPage, boolean login, PropertyVO vo) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("startRow", startRow);
		map.put("propertyPerPage", propertyPerPage);
		map.put("login", login);
		map.put("property_category", vo.getProperty_category());
		map.put("getProperty_type", vo.getProperty_type());
		map.put("property_city", vo.getProperty_city());
		
		return null;
	}

	@Override
	public List<PropertyVO> getPopularPropertyList(int startRow, int propertyPerPage, boolean login, PropertyVO vo) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("startRow", startRow);
		map.put("propertyPerPage", propertyPerPage);
		map.put("login", login);
		map.put("property_category", vo.getProperty_category());
		map.put("getProperty_type", vo.getProperty_type());
		map.put("property_city", vo.getProperty_city());
		
		return null;
	}

	@Override
	public List<PropertyVO> getPropertyListByAgent(int startRow, int propertyPerPage, String property_user) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("startRow", startRow);
		map.put("propertyPerPage", propertyPerPage);
		map.put("property_user", property_user);
		
		return null;
	}

	@Override
	public List<PropertyVO> getPropertyListBySearch(int startRow, int propertyPerPage, String search, String showType) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PropertyVO> getPropertyListByCondition(int startRow, int propertyPerPage, boolean login, PropertyVO vo, String key,
			String value) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("startRow", startRow);
		map.put("propertyPerPage", propertyPerPage);
		map.put("login", login);
		map.put("property_category", vo.getProperty_category());
		map.put("getProperty_type", vo.getProperty_type());
		map.put("property_city", vo.getProperty_city());
		map.put("key", key);
		map.put("value", value);
		
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
