package com.semobang.user.persistence;

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
	public int insertUser(UserVO vo) 
	{
		int result = sqlSession.update("insertUser", vo);
		
		return result;
	}

	@Override
	public int duplicateCheck(String key, String value) {
		// TODO Auto-generated method stub
		return 0;
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
		
		char[] charSet = new char[] {
										'0','1','2','3','4','5','6','7','8','9'
										,'A','B','C','D','E','F','G','H','I','J','K','L','M'
										,'N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
										,'a','b','c','d','e','f','g','h','i','j','k','l','m'
										,'n','o','p','q','r','s','t','u','v','w','x','y','z'
									};
		
		StringBuffer buffer = new StringBuffer();
		
		int index = 0;
		
		for (int i = 0; i < length; i++)
		{
			index = (int) (charSet.length * Math.random());
			
			buffer.append(charSet[index]);
		}
		
		return buffer.toString();
	}

	@Override
	public int updateUserColumn(String user_email, String key, String value) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUserProfileWithPhoto(UserVO vo) {
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

	@Override
	public int updateUserSoldCount(String user_email, int count) {

		// 실제 SQL 실행시에는 count를 String으로 넘겨줌
		
		return 0;
	}
}
