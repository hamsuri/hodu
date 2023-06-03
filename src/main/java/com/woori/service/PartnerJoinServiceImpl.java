package com.woori.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.woori.dao.PartnerJoinDAOImpl;
import com.woori.domain.PCriteria;

import com.woori.domain.PartnerVO;
import com.woori.domain.PensionVO;
import com.woori.domain.QnaVO;
import com.woori.domain.ReservationVO;
import com.woori.domain.RoomVO;

@Service
public class PartnerJoinServiceImpl implements PartnerJoinService {

	@Inject
	PartnerJoinDAOImpl partnerJoin;
	
	//로그인
	@Override
	public PartnerVO plogincheck(PartnerVO pvo, HttpSession psession) {
		// TODO Auto-generated method stub

		psession.setAttribute("partnerId", pvo.getPartnerId());
		return partnerJoin.plogincheck(pvo);
	}
	//펜션 네임 가져오기
	public String sessionPensionName(String partnerId) {
	
		return partnerJoin.sessionPensionName(partnerId);
	}



	@Override
	public void plogout(HttpSession psession) {
		// TODO Auto-generated method stub
		psession.invalidate();

	}
	
	@Override
	public void insertParnter(PartnerVO pvo) {
		partnerJoin.insertPartner(pvo);
		
	}
	@Override
	public PartnerVO viewPProfile(String partnerId) {
		return partnerJoin.viewPProfile(partnerId);
	}
	@Override
	public void editPProfile(PartnerVO pvo) {
		partnerJoin.editPProfile(pvo);
	}
	@Override
	public void uploadImg(PartnerVO pvo) {
		partnerJoin.uploadImg(pvo);	
	}
	
	// 아이디 중복체크
	@Override
	public int pidCheck(PartnerVO pvo) {
		int result = partnerJoin.pidCheck(pvo);
		return result;
	}
	
	@Override
	public void deletePProfile(String partnerId, HttpSession psession) {
		partnerJoin.deletePProfile(partnerId);
		psession.invalidate();
	}
	
	
	
	
	//예약 리스트 출력
	@Override
	public List<ReservationVO> RList(ReservationVO rvo){
		return partnerJoin.RList(rvo);
	}
	@Override
	public ReservationVO RView(int reservation_idx) {
		return partnerJoin.RView(reservation_idx);
	}
	
	//예약 삭제
	@Override
	public void RDelete(int reservation_idx) {
		partnerJoin.RDelete(reservation_idx);
	}
	
	//예약 수정
	@Override
	public ReservationVO RView2(int reservation_idx) {
		return partnerJoin.RView(reservation_idx);
	}
	
	@Override
	public void RUpdate(ReservationVO rvo) {
		partnerJoin.RUpdate(rvo);
	}
	
	//A 리스트 출력
	@Override
	public List<QnaVO> AList(PCriteria Pcri) {
		// TODO Auto-generated method stub
		return partnerJoin.AList(Pcri);
	}
	
	//A 게시판 개수
	@Override
	public int AgetTotal(PCriteria Pcri) {
		return partnerJoin.AgetTotal(Pcri);
	}
	//A 확인
	@Override
	public QnaVO AView(int Q_idx, HttpSession qsession) {
		qsession.setAttribute("Q_idx", Q_idx);
		return partnerJoin.AView(Q_idx);
	}
	//A 등록
	@Override
	public void ARegister(QnaVO vo) {
		partnerJoin.ARegister(vo);
	}
	//MyPension 출력
	@Override
	public PensionVO MyPension(PensionVO vo, HttpSession session) {
		session.getAttribute("partnerId");
		return partnerJoin.MyPension(vo);
	}
	
	//MyRoom 출력
	@Override
	public List<RoomVO> ViewMyRoom(RoomVO vo, HttpSession session){
		session.getAttribute("partnerId");
		return partnerJoin.ViewMyRoom(vo);
	}
	//MyRoom 상세보기
	@Override
	public RoomVO ViewMyRoom2(RoomVO vo) {
		return partnerJoin.ViewMyRoom2(vo);				
	}
	//MyRoom 수정 상세보기
	@Override
	public RoomVO ViewRoomInfo(RoomVO vo) {
		return partnerJoin.ViewRoomInfo(vo);
	}
	//MyRoom 수정
	@Override
	public void roomUpdate(RoomVO vo) {
		partnerJoin.roomUpdate(vo);
	}
	//MyPension 출력
	@Override
	public PensionVO ViewPension(PensionVO vo, HttpSession session) {
		session.getAttribute("partnerId");
		return partnerJoin.MyPension(vo);
	}
	//MyPension 수정
	@Override
	public void pensionUpdate(PensionVO vo) {
		partnerJoin.pensionUpdate(vo);
	}
}
