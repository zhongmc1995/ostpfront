package com.peace.ostp.controller;


import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.peace.ostp.security.UserInfo;
import com.peace.ostp.service.IUser;

@SuppressWarnings("deprecation")
@Controller
public class BaseController {


	@Autowired
	private IUser userService;

	/**
	 * 前台网站首页
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homePage(Model model, HttpServletRequest request) {
		
		return "index";
	}*/
	
	
	/**
	 *登录后的页面
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = { "home" }, method = RequestMethod.GET)
	public String directToExamHomePage(Model model, HttpServletRequest request) {
		String result = request.getParameter("result");
		HttpSession session = request.getSession();
		String home = "1".equals((String) session.getAttribute("isphone")) ? "phone-home" : "home";
		if ("failed".equals(result)) {
			model.addAttribute("result_msg", "登录失败");
		}

		if (SecurityContextHolder.getContext().getAuthentication() == null) {
			this.appendBaseInfo(model);
			return home;
		}
		if (SecurityContextHolder.getContext().getAuthentication().getPrincipal().toString().endsWith("anonymousUser")) {
			this.appendBaseInfo(model);
			return home;
		}
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		Collection<? extends GrantedAuthority> grantedAuthorities = userDetails.getAuthorities();

		if (grantedAuthorities.contains(new GrantedAuthorityImpl("ROLE_"))) {
			return "redirect:admin/home";
		}else {
			return home;
		}
	}
	
	@RequestMapping(value = { "/admin/home" }, method = RequestMethod.GET)
	public String adminHomePage(Model model, HttpServletRequest request) {

		// return "redirect:/admin/question-list";
		return "redirect:/admin/apply-list";
	}
	
	
	public void appendBaseInfo(Model model) {
		UserInfo userInfo = (UserInfo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println(userInfo.getUserName());
	}
	
	
	public static void main(String[] args) {
		byte a = 127,b = 1;
		byte c = (byte) (a + b);
		System.out.println(c);
		
	}
}
