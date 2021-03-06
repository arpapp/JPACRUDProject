package com.skilldistillery.bars.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.bars.data.BarDAO;
import com.skilldistillery.bars.entities.Bar;


import java.util.List;


@Controller
public class BarController {
	
	@Autowired
	private BarDAO dao;
	
	@RequestMapping(path="home.do")
	public String goHome() {
		return "index";
	}
	
	@RequestMapping(path="searchId.do")
	public ModelAndView findBar(Integer id) {
		ModelAndView mv = new ModelAndView();
		Bar b = dao.findById(id);
		mv.addObject("bar", b);
		mv.setViewName("barDetail");
		return mv;
	}
	
	@RequestMapping(path="searchKeyword.do", params = "keyword")
	public ModelAndView findBars(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Bar> results = dao.findBarWithSearchKeyword(keyword);
		mv.addObject("bars", results);
		mv.setViewName("keywordResults");
		return mv;
	}
	
	@RequestMapping(path="createBarForm.do")
	public String takeToCreateForm() {
		return "createBar";
	}
	
	@RequestMapping(path="createBar.do", method= RequestMethod.POST)
	public ModelAndView createBar(Bar bar) {
		ModelAndView mv = new ModelAndView();
		Bar b = dao.createBar(bar);
		mv.addObject("bar", b);
		mv.setViewName("barDetail");
		return mv;
	}
	
	@RequestMapping(path="deleteForm.do", params = "id", method = RequestMethod.GET)
	public ModelAndView takeToDeleteForm(int id) {
		ModelAndView mv = new ModelAndView();
		Bar toDelete = dao.findById(id);
		mv.addObject("bar", toDelete);
		mv.setViewName("deleteDetail");
		return mv;
	}
	
	@RequestMapping(path="delete.do", method = RequestMethod.POST)
	public ModelAndView deleteBar(int id) {
		ModelAndView mv = new ModelAndView();
		boolean result = dao.deleteBar(id);
		if(result == true) {
			String printOut = "Your bar was deleted succesfully.";
			mv.addObject("printOut", printOut);
		}
		else {
			String printOut = "Your bar was NOT deleted succesfully.";
			mv.addObject("printOut",printOut);
		}
		mv.setViewName("resultDelete");
		return mv;
	}
	
	@RequestMapping(path="updateForm.do", params = "id", method = RequestMethod.GET)
	public ModelAndView takeToUpdateForm(int id) {
		ModelAndView mv = new ModelAndView();
		Bar toUpdate = dao.findById(id);
		mv.addObject("bar", toUpdate);
		mv.setViewName("updateForm");
		return mv;
	}
	
	@RequestMapping(path = "updateBar.do", params = "id")
	public ModelAndView updateBar (int id, Bar bar) {
		ModelAndView mv = new ModelAndView();
		Bar updated = dao.updateBar(id, bar);
		mv.addObject("bar", updated);
		mv.setViewName("barDetail");
		return mv;
	}
	
}
