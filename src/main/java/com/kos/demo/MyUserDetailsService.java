package com.kos.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.kos.demo.controller.homeController;
import com.kos.demo.dao.UserRepository;
import com.kos.demo.model.User;
@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserRepository repo;
	
	private homeController ap = new homeController();
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		
		User user = repo.findByUsername(username);
		ap.setUsername(username);
		if( user==null )
			throw new UsernameNotFoundException("User Not Found...!!!");
		
		return new UserPrincipal(user);
	}

}
