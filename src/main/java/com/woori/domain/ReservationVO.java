package com.woori.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReservationVO {
	
	int reservation_idx;
	String userId;
	String userName;
	String userMobile;
	String userEmail;
	String pensionName;
	int price;
	String dogSize;
	int dogNum;
	int peopleNum;
	String message_to_p;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date reservation_date;
	String partnerId;
	String roomName;
	public int getReservation_idx() {
		return reservation_idx;
	}
	public void setReservation_idx(int reservation_idx) {
		this.reservation_idx = reservation_idx;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserMobile() {
		return userMobile;
	}
	public void setUserMobile(String userMobile) {
		this.userMobile = userMobile;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getPensionName() {
		return pensionName;
	}
	public void setPensionName(String pensionName) {
		this.pensionName = pensionName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDogSize() {
		return dogSize;
	}
	public void setDogSize(String dogSize) {
		this.dogSize = dogSize;
	}
	public int getDogNum() {
		return dogNum;
	}
	public void setDogNum(int dogNum) {
		this.dogNum = dogNum;
	}
	public int getPeopleNum() {
		return peopleNum;
	}
	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}
	public String getMessage_to_p() {
		return message_to_p;
	}
	public void setMessage_to_p(String message_to_p) {
		this.message_to_p = message_to_p;
	}
	public Date getReservation_date() {
		return reservation_date;
	}
	public void setReservation_date(Date reservation_date) {
		this.reservation_date = reservation_date;
	}
	public String getPartnerId() {
		return partnerId;
	}
	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	@Override
	public String toString() {
		return "ReservationVO [reservation_idx=" + reservation_idx + ", userId=" + userId + ", userName=" + userName
				+ ", userMobile=" + userMobile + ", userEmail=" + userEmail + ", pensionName=" + pensionName
				+ ", price=" + price + ", dogSize=" + dogSize + ", dogNum=" + dogNum + ", peopleNum=" + peopleNum
				+ ", message_to_p=" + message_to_p + ", reservation_date=" + reservation_date + ", partnerId="
				+ partnerId + ", roomName=" + roomName + "]";
	}
	

	

	
	
}
