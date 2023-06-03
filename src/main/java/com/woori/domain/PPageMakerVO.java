package com.woori.domain;

public class PPageMakerVO {
	
	private int startPage;
	private int endPage;
	private boolean prev,next;
	private int total;
	
	private PCriteria Pcri;
	
	public PPageMakerVO(PCriteria Pcri, int total) {
		
		this.Pcri = Pcri;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(Pcri.getPageNum()/5.0))*5;
		this.startPage = this.endPage-4;
		
		int realEnd=(int)(Math.ceil(total*1.0/Pcri.getAmount()));
		
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

	public PCriteria getPCri() {
		return Pcri;
	}

	public void setPCri(PCriteria Pcri) {
		this.Pcri = Pcri;
	}

	@Override
	public String toString() {
		return "PageMakerVO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + ", Pcri=" + Pcri + "]";
	}

	
	
}
