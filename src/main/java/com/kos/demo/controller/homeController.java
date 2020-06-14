package com.kos.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kos.demo.dao.CustomerRepository;
import com.kos.demo.model.Customer;
import com.kos.demo.model.CustomerUpdater;

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
	public ModelAndView addCustomer(@ModelAttribute("add_customer") Customer cs) {
		System.out.println(cs.toString());
		ModelAndView mv = new ModelAndView();
		try {
		customerRepo.save(cs);
		}catch (Exception e) {
			mv.addObject("message", "Error: Invalid Entry...");
			mv.setViewName("addCustomer.jsp");
			return mv;
		}
		mv.addObject("message", "New Customer Created Successfully....!!");
		mv.setViewName("addCustomer.jsp");
		return mv;
	}
	
	@RequestMapping("/update")
	public String updateCustomerRedirect() {
		return "updateCustomer.jsp";
	}
	
	@RequestMapping("/updateCustomer")
	public ModelAndView updateCustomer(@ModelAttribute("update_customer") CustomerUpdater csupdater) {
		System.out.println(csupdater.toString());
		ModelAndView mv = new ModelAndView();
		int id = csupdater.getSsnid();
		customer = customerRepo.findById(id).orElse(null);
		if(customer == null) {
			mv.addObject("message", "No record found for ID: "+id);
			mv.setViewName("index.jsp");
			return mv;
		}
		customerRepo.deleteById(id);
		//Setting new Values to the customer
		customer.setAddress1(csupdater.getNaddr());
		customer.setAge(csupdater.getNage());
		customer.setCustomerName(csupdater.getNcname());
		customerRepo.save(customer);
		
		mv.addObject("success_msg", "Customer Record Updated Successfully....!!");
		mv.addObject(customer);
		mv.setViewName("index.jsp");
		return mv;
	}
	
	@RequestMapping("/delete")
	public String deleteCustomerRedirect() {
		return "deleteCustomer.jsp";
	}
	
	@RequestMapping("/deleteCustomer")
	public ModelAndView deleteCustomer(@RequestParam(name="ssnid")int id) {
		ModelAndView mv = new ModelAndView();
		customer=customerRepo.findById(id).orElse(null);
		mv.setViewName("/confirmDelete.jsp");
		if(customer == null) {
			mv.addObject("message", "No record found for ID: "+id);
			return mv;
		}
		mv.addObject(customer);
		return mv;
	}
	
	@RequestMapping("/confirmDelete")
	public ModelAndView confirmDelete(@RequestParam(name="ssnid")int id) {
		customerRepo.deleteById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("success_msg", "Customer Record Deleted Successfully....!!");
		mv.setViewName("/index.jsp");
		return mv;
	}
	
	@RequestMapping("/statusDetails")
	public ModelAndView statusDetails() {
		ModelMap model = new ModelMap();
		ModelAndView mv = new ModelAndView();
		List<Customer> customerlist = customerRepo.findAll();
		model.put("customerList", customerlist);
		mv.setViewName("statusDetails.jsp");
		mv.addAllObjects(model);
		return mv;
	}

}
