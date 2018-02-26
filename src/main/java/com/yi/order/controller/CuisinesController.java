package com.yi.order.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yi.order.bean.Cuisines;
import com.yi.order.bean.ResponseResult;
import com.yi.order.service.CuisinesService;

@Controller
@RequestMapping("/cuisines")
public class CuisinesController {
	@Resource
	private CuisinesService cuisinesService;
	
	//跳转到菜系
	@RequestMapping("/cuisines.do")
	public String showCuisines() {
		return "cuisines";
	}
	
	//添加菜系信息
	@RequestMapping("/addCuisines.do")
	@ResponseBody
	public ResponseResult<Void> addCuisines(String name){
		ResponseResult<Void> rr = new ResponseResult<Void>();
		if(name.trim().isEmpty()!=true) {
			cuisinesService.addCuisines(name);
			rr.setState(ResponseResult.STATE_OK);
			rr.setMessage("添加成功");
		}else {
			rr.setState(ResponseResult.STATE_ERROR);
			rr.setMessage("菜系不能为空");
		}
		
		return rr;
	}
	
	//获取所有的菜系列表
	@RequestMapping("/cuisinesList.do")
	@ResponseBody
	public ResponseResult<List<Cuisines>> cuisinesList() {
		ResponseResult<List<Cuisines>> rr = new ResponseResult<List<Cuisines>>();
		rr.setState(ResponseResult.STATE_OK);
		rr.setMessage("获取成功");
		rr.setData(cuisinesService.getCuisines());
		return rr;
	}
	
	//删除菜系
	@RequestMapping("deleteCuisines.do")
	@ResponseBody
	public ResponseResult<Void> deleteCuisines(Integer id){
		ResponseResult<Void> rr = new ResponseResult<Void>();
		cuisinesService.deleteCuisines(id);
		rr.setState(ResponseResult.STATE_OK);
		rr.setMessage("删除成功");
		return rr;
		
	}
	
}
