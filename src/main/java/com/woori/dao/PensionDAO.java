package com.woori.dao;

import java.util.List;

import com.woori.domain.CCriteria;
import com.woori.domain.CMyCriteria;
import com.woori.domain.CommunityVO;
import com.woori.domain.PCriteria;
import com.woori.domain.PensionVO;
import com.woori.domain.ReplyVO;
import com.woori.domain.ReviewVO;
import com.woori.domain.RoomVO;

public interface PensionDAO {

	public List<PensionVO> likeList(PensionVO vo);
	public List<PensionVO> moneyList(PensionVO vo);
	public String rating(String pensionName);
	public String price(String pensionName);
	public void roomRegister(RoomVO vo);
	
	//room 목록 보기
	public List<RoomVO> RoomList(RoomVO vo);
	//펜션 등록하기
	public void pensionRegister(PensionVO vo);
	
	//커뮤니티 리스트 출력
	public List<CommunityVO> CList(CCriteria cri);
	public CommunityVO CView(int index);
	
	//커뮤니티 마이포스트 출력
	public List<CommunityVO> CMyList(CMyCriteria cri);
	public int MygetCTotal(CMyCriteria cri);
	
	public int AgetCTotal(CCriteria cri);
	//댓글 개수
	public String ReplyTotal(int index);
	//커뮤니티 입력
	public void CInsert(CommunityVO vo);
	//커뮤니티 수정
	public void CUpdate(CommunityVO vo);
	public CommunityVO CView2(int index);
	//커뮤니티 삭제
	public void CDelete(int index);
	//댓글 입력 및 출력
	public void ReplyInsert(ReplyVO vo);
	public List<ReplyVO> ReplyList(ReplyVO vo);
	//댓글 수정
	public void ReplyUpdate (ReplyVO vo);
	//댓글 삭제
	public void ReplyDelete (int reply_index);
	//펜션 이름 출력
	public List<PensionVO> NameSelect(PensionVO vo);
	//객실 이름 출력
	public List<RoomVO> RoomSelect(String pensionName);
}
