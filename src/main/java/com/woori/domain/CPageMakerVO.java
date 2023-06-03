package com.woori.domain;

public class CPageMakerVO {
	
	private int startPage;
	private int endPage;
	private boolean prev,next;
	private int total;
	
	private CCriteria cri;
	private CMyCriteria Mcri;
	
	public CPageMakerVO(CCriteria cri, int total) {
		
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(cri.getPageNum()/5.0))*5;
		this.startPage = this.endPage-4;
		
		int realEnd=(int)(Math.ceil(total*1.0/cri.getAmount()));
		
		if(realEnd<this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
		
	}
	public CPageMakerVO(CMyCriteria Mcri, int total) {
		
		this.Mcri = Mcri;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(Mcri.getPageNum()/5.0))*5;
		this.startPage = this.endPage-4;
		
		int realEnd=(int)(Math.ceil(total*1.0/Mcri.getAmount()));
		
		if(realEnd<this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
		
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public CCriteria getCri() {
		return cri;
	}
	public void setCri(CCriteria cri) {
		this.cri = cri;
	}
	public CMyCriteria getMcri() {
		return Mcri;
	}
	public void setMcri(CMyCriteria mcri) {
		Mcri = mcri;
	}
	@Override
	public String toString() {
		return "CPageMakerVO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + ", cri=" + cri + ", Mcri=" + Mcri + "]";
	}

	
	
	
}
