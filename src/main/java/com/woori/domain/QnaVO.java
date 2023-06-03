package com.woori.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class QnaVO {
	
	String userId;
	String pensionName;
	String Q_title;
	String Q_content;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date Q_date;
	String Q_pw;
	String A_content;
	int Q_idx;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPensionName() {
		return pensionName;
	}
	public void setPensionName(String pensionName) {
		this.pensionName = pensionName;
	}
	public String getQ_title() {
		return Q_title;
	}
	public void setQ_title(String q_title) {
		Q_title = q_title;
	}
	public String getQ_content() {
		return Q_content;
	}
	public void setQ_content(String q_content) {
		Q_content = q_content;
	}
	public Date getQ_date() {
		return Q_date;
	}
	public void setQ_date(Date q_date) {
		Q_date = q_date;
	}
	public String getQ_pw() {
		return Q_pw;
	}
	public void setQ_pw(String q_pw) {
		Q_pw = q_pw;
	}
	public String getA_content() {
		return A_content;
	}
	public void setA_content(String a_content) {
		A_content = a_content;
	}
	public int getQ_idx() {
		return Q_idx;
	}
	public void setQ_idx(int q_idx) {
		Q_idx = q_idx;
	}
	@Override
	public String toString() {
		return "QnaVO [userId=" + userId + ", pensionName=" + pensionName + ", Q_title=" + Q_title + ", Q_content="
				+ Q_content + ", Q_date=" + Q_date + ", Q_pw=" + Q_pw + ", A_content=" + A_content + ", Q_idx=" + Q_idx
				+ "]";
	}


}
