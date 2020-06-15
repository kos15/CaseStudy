package com.kos.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.kos.demo.controller.homeController;
import com.kos.demo.controller.statusController;


@SpringBootApplication(scanBasePackages="com.kos.demo")
public class MvcProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(MvcProjectApplication.class, args);
	}

}
