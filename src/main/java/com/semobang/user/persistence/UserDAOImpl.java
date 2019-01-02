package com.semobang.user.persistence;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semobang.user.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertUser(UserVO uvo) {
		
		System.out.println("insertUser in UserDAOImp");
		
		return sqlSession.insert("UserDAO.insertUser", uvo);
		
		
	}
	@Override
	public UserVO loginUser(UserVO uvo) {
		
		return sqlSession.selectOne("loginUser", uvo);
	}

	@Override
	public int duplicateCheck(String user_email) {
		
		int result= -1;
		
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("user_email", user_email);
		
		sqlSession.selectOne("duplicateCheck", map);
		
		result = (int)map.get("result");
		
		return result;
	}

	@Override
	public int validateUser(String user_email, String user_pass) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserVO getUser(String user_email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String randomPassword(int length) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateUserColumn(String user_email, String key, String value) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUserProfile(UserVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getUserPropertyCount(String user_email) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUser(String user_email) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<UserVO> getUserList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserVO> getPopularUserList() {
		// TODO Auto-generated method stub
		return null;
	}
}
