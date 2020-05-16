package com.skilldistillery.bars.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.bars.data.BarDAO;
import com.skilldistillery.bars.entities.Bar;

@Controller
public class BarController {
	
	@Autowired
	private BarDAO dao;
	
	@RequestMapping(path="searchId.do")
	public ModelAndView findBar(Integer id) {
		ModelAndView mv = new ModelAndView();
		Bar b = dao.findById(id);
		mv.addObject("bar", b);
		mv.setViewName("barDetail");
		return mv;
	}
	
}
