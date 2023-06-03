package com.woori.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.woori.dao.AdminDAOImpl;
import com.woori.domain.AdminCriteria;
import com.woori.domain.PartnerVO;
import com.woori.domain.UserVO;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	AdminDAOImpl adminDao;
	
	@Override
	public List<UserVO> userList(AdminCriteria cri) {
		return adminDao.userList(cri);
	}
	
	@Override
	public int getTotal(AdminCriteria cri) {
		return adminDao.getTotal(cri);
	}
	
	@Override
	public void userDelete(String userId) {
		adminDao.userDelete(userId);	
	}
	
	
	@Override
	public List<PartnerVO> partnerList(AdminCriteria cri) {
		return adminDao.partnerList(cri);
	}
	
	@Override
	public int pGetTotal(AdminCriteria cri) {
		return adminDao.pGetTotal(cri);
	}
	
	@Override
	public void partnerDelete(String partnerId) {
		adminDao.partnerDelete(partnerId);	
	}

	@Override
	public void communityDelete(int index) {
		adminDao.communityDelete(index);
	}
	
	@Override
	public void qnaDelete(int Q_idx) {
		adminDao.qnaDelete(Q_idx);
	}
	
	@Override
	public void replyDelete(int reply_index) {
		adminDao.replyDelete(reply_index);	
	}


}
