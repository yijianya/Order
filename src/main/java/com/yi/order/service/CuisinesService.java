package com.yi.order.service;

import java.util.List;

import com.yi.order.bean.Cuisines;

public interface CuisinesService {

	/**
	 * 添加菜系
	 * @param name	菜系名称
	 */
	void addCuisines(String name);
	
	/**
	 * 获取所有的菜系
	 * @return
	 */
	List<Cuisines> getCuisines();
	
	/**
	 * 根据菜系id来删除菜系
	 * @param id 菜系的id
	 */
	void deleteCuisines(Integer id);
}
