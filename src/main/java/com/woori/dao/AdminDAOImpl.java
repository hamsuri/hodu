package com.woori.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.woori.domain.AdminCriteria;
import com.woori.domain.PartnerVO;
import com.woori.domain.UserVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Inject
	private SqlSession adminSession;
	
	@Override
	public List<UserVO> userList(AdminCriteria cri) {
		return adminSession.selectList("admin.userList", cri);
	}
	
	@Override
	public int getTotal(AdminCriteria cri) {
		return adminSession.selectOne("admin.getTotal");
	}

	
	@Override
	public void userDelete(String userId) {
		adminSession.delete("admin.userDelete", userId);
	}
	
	
	@Override
	public List<PartnerVO> partnerList(AdminCriteria cri) {
		return adminSession.selectList("admin.partnerList", cri);
	}
	
	@Override
	public int pGetTotal(AdminCriteria cri) {
		return adminSession.selectOne("admin.pGetTotal");
	}

	
	@Override
	public void partnerDelete(String partnerId) {
		adminSession.delete("admin.partnerDelete", partnerId);
	}
	
	@Override
	public void communityDelete(int index) {
		adminSession.delete("admin.communityDelete", index);
		
	}
	
	@Override
	public void qnaDelete(int Q_idx) {
		adminSession.delete("admin.qnaDelete", Q_idx);
	}
	
	@Override
	public void replyDelete(int reply_index) {
		adminSession.delete("admin.replyDelete", reply_index);
	}

	
}