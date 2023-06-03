package com.woori.hodu;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.woori.domain.PensionVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CommonController {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		
		return "index";
	}
	
	@RequestMapping(value = "/p", method = RequestMethod.GET)
	public String phome(Locale locale, Model model) {

		
		return "pindex";
	}
	
	@RequestMapping("community")
	public String community() {

		
		return "community";
	}
	
	@RequestMapping("community_content")
	public String community_content() {

		
		return "community_content";
	}
	@RequestMapping("community_form")
	public String community_form() {

		
		return "community_form";
	}
	

	
	@RequestMapping("login")
	public String login() {

		
		return "login";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	@RequestMapping("signin")
	public String signin() {

		
		return "signin";
	}
	
	

	
	
}
