package com.woori.dao;

import java.util.List;

import com.woori.domain.AdminCriteria;
import com.woori.domain.PartnerVO;
import com.woori.domain.UserVO;

public interface AdminDAO {

	// 회원 리스트 출력
	public List<UserVO> userList(AdminCriteria cri);
	
	// 회원 정보 개수
	public int getTotal(AdminCriteria cri);

	// 회원 삭제
	public void userDelete(String userId);
	
	// 파트너 리스트 출력
	public List<PartnerVO> partnerList(AdminCriteria cri);
	
	// 파트너 정보 개수
	public int pGetTotal(AdminCriteria cri);

	// 파트너 삭제
	public void partnerDelete(String userId);
	
	// 게시글 삭제
	public void communityDelete(int index);
	
	// qna 삭제
	public void qnaDelete(int Q_idx);
	
	// 댓글 삭제
	public void replyDelete(int reply_index);

	
}
