package com.kos.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kos.demo.Customer;
import com.kos.demo.CustomerRepository;

@Controller
public class homeController {

	private static String username;
	@Autowired
	private CustomerRepository customerRepo;

	Customer customer = new Customer();

	public void setUsername(String name) {
		this.username = name;
	}

	@RequestMapping("/index")
	public String home() {
		return "index.jsp";
	}

	@RequestMapping("/")
	public ModelAndView page() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("name", username);
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

	@RequestMapping("/getAllCustomer")
	public ModelAndView getall() {
		ModelAndView mv = new ModelAndView();
		Customer customer = customerRepo.findById(1234).orElse(new Customer());
		System.out.println("One item fetched having id:1234");
		mv.addObject(customer);
		mv.setViewName("showCustomer.jsp");
		return mv;
	}

	
	  @RequestMapping("/add") 
	  public String addCustomerRedirect() { 
		  return "addCustomer.jsp"; }
	 

	@RequestMapping("/addCustomer")
	public ModelAndView addCustomer(@ModelAttribute("customer") Customer cs) {
		System.out.println(cs.toString());
		customerRepo.save(cs);
		ModelAndView mv = new ModelAndView();
		mv.addObject("success_msg", "New Customer Created Successfully....!!");
		mv.setViewName("index.jsp");
		return mv;
	}

}
