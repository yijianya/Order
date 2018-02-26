package com.yi.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	//跳转到登录页面
		@RequestMapping("/login.do")
		public String showLogin() {
			return "login";
		}
		
		//跳转到首页
		@RequestMapping("/index.do")
		public String showIndex() {
			return "index";
		}
}
