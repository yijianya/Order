package com.yi.order.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yi.order.bean.Cuisines;
import com.yi.order.mapper.CuisinesMapper;

@Service("cuisinesService")
public class CuisinesServiceImpl implements CuisinesService {
	@Resource
	private CuisinesMapper cuisinesMapper;
	
	public void addCuisines(String name) {
		cuisinesMapper.addCuisines(name);
	}

	public List<Cuisines> getCuisines() {
		return cuisinesMapper.getCuisines();
	}

	public void deleteCuisines(Integer id) {
		cuisinesMapper.deleteCuisines(id);
	}

}
