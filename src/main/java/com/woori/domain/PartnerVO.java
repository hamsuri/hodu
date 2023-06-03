package com.woori.domain;

public class PartnerVO {

	 String partnerId;
	 String partnerPw;
	 String partnerName;
	 String businessNum;
	 String partnerMobile;
	 String partnerEmail;
	 String img_business;
	 
	public String getPartnerId() {
		return partnerId;
	}
	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
	}
	public String getPartnerPw() {
		return partnerPw;
	}
	public void setPartnerPw(String partnerPw) {
		this.partnerPw = partnerPw;
	}
	public String getPartnerName() {
		return partnerName;
	}
	public void setPartnerName(String partnerName) {
		this.partnerName = partnerName;
	}
	public String getBusinessNum() {
		return businessNum;
	}
	public void setBusinessNum(String businessNum) {
		this.businessNum = businessNum;
	}
	public String getPartnerMobile() {
		return partnerMobile;
	}
	public void setPartnerMobile(String partnerMobile) {
		this.partnerMobile = partnerMobile;
	}
	public String getPartnerEmail() {
		return partnerEmail;
	}
	public void setPartnerEmail(String partnerEmail) {
		this.partnerEmail = partnerEmail;
	}
	public String getImg_business() {
		return img_business;
	}
	public void setImg_business(String img_business) {
		this.img_business = img_business;
	}
	@Override
	public String toString() {
		return "PartnerVO [partnerId=" + partnerId + ", partnerPw=" + partnerPw + ", partnerName=" + partnerName
				+ ", businessNum=" + businessNum + ", partnerMobile=" + partnerMobile + ", partnerEmail=" + partnerEmail
				+ ", img_business=" + img_business + "]";
	}



	 
}
