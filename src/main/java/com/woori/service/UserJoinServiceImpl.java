package com.woori.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.woori.dao.UserJoinDAOImpl;
import com.woori.domain.Criteria;
import com.woori.domain.QnaVO;
import com.woori.domain.ReservationVO;
import com.woori.domain.ReviewVO;
import com.woori.domain.UserVO;

@Service
public class UserJoinServiceImpl implements UserJoinService {

	@Inject
	UserJoinDAOImpl userJoin;
	
	//로그인
	@Override
	public UserVO logincheck(UserVO vo, HttpSession session) {
		// TODO Auto-generated method stub

		session.setAttribute("userId", vo.getUserId());
		return userJoin.logincheck(vo);
	}



	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		session.invalidate();

	}
	
	@Override
	public void insertUser(UserVO vo) {
		userJoin.insertUser(vo);
	}
	@Override
	public UserVO viewProfile(String userId) {
		return userJoin.viewProfile(userId);
	}
	@Override
	public void editProfile(UserVO vo) {
		
		userJoin.editProfile(vo);
	}
	
	// 아이디 중복체크
	@Override
	public int idCheck(UserVO vo) {
		int result = userJoin.idCheck(vo);
		return result;
	}
	
	@Override
	public void deleteProfile(String userId, HttpSession session) {
		userJoin.deleteProfile(userId);
		session.invalidate();
	}

	//Q 리스트 출력
	@Override
	public List<QnaVO> QList(Criteria cri) {
		return userJoin.QList(cri);
	}
	
	//Q 게시판 개수
	@Override
	public int getTotal(Criteria cri) {
		return userJoin.getTotal(cri);
	}
	//Q 비밀번호
	@Override
	public QnaVO Q_pwCheck(QnaVO qvo, HttpSession qsession) {
			
			qsession.setAttribute("Q_idx", qvo.getQ_idx());
			return userJoin.Q_pwCheck(qvo);
	}
	//Q 글쓰기
	@Override
	public void Q_insert(QnaVO qvo) {
		userJoin.Q_insert(qvo);
	}
	
	//Q 확인
	@Override
	public QnaVO QView(int Q_idx, HttpSession qsession) {
		qsession.setAttribute("Q_idx", Q_idx);
		return userJoin.QView(Q_idx);
	}
	//Q 삭제
	@Override
	public void QDelete(int Q_idx) {
		userJoin.QDelete(Q_idx);
	}
	
	//리뷰 작성
	@Override
	public void ReviewInsert(ReviewVO rvo) {
		userJoin.ReviewInsert(rvo);
	}
	//R 리스트 출력
	@Override
	public List<ReviewVO> ReviewList(ReviewVO rvo){
		return userJoin.ReviewList(rvo);
	}
	
	
	//나의 예약 목록 출력
	@Override
	public List<ReservationVO> ReservationList(ReservationVO rvo){
		return userJoin.ReservationList(rvo);
	}
	@Override
	public ReservationVO UserRView(int reservation_idx) {
		return userJoin.UserRView(reservation_idx);
	}
	@Override
	public void UserRUpdate(ReservationVO rvo) {
		userJoin.UserRUpdate(rvo);
	}
	@Override
	public void DeleteReservation(int reservation_idx) {
		userJoin.deleteReservation(reservation_idx);
	}
	
	//예약하기
	@Override
	public void RInsert(ReservationVO rvo) {
		userJoin.RInsert(rvo);
	}
}
