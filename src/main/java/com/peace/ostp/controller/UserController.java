package com.peace.ostp.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserController {

	public static final String SUCCESS_MESSAGE = "success";
	public static final String ERROR_MESSAGE = "failed";



	@RequestMapping(value = { "/user-login-page" }, method = RequestMethod.GET)
	public String issloginPage(Model model,
			@RequestParam(value = "result", required = false, defaultValue = "") String result) {
		if ("failed".equals(result)) {
			model.addAttribute("result", "无效的用户名或者密码");
		}
		return "common/login";
	}

	
}
