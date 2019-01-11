package com.semobang.property.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semobang.property.domain.CommentVO;

@Repository
public class CommnetDAOImpl implements CommentDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	 public int commentCount() throws Exception{
		 return 0;
	 }
	 
    // 댓글 목록
    public List<CommentVO> commentList(String user_email) throws Exception{
    	return sqlSession.selectList("commentList",user_email);
    }
 
    // 댓글 작성
    public int commentInsert(CommentVO comment) throws Exception{
    	return sqlSession.update("commentInsert", comment);
    }
    
    // 댓글 수정
    public int commentUpdate(CommentVO comment) throws Exception{
    	return sqlSession.update("commentUpdate",comment);
    }
 
    // 댓글 삭제
    public int commentDelete(int cno) throws Exception{
    	return sqlSession.delete("commentDelete", cno);
    }
}
