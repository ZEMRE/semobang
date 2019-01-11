package com.semobang.property.domain;

import java.util.Date;

public class CommentVO {

	 private int cno;
	    private String user_email;
	    private String content;
	    private String writer;
	    private Date reg_date;
	 
	    public int getCno() {
	        return cno;
	    }
	 
	    public void setCno(int cno) {
	        this.cno = cno;
	    }
	 
	    public String getUser_email() {
			return user_email;
		}

		public void setUser_email(String user_email) {
			this.user_email = user_email;
		}

		public String getContent() {
	        return content;
	    }
	 
	    public void setContent(String content) {
	        this.content = content;
	    }
	 
	    public String getWriter() {
	        return writer;
	    }
	 
	    public void setWriter(String writer) {
	        this.writer = writer;
	    }
	 
	    public Date getReg_date() {
	        return reg_date;
	    }
	 
	    public void setReg_date(Date reg_date) {
	        this.reg_date = reg_date;
	    }

	
}
