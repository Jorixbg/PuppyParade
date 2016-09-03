package com.puppyparade.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController {

	@RequestMapping(value = { "/", "/home" }, method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView helloWorld(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("home");
//		model.addObject("user", getPrincipal());

		return model;
	}

//	@RequestMapping(value = "/about", method = { RequestMethod.POST, RequestMethod.GET })
//	// @RequestMapping(method = RequestMethod.GET)
//	public ModelAndView helloAbout() {
//
//		ModelAndView model = new ModelAndView("about");
//		model.addObject("name", "About");
//		model.addObject("user", getPrincipal());
//
//		return model;
//	}
}