package com.woori.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.woori.domain.PCriteria;
import com.woori.domain.PartnerVO;
import com.woori.domain.PensionVO;
import com.woori.domain.QnaVO;
import com.woori.domain.ReservationVO;
import com.woori.domain.RoomVO;

public interface PartnerJoinService {
	
	//로그인
	public PartnerVO plogincheck(PartnerVO pvo, HttpSession psession);
	//펜션 네임 가져오기
	public String sessionPensionName(String partnerId);
	public void plogout(HttpSession psession);
	
	
	public void insertParnter(PartnerVO pvo);
	public PartnerVO viewPProfile(String partnerId);
	public void editPProfile(PartnerVO pvo);
	public void uploadImg(PartnerVO pvo);
	
	// 아이디 중복체크
	public int pidCheck(PartnerVO pvo);
	public void deletePProfile(String partnerId, HttpSession psession);
	
	
	//예약 리스트 출력
	public List<ReservationVO> RList(ReservationVO rvo);
	public ReservationVO RView(int reservation_idx);
	
	//예약 삭제
	public void RDelete(int reservation_idx);
	//예약 수정
	public ReservationVO RView2(int reservation_idx);
	public void RUpdate(ReservationVO rvo);
	
	//A 리스트 출력
	public List<QnaVO> AList(PCriteria Pcri);
	public int AgetTotal(PCriteria Pcri);
	
	//A 확인
	public QnaVO AView(int Q_idx, HttpSession psession);
	
	//A 등록
	public void ARegister(QnaVO vo);
	
	//MyPension 출력
	public PensionVO MyPension(PensionVO vo, HttpSession session);
	//MyRoom 출력
	public List<RoomVO> ViewMyRoom(RoomVO vo, HttpSession session);
	//MyRoom 상세보기
	public RoomVO ViewMyRoom2(RoomVO vo);
	//MyRoom 수정 상세보기
	public RoomVO ViewRoomInfo(RoomVO vo);
	//MyRoom 수정
	public void roomUpdate(RoomVO vo);
	//MyPension 출력
	public PensionVO ViewPension(PensionVO vo, HttpSession session);
	//MyPension 수정
	public void pensionUpdate(PensionVO vo);
	
	
}
