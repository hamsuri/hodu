package com.woori.hodu;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.woori.AWS.AWSS3Service;
import com.woori.domain.PCriteria;
import com.woori.domain.PPageMakerVO;
import com.woori.domain.PartnerVO;
import com.woori.domain.PensionVO;
import com.woori.domain.QnaVO;
import com.woori.domain.ReservationVO;
import com.woori.domain.RoomVO;
import com.woori.service.PartnerJoinServiceImpl;

@Controller
public class PartnerJoinController {

		private static final Logger logger = LoggerFactory.getLogger(PartnerJoinController.class);
		
		@Inject
		PartnerJoinServiceImpl partnerJoinService;
		
		@Inject
		BCryptPasswordEncoder pwdEncoder;
		
		//로그인
		@RequestMapping("plogin.do")
		public String plogin() {
			return "login";
		}
		//JYS
		@RequestMapping("plogincheck.do")
		public ModelAndView plogincheck(@ModelAttribute PartnerVO pvo, HttpSession psession, RedirectAttributes redirect) {
			PartnerVO presult = partnerJoinService.plogincheck(pvo, psession);
			ModelAndView mav = new ModelAndView();
			if(presult != null) {
				boolean PpwdMatch = pwdEncoder.matches(pvo.getPartnerPw(), presult.getPartnerPw());
				if(PpwdMatch == true){//로그인 성공
					if(presult.getPartnerId().equals("admin")) {
						mav.setViewName("/admin/admin");
						return mav;
					}
					else if(partnerJoinService.sessionPensionName(pvo.getPartnerId()) != null) {
						mav.addObject("pensionName", partnerJoinService.sessionPensionName(pvo.getPartnerId()));
						psession.setAttribute("partnerId", pvo.getPartnerId());
						psession.setAttribute("pensionName", partnerJoinService.sessionPensionName(pvo.getPartnerId()));
						mav.setViewName("pindex");	
						mav.addObject("pmsg", "sucess");
					} else {	
						psession.setAttribute("partnerId", pvo.getPartnerId());
						mav.setViewName("pindex");	
						mav.addObject("pmsg", "sucess");
					}
				
				} else { //로그인 실패
				mav.setViewName("login");
				mav.addObject("pmsg", "fail");	
				psession.invalidate();
				}
				}else { //로그인 실패
				mav.setViewName("login");
				mav.addObject("pmsg", "fail");	
				psession.invalidate();
				}
			return mav;
		}
		
		@RequestMapping("plogout.do")
		public ModelAndView plogout(HttpSession psession) {
			partnerJoinService.plogout(psession);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("pindex");
			mav.addObject("msg", "logout");
			return mav;
		}
		
		@RequestMapping(value="psignin.do", method=RequestMethod.GET)  //get으로 접근
		public String PartnerJoin(PartnerVO pvo) {
			
			
			return "redirect:/";  // user/list
		}
		
		
		
		// 회원가입 post
		//JYS
		@RequestMapping(value="psignin.do", method = RequestMethod.POST)
		public String partnerJoin2(PartnerVO pvo, HttpServletResponse response) throws Exception {
			int result = partnerJoinService.pidCheck(pvo);
			if(result == 1) {
				response.setContentType("text/html; charset=UTF-8");
	            PrintWriter out = response.getWriter();
	            out.println("<script>alert('중복된 아이디입니다.'); location.href='/';</script>");
	            out.flush(); 
				return "/signin";
			} else if(result == 0) {
				String inputPw = pvo.getPartnerPw();
				String pwd = pwdEncoder.encode(inputPw);
				pvo.setPartnerPw(pwd);
				partnerJoinService.insertParnter(pvo);
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('회원가입이 완료되었습니다.'); location.href='/';</script>");
				out.flush();
			}
			
			return "redirect:/";
		}
		//JYS
		@RequestMapping("viewPProfile.do")
		public String viewPProfile(String partnerId, Model pmodel) {
			pmodel.addAttribute("partner", partnerJoinService.viewPProfile(partnerId));
			
			return "partner/myPpage/editPProfile";
		}
		//JYS
		@RequestMapping("editPProfile.do")
		public String editPProfile(@ModelAttribute PartnerVO pvo) {
			String inputPass = pvo.getPartnerPw();
			String pwd = pwdEncoder.encode(inputPass);
			pvo.setPartnerPw(pwd);
			partnerJoinService.editPProfile(pvo);
			
			return "partner/myPpage/myPpage";
		}
		
		@Autowired
		private AWSS3Service s3Service;
		//JYS
		@PostMapping("uploadPProfile.do")
		public String fileUpload(@RequestParam("file") MultipartFile businessNum_img, @RequestParam("partnerId") String partnerId, RedirectAttributes redirect, HttpServletRequest req, @ModelAttribute PartnerVO pvo) throws Exception {
			
			
			
			String filename = "";
			String uuid= UUID.randomUUID().toString();
			
			
			if(!businessNum_img.isEmpty()) {
				filename = uuid+"_"+businessNum_img.getOriginalFilename();
				
				//String path = req.getSession().getServletContext().getRealPath("/").concat("resources");
				//String path = " https://s3.ap-northeast-2.amazonaws.com/hodu";
				//String imgUploadPath = path+File.separator;
				
				try {
					s3Service.uploadObject(businessNum_img, filename);
				} catch(Exception e) {
					e.printStackTrace();
				}
				
			}
			pvo.setImg_business(filename);
			partnerJoinService.uploadImg(pvo);
			redirect.addAttribute("partnerId", partnerId);
			return "redirect: viewPProfile.do";
		}
		
		// 아이디 중복 체크
		@ResponseBody
		@RequestMapping(value="/pidCheck", method = RequestMethod.POST)
		public int pidCheck(PartnerVO pvo) {
			int result = partnerJoinService.pidCheck(pvo);
			return result;
		}
		//JYS
		@RequestMapping("deletePProfile.do")
		public String deletePProfile(String partnerId, HttpSession psession) {
			partnerJoinService.deletePProfile(partnerId, psession);
			
			return "redirect:/";
		}
		//JYS
		@RequestMapping("RList.do")
		public String RList(ReservationVO rvo, Model rmodel) {
			
			List<ReservationVO> RList = partnerJoinService.RList(rvo);
			rmodel.addAttribute("RList",RList);
			
			return "partner/myPpage/PreservationList";
		}
		//JYS
		@RequestMapping("RView.do")
		public String RView(int reservation_idx, Model rmodel) {
			rmodel.addAttribute("RView", partnerJoinService.RView(reservation_idx));
			
			return "partner/myPpage/PreservationContent";
		}
		
		//예약 삭제
		//JYS	
		@RequestMapping("RDelete.do")
		public String RDelete(int reservation_idx, HttpSession rsession, RedirectAttributes redirect) {
			partnerJoinService.RDelete(reservation_idx);
			redirect.addAttribute("partnerId", rsession.getAttribute("partnerId"));
			return "redirect: RList.do";
		}
		
		//예약 수정
		//JYS
		@RequestMapping("RView2.do")
		public String RView2(int reservation_idx, Model rmodel) {
			rmodel.addAttribute("RView", partnerJoinService.RView(reservation_idx));
			
			return "partner/myPpage/PreservationContent_update";
		}
		
		//JYS
		@RequestMapping("RUpdate.do")
		public String RUpdate(@ModelAttribute ReservationVO rvo, @RequestParam("reservation_idx") int reservation_idx, RedirectAttributes redirect) {
			partnerJoinService.RUpdate(rvo);
			redirect.addAttribute("reservation_idx", reservation_idx);
			return "redirect: RView.do";
		}
		
		//JYS
		@RequestMapping("AList.do")
		public String QList(PCriteria Pcri, Model qmodel) {
	
			List<QnaVO> AList = partnerJoinService.AList(Pcri);
			qmodel.addAttribute("AList",AList);
			
			int total = partnerJoinService.AgetTotal(Pcri);
			
			PPageMakerVO pPageMaker = new PPageMakerVO(Pcri, total);

			qmodel.addAttribute("pPageMaker", pPageMaker);
			
			return "partner/qna";
		}
		
		//Q 확인
		//JYS
		@RequestMapping("AView.do")
		public String AView(int Q_idx,HttpSession qsession, Model qmodel) {
			qmodel.addAttribute("AView", partnerJoinService.AView(Q_idx,qsession));
					
			return "partner/p_q_content";
		}
		
		//A 등록
		//JYS
		@RequestMapping("Acomplete.do")
		public String Aregister(@ModelAttribute QnaVO vo,@RequestParam("Q_idx") int Q_idx, RedirectAttributes redirect) {
			partnerJoinService.ARegister(vo);
			redirect.addAttribute("Q_idx", Q_idx);
			return "redirect: AView.do";
		}
		
		//MyPension 출력
		//JYS
		@RequestMapping("MyPension.do")
		public String MyPension(PensionVO vo, Model model, HttpSession session) {
			model.addAttribute("myPension",partnerJoinService.MyPension(vo, session));
			return "partner/list_pension_info";
		}
		//MyRoom 출력
		//JYS
		@RequestMapping("ViewMyRoom.do")
		public String ViewMyRoom(RoomVO vo, Model model, HttpSession session) {
			
			List<RoomVO> ViewMyRoom = partnerJoinService.ViewMyRoom(vo, session);
			model.addAttribute("ViewMyRoom",ViewMyRoom);
			
			return "partner/view_my_room";
		}
		
		//MyRoom 상세보기
		//JYS
		@RequestMapping("ContentMyRoom.do")
		public String ViewMyRoom2(RoomVO vo, Model model) {
			model.addAttribute("ContentMyRoom", partnerJoinService.ViewMyRoom2(vo));
			return "partner/Content_My_Room";
		}
		//MyRoom 상세보기
		//JYS
		@RequestMapping("ViewRoomInfo.do")
		public String ViewRoomInfo(RoomVO vo, Model model) {
			model.addAttribute("ViewRoomInfo", partnerJoinService.ViewRoomInfo(vo));
			return "partner/roomUpdate";
		}
		//MyRoom 수정
		//JYS
		@RequestMapping("roomUpdate.do")
		public String roomUpdate(RoomVO vo, @RequestParam("room_idx") int room_idx, RedirectAttributes redirect) {
			partnerJoinService.roomUpdate(vo);
			redirect.addAttribute("room_idx", vo.getRoom_idx());
			return "redirect: ContentMyRoom.do";
		}
		//MyPension 출력
		//JYS
		@RequestMapping("ViewPension.do")
		public String ViewPension(PensionVO vo, HttpSession session, Model model) {
			model.addAttribute("pensionView", partnerJoinService.ViewPension(vo, session));
			return "partner/pensionUpdate";
		}
		//MyPension 수정
		//JYS
		@RequestMapping("pensionUpdate.do")
		public String pensionUpdate(PensionVO vo, HttpSession session, RedirectAttributes redirect) {
			partnerJoinService.pensionUpdate(vo);
			redirect.addAttribute("partnerId", session.getAttribute("partnerId"));
			return "redirect: MyPension.do";
		}
}





