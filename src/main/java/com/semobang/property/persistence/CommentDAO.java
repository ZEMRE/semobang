package com.semobang.property.persistence;

import java.util.List;

import com.semobang.property.domain.CommentVO;

public interface CommentDAO {
	
	 public int commentCount() throws Exception;
	 
	    // 댓글 목록
	    public List<CommentVO> commentList(String user_email) throws Exception;
	 
	    // 댓글 작성
	    public int commentInsert(CommentVO comment) throws Exception;
	    
	    // 댓글 수정
	    public int commentUpdate(CommentVO comment) throws Exception;
	 
	    // 댓글 삭제
	    public int commentDelete(int cno) throws Exception;
}
