package com.woori.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CommunityVO {

	int index;
	String title;
	String content;
	String writer;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	Date write_date;
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	@Override
	public String toString() {
		return "CommunityVO [index=" + index + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", write_date=" + write_date + "]";
	}
	
	
}
