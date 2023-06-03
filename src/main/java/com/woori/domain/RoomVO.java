package com.woori.domain;

public class RoomVO {
	int room_idx;
	String partnerId;
	String roomName;
	int roomNum;
	int price;
	String dogSize;
	int dogNum;
	int peopleNum;
	String img_room1;
	String img_room2;
	String img_room3;
	String img_room4;
	String img_room5;
	String img_room6;
	String message_room;
	String pensionName;
	public int getRoom_idx() {
		return room_idx;
	}
	public void setRoom_idx(int room_idx) {
		this.room_idx = room_idx;
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
	public int getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
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
	public String getImg_room1() {
		return img_room1;
	}
	public void setImg_room1(String img_room1) {
		this.img_room1 = img_room1;
	}
	public String getImg_room2() {
		return img_room2;
	}
	public void setImg_room2(String img_room2) {
		this.img_room2 = img_room2;
	}
	public String getImg_room3() {
		return img_room3;
	}
	public void setImg_room3(String img_room3) {
		this.img_room3 = img_room3;
	}
	public String getImg_room4() {
		return img_room4;
	}
	public void setImg_room4(String img_room4) {
		this.img_room4 = img_room4;
	}
	public String getImg_room5() {
		return img_room5;
	}
	public void setImg_room5(String img_room5) {
		this.img_room5 = img_room5;
	}
	public String getImg_room6() {
		return img_room6;
	}
	public void setImg_room6(String img_room6) {
		this.img_room6 = img_room6;
	}
	public String getMessage_room() {
		return message_room;
	}
	public void setMessage_room(String message_room) {
		this.message_room = message_room;
	}
	public String getPensionName() {
		return pensionName;
	}
	public void setPensionName(String pensionName) {
		this.pensionName = pensionName;
	}
	@Override
	public String toString() {
		return "RoomVO [room_idx=" + room_idx + ", partnerId=" + partnerId + ", roomName=" + roomName + ", roomNum="
				+ roomNum + ", price=" + price + ", dogSize=" + dogSize + ", dogNum=" + dogNum + ", peopleNum="
				+ peopleNum + ", img_room1=" + img_room1 + ", img_room2=" + img_room2 + ", img_room3=" + img_room3
				+ ", img_room4=" + img_room4 + ", img_room5=" + img_room5 + ", img_room6=" + img_room6
				+ ", message_room=" + message_room + ", pensionName=" + pensionName + "]";
	}

	
}
