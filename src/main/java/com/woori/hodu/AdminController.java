package com.woori.hodu;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.woori.domain.AdminCriteria;
import com.woori.domain.AdminPageMakerVO;
import com.woori.domain.CCriteria;
import com.woori.domain.CPageMakerVO;
import com.woori.domain.CommunityVO;
import com.woori.domain.Criteria;
import com.woori.domain.PageMakerVO;
import com.woori.domain.PartnerVO;
import com.woori.domain.QnaVO;
import com.woori.domain.ReplyVO;
import com.woori.domain.UserVO;
import com.woori.service.AdminServiceImpl;
import com.woori.service.PartnerJoinService;
import com.woori.service.PartnerJoinServiceImpl;
import com.woori.service.PensionServiceImpl;
import com.woori.service.UserJoinServiceImpl;

@Controller
public class AdminController {
	
	@Inject
	AdminServiceImpl adminService;
	
	@Inject
	PensionServiceImpl pensionService;
	
	@Inject
	UserJoinServiceImpl userJoinService;
	@Inject
	PartnerJoinServiceImpl partnerJoinService;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminHome(Locale locale, Model model) {

		
		return "/admin/admin";
	}
	
	@RequestMapping("admin/userList.do")
	public String userList (AdminCriteria cri, Model model) {
		
		List<UserVO> userList = adminService.userList(cri);
		model.addAttribute("userList", userList);
		
		int total = adminService.getTotal(cri);
		AdminPageMakerVO pageMaker = new AdminPageMakerVO(cri, total);
		model.addAttribute("pageMaker", pageMaker);

		return "/admin/userList";
	}
	
	
	
	@RequestMapping("admin/userDelete.do")
	public String userDelete(@RequestParam("userId") String userId) {
		adminService.userDelete(userId);
		return "redirect: /admin/userList.do";
	}
	
	
	
	@RequestMapping("admin/partnerList.do")
	public String partnerList (AdminCriteria cri, Model model) {
		
		List<PartnerVO> partnerList = adminService.partnerList(cri);
		model.addAttribute("partnerList", partnerList);
		
		int total = adminService.pGetTotal(cri);
		AdminPageMakerVO pageMaker = new AdminPageMakerVO(cri, total);
		model.addAttribute("pageMaker", pageMaker);

		return "/admin/partnerList";
	}
	
	
	
	@RequestMapping("admin/partnerDelete.do")
	public String partnerDelete(@RequestParam("partnerId") String partnerId) {
		adminService.userDelete(partnerId);
		return "redirect: /admin/partnerList.do";
	}
	
	
	//커뮤니티 리스트 출력
	@RequestMapping("admin/adminCList.do")
	public String adminCList(CCriteria cri, Model model){
		
		List<CommunityVO> CList = pensionService.CList(cri);
		List<String> reply = new ArrayList<String>(Arrays.asList());
		for(int i =0; i<CList.size();i++) {
			reply.add(i, pensionService.ReplyTotal(CList.get(i).getIndex()));
		}
		model.addAttribute("CList",CList);
		model.addAttribute("Reply", reply);
		
		int total = pensionService.AgetCTotal(cri);
		
		CPageMakerVO cPageMaker = new CPageMakerVO(cri, total);

		model.addAttribute("cPageMaker", cPageMaker);
		
		return "/admin/community";
	}
	
	@RequestMapping("admin/communityDelete.do")
	public String communityDelete(@RequestParam("index") int index) {
		adminService.communityDelete(index);
		return "redirect: /admin/adminCList.do?pageNum=1&amount=10";
	}
	
	

	@RequestMapping("admin/adminQList.do")
	public String adminQList(Criteria cri, Model qmodel) {

		List<QnaVO> QList = userJoinService.QList(cri);
		qmodel.addAttribute("QList",QList);
		
		int total = userJoinService.getTotal(cri);
		
		PageMakerVO pageMaker = new PageMakerVO(cri, total);
		
		qmodel.addAttribute("pageMaker", pageMaker);
		
		return "admin/qna_list";
	}	
	
	//Q 삭제
	@RequestMapping("admin/qnaDelete.do")
	public String qnaDelete(@RequestParam("Q_idx") int Q_idx) {
		adminService.qnaDelete(Q_idx);
		return "redirect: /admin/adminQList.do?pageNum=1&amount=10";
	}
	
	// 어드민 커뮤니티 컨텐츠
	@RequestMapping("admin/adminCView.do")
	public String adminCView(int index, Model model, ReplyVO vo, RedirectAttributes redirect) {
		List<ReplyVO> ReplyList = pensionService.ReplyList(vo);
		model.addAttribute("ReplyList",ReplyList);
		redirect.addAttribute("index", index);
		model.addAttribute("CView", pensionService.CView(index));

		return "admin/community_content";
	}
	
	//커뮤니티 삭제
	@RequestMapping("admin/adminCDelete.do")
	public String adminCDelete(@RequestParam("index") int index, RedirectAttributes redirect) {
		pensionService.CDelete(index);
		redirect.addFlashAttribute("result", "delete success");
		return "redirect: /admin/adminCList.do?pageNum=1&amount=10";
	}
	
	// 댓글 삭제
	@RequestMapping("admin/adminReplyDelete.do")
	public String adminReplyDelete(@RequestParam("reply_index") int reply_index, RedirectAttributes redirect, int index) {
		adminService.replyDelete(reply_index);
		redirect.addAttribute("index", index);
		return "redirect: /admin/adminCView.do";
	}
	@RequestMapping("admin/logout.do")
	public ModelAndView logout(HttpSession session) {
		userJoinService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		mav.addObject("msg", "logout");
		return mav;
	}
	@RequestMapping("admin/plogout.do")
	public ModelAndView plogout(HttpSession psession) {
		partnerJoinService.plogout(psession);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		mav.addObject("msg", "logout");
		return mav;
	}
	
	
}
