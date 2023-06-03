package com.woori.domain;

public class ReviewVO {

		String userId;
		int R_idx;
		int rating;
		String R_content;
		String pensionName;
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
		public int getR_idx() {
			return R_idx;
		}
		public void setR_idx(int r_idx) {
			R_idx = r_idx;
		}
		public int getRating() {
			return rating;
		}
		public void setRating(int rating) {
			this.rating = rating;
		}
		public String getR_content() {
			return R_content;
		}
		public void setR_content(String r_content) {
			R_content = r_content;
		}
		public String getPensionName() {
			return pensionName;
		}
		public void setPensionName(String pensionName) {
			this.pensionName = pensionName;
		}

		@Override
		public String toString() {
			return "ReviewVO [userId=" + userId + ", R_idx=" + R_idx + ", rating=" + rating + ", R_content=" + R_content
					+ ", pensionName=" + pensionName + "]";
		}
		

		
}
