package com.kos.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kos.demo.dao.AccountsRepository;
import com.kos.demo.dao.TransactionRepository;
import com.kos.demo.model.Accounts;
import com.kos.demo.model.Statement;
import com.kos.demo.model.Transactions;

@Controller
public class statementController {
	@Autowired
	private AccountsRepository accountRepo; 
	@Autowired
	private TransactionRepository transRepo;
	
	private Statement statement = new Statement();
	
	@RequestMapping("/statement")
	public String statement() {
		return "accountStatement.jsp";
	}
	
	@RequestMapping("/accountStatement")
	public ModelAndView accountStatement(@ModelAttribute(name="statement")Accounts acc) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("statement.jsp");
		Accounts account = new Accounts();
		List<Statement> statementlist = new ArrayList<Statement>();
		if(accountRepo.existsById(acc.getAccountId())) {
			account = accountRepo.findById(acc.getAccountId()).orElse(null);
			List<Transactions> T = transRepo.findAll();
			for(Transactions t:T) {
				if(t.getSenderAccId() == account.getAccountId()) {
					statement.setTID(t.getTID());
					statement.setDesc("Withdraw");
					statement.setAmount(t.getAmount());
					statement.setDate(t.getTime());
					statementlist.add(statement);
					continue;
				}
				else {
					if(t.getReciverAccId() == account.getAccountId()) {
						statement.setTID(t.getTID());
						statement.setDesc("Deposit");
						statement.setAmount(t.getAmount());
						statement.setDate(t.getTime());
						statementlist.add(statement);
					}
				}
			}
			mv.addObject("statement", statementlist);
			for(Statement s:statementlist) {
				s.toString();
			}
			return mv;
		}
		mv.addObject("er_message", "Account Doesn't exists..");
		mv.setViewName("accountStatement.jsp");
		return mv;
	}

}
