package com.woori.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReplyVO {
	int reply_index;
	String reply_content;
	String secret;
	String writer;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	Date reply_date;
	int index;
	@Override
	public String toString() {
		return "ReplyVO [reply_index=" + reply_index + ", reply_content=" + reply_content + ", secret=" + secret
				+ ", writer=" + writer + ", reply_date=" + reply_date + ", index=" + index + "]";
	}
	public int getReply_index() {
		return reply_index;
	}
	public void setReply_index(int reply_index) {
		this.reply_index = reply_index;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public String getSecret() {
		return secret;
	}
	public void setSecret(String secret) {
		this.secret = secret;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getReply_date() {
		return reply_date;
	}
	public void setReply_date(Date reply_date) {
		this.reply_date = reply_date;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
}
