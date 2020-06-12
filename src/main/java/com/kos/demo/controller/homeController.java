package com.kos.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class homeController {
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
	@ResponseBody
	public String page() {
		return "Login Successfull...!!";
	}

}
