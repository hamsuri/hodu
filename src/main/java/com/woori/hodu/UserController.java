package com.woori.hodu;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.woori.domain.CommunityVO;

@Controller
public class UserController {

	@RequestMapping("user/reservation")
	public String reservation() {

		
		return "user/reservation";
	}

	@RequestMapping("user/review")
	public String review() {

		
		return "user/review";
	}
	
	@RequestMapping("user/review_list")
	public String reviewList() {
		return "user/review_list";
	}
	
	@RequestMapping("user/qna_list")
	public String qna_list() {

		
		return "user/qna_list";
	}
	
	@RequestMapping("qna_form")
	public String qna_form() {

		
		return "user/qna_form";
	}
	
	
	@RequestMapping("user/mypage")
	public String mypage() {

		
		return "user/mypage/mypage";
	}
	
	@RequestMapping("user/mypage/reservationList")
	public String my_reservationList() {
		
		return "user/mypage/reservationList";
	}
	@RequestMapping("user/mypage/reservationContent_update")
	public String my_reservationListContent_update() {
		
		return "user/mypage/reservationContent_update";
	}
	
	
	@RequestMapping("user/mypage/editProfile")
	public String my_editProfile() {
		
		return "user/mypage/editProfile";
	}
	
	@RequestMapping("user/list_map")
	public String list_map() {

		
		return "user/list_map";
	}
	@RequestMapping("user/list_pension")
	public String list_pension() {

		
		return "user/list_pension";
	}
	
	@RequestMapping("user/q_content")
	public String q_content() {

		
		return "user/q_content";
	}
	
	
}
