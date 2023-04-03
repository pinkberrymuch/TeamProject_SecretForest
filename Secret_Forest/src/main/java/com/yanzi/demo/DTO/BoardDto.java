package com.yanzi.demo.DTO;

import java.util.Date;

public class BoardDto {
	/*
	 * 3. Review 테이블 생성 create table review
	 *  ( review_num number(10) not null primary key, 
	 *    user_id varchar2(30) references users (user_id) not null,
	 *    review_title varchar2(100) not null, 
	 *    review_content CLOB not null,
	 *     write_date  date not null,
	 */
	private int review_num;
	private String review_title;
	private String review_content;
	private Date write_date;
	private String writer;
	
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	@Override
	public String toString() {
		return "BoardDto [review_num=" + review_num + ", review_title=" + review_title + ", review_content="
				+ review_content + ", write_date=" + write_date + ", writer=" + writer + "]";
	}
	
	
    
	
}
