package com.woori.domain;

public class PensionVO {
	
	int P_idx;
	String img_pension;
	String region;
	String pensionName;
	String address;
	String message;
	int price_mean;
	int like_mean;
	private String partnerId;
	
	public String getPartnerId() {
		return partnerId;
	}
	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
	}
	public int getP_idx() {
		return P_idx;
	}
	public void setP_idx(int p_idx) {
		P_idx = p_idx;
	}
	public String getImg_pension() {
		return img_pension;
	}
	public void setImg_pension(String img_pension) {
		this.img_pension = img_pension;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getPensionName() {
		return pensionName;
	}
	public void setPensionName(String pensionName) {
		this.pensionName = pensionName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getPrice_mean() {
		return price_mean;
	}
	public void setPrice_mean(int price_mean) {
		this.price_mean = price_mean;
	}
	public int getLike_mean() {
		return like_mean;
	}
	public void setLike_mean(int like_mean) {
		this.like_mean = like_mean;
	}
	@Override
	public String toString() {
		return "PensionVO [P_idx=" + P_idx + ", img_pension=" + img_pension + ", region=" + region + ", pensionName="
				+ pensionName + ", address=" + address + ", message=" + message + ", price_mean=" + price_mean
				+ ", like_mean=" + like_mean + ", partnerId=" + partnerId + "]";
	}

	
	
	
	

}
