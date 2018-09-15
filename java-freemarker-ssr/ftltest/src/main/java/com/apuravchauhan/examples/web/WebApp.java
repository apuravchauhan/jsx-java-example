package com.apuravchauhan.examples.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 
 * @author apuravchauhan
 *
 */
@SpringBootApplication
@Controller
public class WebApp {
	
	
	
	@GetMapping("/")
    public String index(Model model) {
		model.addAttribute("isLiked", Boolean.FALSE);
        return "index";
    }
	
    public static void main(String[] args) throws Exception {
        SpringApplication.run(WebApp.class, args);
    }
}

