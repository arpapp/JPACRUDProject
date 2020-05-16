package com.skilldistillery.bars.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.bars.data.BarDAO;
import com.skilldistillery.bars.entities.Bar;

@Controller
public class BarController {
	
	@Autowired
	private BarDAO dao;
	
	@RequestMapping(path="getBar.do")
	public String findBar(Integer id, Model model) {
		Bar b = dao.findById(id);
		model.addAttribute("bar",b);
		return "barDetail";
	}
	
}
