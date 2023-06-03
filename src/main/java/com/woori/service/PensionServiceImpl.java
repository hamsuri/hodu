package com.woori.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.woori.dao.PensionDAO;
import com.woori.domain.CCriteria;
import com.woori.domain.CMyCriteria;
import com.woori.domain.CommunityVO;
import com.woori.domain.PCriteria;
import com.woori.domain.PensionVO;
import com.woori.domain.ReplyVO;
import com.woori.domain.ReviewVO;
import com.woori.domain.RoomVO;

@Service
public class PensionServiceImpl implements PensionService {
	
	@Inject
	PensionDAO pensionDao;
	
	@Override
	public List<PensionVO> likeList(PensionVO vo) {
		// TODO Auto-generated method stub
		return pensionDao.likeList(vo);
	}

	@Override
	public List<PensionVO> moneyList(PensionVO vo) {
		// TODO Auto-generated method stub
		return pensionDao.moneyList(vo);
	}
	@Override
	public String rating(String pensionName){
		return pensionDao.rating(pensionName);
	}
	@Override
	public String price(String pensionName) {
		return pensionDao.price(pensionName);
	}
	
	@Override
	public void roomRegister(RoomVO vo) {
		pensionDao.roomRegister(vo);
		
	}
	
	//room 목록 보기
	@Override
	public List<RoomVO> RoomList(RoomVO vo){
		return pensionDao.RoomList(vo);
	}
	
	//펜션 등록하기
	@Override
	public void pensionRegister(PensionVO vo) {
		pensionDao.pensionRegister(vo);
	}
	
	//커뮤니티 리스트 출력
	@Override
	public List<CommunityVO> CList(CCriteria cri){
		return pensionDao.CList(cri);
	}
	@Override
	public int AgetCTotal(CCriteria cri) {
		return pensionDao.AgetCTotal(cri);
	}
	
	@Override
	public List<CommunityVO> CMyList(CMyCriteria cri) {
		return pensionDao.CMyList(cri);
	}
	@Override
	public int MygetCTotal(CMyCriteria cri) {
		return pensionDao.MygetCTotal(cri);
	}
	//댓글 개수
	@Override
	public String ReplyTotal(int index) {
		return pensionDao.ReplyTotal(index);
	}
	@Override
	public CommunityVO CView(int index) {
		return pensionDao.CView(index);
	}
	//커뮤니티 입력
	@Override
	public void CInsert(CommunityVO vo) {
		pensionDao.CInsert(vo);
	}
	//커뮤니티 수정
	public void CUpdate(CommunityVO vo) {
		pensionDao.CUpdate(vo);
	}
	@Override
	public CommunityVO CView2(int index) {
		return pensionDao.CView(index);
	}
	
	//커뮤니티 삭제
	@Override
	public void CDelete(int index) {
		pensionDao.CDelete(index);
	}
	
	
	//댓글 입력 및 출력
	@Override
	public void ReplyInsert(ReplyVO vo) {
		pensionDao.ReplyInsert(vo);
	}
	@Override
	public List<ReplyVO> ReplyList(ReplyVO vo){
		return pensionDao.ReplyList(vo);
	}
	//댓글 수정
	@Override
	public void ReplyUpdate (ReplyVO vo) {
		pensionDao.ReplyUpdate(vo);
	}
	//댓글 삭제
	@Override
	public void ReplyDelete (int reply_index) {
		pensionDao.ReplyDelete(reply_index);
	}
	//펜션 이름 출력
	@Override
	public List<PensionVO> NameSelect(PensionVO vo){
		return pensionDao.NameSelect(vo);
	}
	//객실 이름 출력
	public List<RoomVO> RoomSelect(String pensionName){
		return pensionDao.RoomSelect(pensionName);
	}
}
