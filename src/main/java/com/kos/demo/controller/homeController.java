package com.kos.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class homeController {
	
	private static String username;
	
	public void setUsername(String name) {
		this.username = name;
	}
	
	@RequestMapping("/index")
	public String home() {
		return "index.jsp";
	}
	
	@RequestMapping("/add")
	public ModelAndView home(@RequestParam("t1")int a,@RequestParam("t2")int b) {
		System.out.println("hii from method");
		int c=a+b;
		ModelAndView mv = new ModelAndView();
		mv.addObject("ans",c);
		mv.setViewName("Answer.jsp");
		return mv;
	}
	
	@RequestMapping("/")
	public ModelAndView page() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("name",username);
		mv.setViewName("index.jsp");
		return mv;
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login.jsp";
	}
	
	@RequestMapping("/logout-success")
	public String logout() {
		return "logout.jsp";
	}
	

}
