package com.kos.demo.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kos.demo.dao.AccountsRepository;
import com.kos.demo.dao.CustomerRepository;
import com.kos.demo.model.Accounts;

@Controller
public class accountController {

	@Autowired
	private AccountsRepository accountRepo;
	@Autowired
	private CustomerRepository customerRepo;

	Accounts acc = new Accounts();
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	Date date = new Date();
	
	

	@RequestMapping("/addAccount")
	public ModelAndView addAccoount() {
		ModelAndView mv = new ModelAndView("addAccount.jsp");
		return mv;
	}
	
	@RequestMapping("/createAccount")
	public ModelAndView createAccount(@ModelAttribute("createacc") Accounts account) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addAccount.jsp");
		if (customerRepo.existsById(account.getCustomerSSNId())) {
			try {
				System.out.println(account);
				account.setBalance(account.getDepositeAmount());
				account.setAccountCreated(sdf.format(date));
				System.out.println(sdf.format(date));
				accountRepo.save(account);
				mv.addObject("message", "Account Created Successfully...!!!");
				mv.setViewName("addAccount.jsp");
				return mv;
			} catch (Exception e) {
				System.out.println(e);
				mv.addObject("er_message", "Error Creating new Account: ");
				mv.setViewName("addAccount.jsp");
				return mv;
			}
		} else {
			mv.addObject("er_message", "NO Customer with ID:" + account.getCustomerSSNId());
			mv.setViewName("addAccount.jsp");
			return mv;
		}
	}
	
	@RequestMapping("/deleteAcc")
	public ModelAndView deleteAcc() {
		ModelAndView mv = new ModelAndView("deleteAccount.jsp");
		return mv;
	}
	
	@RequestMapping("/deleteAccount")
	public ModelAndView deleteAccount(@ModelAttribute("deleteacc")Accounts account) {
		ModelAndView mv = new ModelAndView();
		acc = accountRepo.findById(account.getAccountId()).orElse(null);
		System.out.println(account);
		if(acc.check(acc, account)) {
			//Check wether balance>0 abort delete
			if(acc.getBalance()>0) {
				mv.addObject("er_message", "Can not Delete Current Balance: " + acc.getBalance());
				mv.setViewName("deleteAccount.jsp");
				return mv;
			}else {
				mv.addObject(acc);
				mv.setViewName("confirmDeleteAccount.jsp");
				return mv;
			}
		}else {
			mv.addObject("er_message", "No Account found for  this Specification");
			mv.setViewName("deleteAccount.jsp");
			return mv;
		}
		
	}
	
	@RequestMapping("/confirmDeleteAccount")
	public ModelAndView confirmDelete(@RequestParam(name="AccountId")int id) {
		ModelAndView mv = new ModelAndView();
		try {
			accountRepo.deleteById(id);
		}catch (Exception e) {
			mv.addObject("er_message", "Error Deleting Account..");
			mv.setViewName("/confirmDeleteAccount.jsp");
		}
		mv.addObject("message", "Account Deleted Successfully...!!");
		mv.setViewName("/confirmDeleteAccount.jsp");
		return mv;
	}

	
	

}
