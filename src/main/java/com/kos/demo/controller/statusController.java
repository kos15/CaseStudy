package com.kos.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kos.demo.dao.AccountsRepository;
import com.kos.demo.dao.CustomerRepository;
import com.kos.demo.model.Accounts;
import com.kos.demo.model.Customer;

@Controller
public class statusController {
	
	@Autowired
	CustomerRepository customerRepo;
	@Autowired
	private AccountsRepository accountRepo;

	@RequestMapping("/statusCustomer")
	public ModelAndView statusDetails() {
		ModelMap model = new ModelMap();
		ModelAndView mv = new ModelAndView();
		List<Customer> customerlist = customerRepo.findAll();
		model.put("customerList", customerlist);
		mv.setViewName("statusDetails.jsp");
		mv.addAllObjects(model);
		return mv;
	}

	@RequestMapping("/statusAccount")
	public ModelAndView statusAccount() {
		ModelMap model = new ModelMap();
		ModelAndView mv = new ModelAndView();
		try {
			List<Accounts> accountList = accountRepo.findAll();
			System.out.println(accountList);
			model.put("accountList", accountList);
			mv.addAllObjects(model);
			mv.setViewName("statusAccount.jsp");
			return mv;
		} catch (Exception e) {
			model.put("message", "Error Fetching Records...");
			mv.setViewName("statusAccount.jsp");
			return mv;
		}
	
	}
}
