package com.woori.dao;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.woori.domain.Criteria;
import com.woori.domain.QnaVO;
import com.woori.domain.ReservationVO;
import com.woori.domain.ReviewVO;
import com.woori.domain.UserVO;

@Repository
public class UserJoinDAOImpl implements UserJoinDAO {
	
	@Inject
	SqlSession sqlSession;
	
	//로그인
	@Override
	public UserVO logincheck(UserVO vo) {
		return  sqlSession.selectOne("user.login", vo);	
	};
	

	@Override
	public void logout(HttpSession session) {
		
	};
	
	@Override
	public void insertUser(UserVO vo) {
		sqlSession.insert("user.insertUser", vo); // 여기서 user는 mapper의 네임스페이스
	}
	
	@Override
	public UserVO viewProfile(String userId) {
		return sqlSession.selectOne("user.viewProfile", userId);
	}
	
	@Override
	public void editProfile(UserVO vo) {
		sqlSession.update("user.editProfile", vo);
	}
	
	// 아이디 중복체크
	@Override
	public int idCheck(UserVO vo) {
		int result = sqlSession.selectOne("user.idCheck", vo);
		return result;
	}
	
	@Override
	public void deleteProfile(String userId) {
		sqlSession.delete("user.deleteProfile", userId);
	}
	
	//Q 리스트 출력
	@Override
	public List<QnaVO> QList(Criteria cri){
		return sqlSession.selectList("user.question", cri);
		
	}
	
	//Q 게시판 개수
	@Override
	public int getTotal(Criteria cri) {
		return sqlSession.selectOne("user.getTotal");
	}
	
	//Q 비밀번호
	@Override
	public QnaVO Q_pwCheck(QnaVO qvo) {
		return sqlSession.selectOne("user.Q_pwCheck", qvo);
	}
	
	//Q 글쓰기
	@Override
	public void Q_insert(QnaVO qvo) {
		sqlSession.insert("user.Q_insert", qvo);
	}
	//Q 확인
	@Override
	public QnaVO QView(int Q_idx) {
		return sqlSession.selectOne("user.QView", Q_idx);
	}
	
	//Q 삭제
	@Override
	public void QDelete(int Q_idx) {
		sqlSession.delete("user.QDelete", Q_idx);
	}
	
	
	//리뷰 작성
	@Override
	public void ReviewInsert(ReviewVO rvo) {
		sqlSession.insert("user.ReviewInsert", rvo);
	}
	
	//R 리스트 출력
	@Override
	public List<ReviewVO> ReviewList(ReviewVO rvo){
		return sqlSession.selectList("user.ReviewList", rvo);
	}

	
	//나의 예약 목록 출력
	@Override
	public List<ReservationVO> ReservationList(ReservationVO rvo){
		return sqlSession.selectList("user.ReservationList", rvo);
	}
	@Override
	public ReservationVO UserRView(int reservation_idx) {
		return sqlSession.selectOne("user.UserRView", reservation_idx);
	}
	@Override
	public void UserRUpdate(ReservationVO rvo) {
		sqlSession.update("user.UserRUpdate", rvo);
	}
	
	@Override
	public void deleteReservation(int reservation_idx) {
		sqlSession.delete("user.deleteReservation", reservation_idx);
	}
	//예약하기
	@Override
	public void RInsert(ReservationVO rvo) {
		sqlSession.insert("user.RInsert", rvo);
	}
}
