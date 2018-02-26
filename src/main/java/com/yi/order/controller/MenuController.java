package com.yi.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yi.order.bean.ResponseResult;

@Controller
@RequestMapping("/menu")
public class MenuController {

	//跳转到菜单页面
	@RequestMapping("/menu.do")
	public String showMenu() {
		return "menu";
	}
	
	@RequestMapping("/addMenu.do")
	@ResponseBody
	public ResponseResult<Void> addMenu(){
		ResponseResult<Void> rr = new ResponseResult<Void>();
		
		
		
		return rr;
	}
	
}
